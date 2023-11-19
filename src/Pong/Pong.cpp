#include <print.h>
#include "Pong.h"
#include "Systems.h"
#include "Components.h"

#include "../ECS/Entity.h"

Pong::Pong() : Game("Pong", SCREEN_WIDTH, SCREEN_HEIGHT)
{
    Scene *gameplayScene = createGameplayScene();
    setScene(gameplayScene);
}

Pong::~Pong()
{
    // destructor implementation
}

Scene *Pong::createGameplayScene()
{
    Scene *scene = new Scene("GAMEPLAY SCENE");

    Entity brown = scene->createEntity("rat1", 0, 0);
    auto &s = brown.addComponent<SpriteComponent>(
        "Sprites/Rat/SpriteSheet.png",
        0, 0,
        48,
        8,
        2000);
    s.lastUpdate = SDL_GetTicks();

    Entity white = scene->createEntity("rat2", 20, 0);
    white.addComponent<SpriteComponent>(
        "Sprites/Rat/SpriteSheet.png",
        0, 0,
        48,
        8,
        2000,
        PixelShader{
            [](Uint32 color) -> Uint32
            { return (color == 0xAA7449FF) ? 0xD2B48CFF : color; },
            "white"},
        SDL_GetTicks());

    Entity black = scene->createEntity("rat3", 40, 0);
    black.addComponent<SpriteComponent>(
        "Sprites/Rat/SpriteSheet.png",
        0, 0,
        48,
        8,
        2000,
        PixelShader{
            [](Uint32 color) -> Uint32
            { return (color == 0xAA7449FF) ? 0x3B3B3BFF : color; },
            "black"},
        SDL_GetTicks());

    scene->addSetupSystem<SpriteSetupSystem>(renderer);
    scene->addRenderSystem<SpriteRenderSystem>();
    scene->addUpdateSystem<SpriteUpdateSystem>();

    
    return scene;
}