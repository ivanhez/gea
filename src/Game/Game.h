#pragma once
#include <SDL2/SDL.h>

class Game
{
public:
    Game(const char *name, int width, int height);
    ~Game();

    virtual void setup() = 0;
    void frameStart();
    void frameEnd();
    virtual void update() = 0;
    virtual void render() = 0;
    virtual void handleEvents() = 0;
    bool running();
    void run();

protected:
    int width;
    int height;
    bool isRunning;
    int counter;
    int screen_width;
    int screen_height;
    SDL_Window *window;
    SDL_Renderer *renderer;
    Uint32 frameStartTimestamp;
    Uint32 frameEndTimestamp;
    float frameDuration;
    float dT;
    int frameCount;
    Uint32 lastFPSUpdateTime;
    float FPS;
};