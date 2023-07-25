#include <Print.h>
#include <SDL2/SDL.h>
#include "Pong.h"

SDL_Rect ball;
SDL_Rect paddle;

Pong::Pong(const char *name, int width, int height) : Game(name, width, height)
{
}

Pong::~Pong()
{
}

void Pong::setup()
{
    net.x = (screen_width / 2) - 2;
    net.y = 0;
    net.w = 4;
    net.h = screen_height;

    ball.x = 20;
    ball.y = 20;
    ball.w = 20;
    ball.h = 20;

    paddle.x = screen_width - 20;
    paddle.y = (screen_height / 2) - 50;
    paddle.w = 20;
    paddle.h = 100;

    enemy_paddle.x = 0;
    enemy_paddle.y = (screen_height / 2) - 50;
    enemy_paddle.w = 20;
    enemy_paddle.h = 100;

    ball_speed_x = 4;
    ball_speed_y = 4;

    score = 0;
    enemy_score = 0;
    vprint(score);
    vprint(enemy_score);
}

void Pong::update()
{

    if (ball.x <= 0)
    {
        ball_speed_x = 4;
        ball_speed_y = 4;
        ball_speed_x *= -1;
        ball.x = (screen_width / 2) - 10;
        ball.y = (screen_height / 2) - 10;
        score++;
        vprint(score);
        vprint(enemy_score);
    }

    if (ball.x >= screen_width - ball.w)
    {
        ball_speed_x = 4;
        ball_speed_y = 4;
        ball_speed_x *= -1;
        ball.x = (screen_width / 2) - 10;
        ball.y = (screen_height / 2) - 10;
        enemy_score++;
        vprint(score);
        vprint(enemy_score);
    }

    if (ball.y <= 0)
    {
        ball.y = 1;
        ball_speed_y++;
        ball_speed_y *= -1.1;
    }
    if (ball.y >= screen_height - ball.h)
    {
        ball.y = screen_height - ball.h + 1;
        ball_speed_y++;
        ball_speed_y *= -1.1;
    }

    if (ball.x + ball.w >= paddle.x && ball.x <= paddle.x + paddle.w &&
        ball.y + ball.h >= paddle.y && ball.y <= paddle.y + paddle.h)
    {
        ball.x = ball.x - 1;
        ball_speed_x++;
        ball_speed_x *= -1.1;
    }

    if (ball.x <= enemy_paddle.x + enemy_paddle.w && ball.x + ball.w >= enemy_paddle.x &&
        ball.y <= enemy_paddle.y + enemy_paddle.h && ball.y + ball.h >= enemy_paddle.y)
    {
        ball.x = 20;
        ball_speed_x++;
        ball_speed_x *= -1.1;
    }

    ball.x += ball_speed_x;
    ball.y += ball_speed_y;
}

void Pong::render()
{
    SDL_SetRenderDrawColor(renderer, 0, 0, 0, 1);
    SDL_RenderClear(renderer);

    SDL_SetRenderDrawColor(renderer, 255, 255, 255, 1);
    SDL_RenderFillRect(renderer, &ball);
    SDL_RenderFillRect(renderer, &paddle);
    SDL_RenderFillRect(renderer, &enemy_paddle);
    SDL_RenderFillRect(renderer, &net);

    SDL_RenderPresent(renderer);
}

void Pong::handleKeyEvents(SDL_Keycode key)
{
    // vprint(key);
    switch (key)
    {
    case SDLK_UP:
        if (paddle.y > 0)
            paddle.y -= 20;
        break;
    case SDLK_DOWN:
        if (paddle.y + paddle.h < screen_height)
            paddle.y += 20;
        break;
    case SDLK_w:
        if (enemy_paddle.y > 0)
            enemy_paddle.y -= 20;
        break;
    case SDLK_s:
        if (enemy_paddle.y + enemy_paddle.h < screen_height)
            enemy_paddle.y += 20;
        break;
    }
}

void Pong::handleEvents()
{

    // if (enemy_paddle.y < ball.y && enemy_paddle.y + enemy_paddle.h < screen_height)
    // {
    //     enemy_paddle.y += 5;
    // }
    // else if (enemy_paddle.y > ball.y && enemy_paddle.y > 0)
    // {
    //     enemy_paddle.y -= 5;
    // }

    SDL_Event event;
    // print("Handling events.");

    while (SDL_PollEvent(&event) != 0)
    {
        // vprint(int(event.key.repeat));
        // vprint(event.key.keysym.sym);
        if (event.type == SDL_QUIT)
        {
            isRunning = false;
        }
        if (int(event.key.repeat) == 0)
        {
            switch (event.type)
            {
            case SDL_KEYDOWN:
                handleKeyEvents(event.key.keysym.sym);
                keyStates[event.key.keysym.sym] = true;
                break;
            case SDL_KEYUP:
                handleKeyEvents(event.key.keysym.sym);
                keyStates[event.key.keysym.sym] = false;
                break;
            default:
                break;
            }
        }
    }
    // print("Handling events done.");
}