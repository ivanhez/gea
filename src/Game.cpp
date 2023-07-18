#include <iostream>
#include <SDL2/SDL.h>
// #include <print.h>
#include "Game.h"

Game::Game(const char *name, int width, int height)
    : screen_width(width), screen_height(height)
{
    int maxFPS = 60;
    frameDuration = (1.0f / maxFPS) * 1000.0f;
    frameCount = 0;
    lastFPSUpdateTime = 0;
    FPS = 0;

    if (SDL_Init(SDL_INIT_EVERYTHING) == 0)
    {
        // TTF_Init();
        window = SDL_CreateWindow(name, 200, 50, width, height, 0);
        renderer = SDL_CreateRenderer(window, 0, 0);
        SDL_SetRenderDrawColor(renderer, 0, 0, 0, 1);
        printf("GAME START");

        isRunning = true;
    }
    else
    {
        isRunning = false;
    }
    counter = 0;
}

Game::~Game()
{
    printf("GAME END");

    SDL_DestroyWindow(window);
}

void Game::setup()
{
}

void Game::frameStart()
{
    // print("---- Frame: ", counter, " ----");
    frameStartTimestamp = SDL_GetTicks();
    dT = frameEndTimestamp - frameStartTimestamp;
}

void Game::frameEnd()
{
    frameEndTimestamp = SDL_GetTicks();

    float actualFrameDuration = frameEndTimestamp - frameStartTimestamp;

    if (actualFrameDuration < frameDuration)
    {
        SDL_Delay(frameDuration - actualFrameDuration);
    }

    counter++;

    frameCount++;

    Uint32 currentTime = SDL_GetTicks();
    if (currentTime - lastFPSUpdateTime > 1000)
    {
        FPS = frameCount / ((currentTime - lastFPSUpdateTime) / 1000.0f);
        lastFPSUpdateTime = currentTime;
        frameCount = 0;
    }
    // vprint(FPS);
}

void Game::handleEvents()
{
    // print("Game Handling events...");

    SDL_Event event;
    while (SDL_PollEvent(&event) != 0)
    {
        if (event.type == SDL_QUIT)
        {
            isRunning = false;
        }
    }
}

bool Game::running()
{
    return isRunning;
}

void Game::update()
{
    // print("Game Updating...");
}

void Game::render()
{

    // TTF_Font* Sans = TTF_OpenFont("Sans.ttf", 24);
    // SDL_Color White = {255, 255, 255};
    // SDL_Surface* surfaceMessage = TTF_RenderText_Solid(Sans, FPS, White);
    // SDL_Texture* Message = SDL_CreateTextureFromSurface(renderer, surfaceMessage);
    // SDL_Rect Message_rect;
    // Message_rect.x = 0;
    // Message_rect.y = 0;
    // Message_rect.w = 100;
    // Message_rect.h = 100;

    // print("Game Rendering...");

    SDL_RenderClear(renderer);
    SDL_SetRenderDrawColor(renderer, 0, 0, 0, 1);
    // SDL_RenderCopy(renderer, Message, NULL, &Message_rect);
    SDL_RenderPresent(renderer);
    // SDL_FreeSurface(surfaceMessage);
    // SDL_DestroyTexture(Message);

    // vprint(FPS);
    // print(FPS);
}
void Game::run()
{
    setup();

    while (running())
    {
        frameStart();

        handleEvents();

        update();

        render();

        frameEnd();
    }
}