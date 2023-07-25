#pragma once
#include "Game.h"
#include <algorithm>
#include <cstdlib>
#include <unordered_map>

class Pong : public Game
{
public:
    Pong(const char *name, int width, int height);
    ~Pong();
    void setup() override;
    void update() override;
    void render() override;
    void handleEvents() override;
    void handleKeyEvents(SDL_Keycode);

private:
    SDL_Rect ball;
    SDL_Rect paddle;
    SDL_Rect enemy_paddle;
    SDL_Rect net;
    std::unordered_map<SDL_Keycode, bool> keyStates;
    

    int score;
    int enemy_score;
    int ball_speed_x;
    int ball_speed_y;
};