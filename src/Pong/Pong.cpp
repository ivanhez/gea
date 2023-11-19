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

    Entity gray = scene->createEntity("rat1", 0, 0);
    auto &s = gray.addComponent<SpriteComponent>(
        "Sprites/Rat/SpriteSheet.png",
        0, 0,
        48,
        8,
        1000);
    s.lastUpdate = SDL_GetTicks();

    Entity brown = scene->createEntity("rat2", 20, 0);
    brown.addComponent<SpriteComponent>(
        "Sprites/Rat/SpriteSheet.png",
        0, 0,
        48,
        8,
        1000,
        PixelShader{
            [](Uint32 color) -> Uint32
            { switch (color)
            {
            case (0x776E5CFF):
                color = 0xB9865FFF;
                break;
            case (0x6A6252FF):
                color = 0xAA7449FF;
                break;
             case (0x585143FF):
                color = 0x825939FF;
                break;
             
            default:
                color = color;
                break;
            }
                return color; },
            "brown"},
        SDL_GetTicks());

    Entity white = scene->createEntity("rat3", 40, 0);
    white.addComponent<SpriteComponent>(
        "Sprites/Rat/SpriteSheet.png",
        0, 0,
        48,
        8,
        1000,
        PixelShader{
            [](Uint32 color) -> Uint32
            { switch (color)
            {
            case (0x776E5CFF):
                color = 0xB6A186FF;
                break;
            case (0x6A6252FF):
                color = 0xB59F82FF;
                break;
             case (0x585143FF):
                color = 0xAB9373FF;
                break;
             
            default:
                color = color;
                break;
            }
                return color; },
            "white"},
        SDL_GetTicks());

    Entity black = scene->createEntity("rat4", 60, 0);
    black.addComponent<SpriteComponent>(
        "Sprites/Rat/SpriteSheet.png",
        0, 0,
        48,
        8,
        1000,
        PixelShader{
            [](Uint32 color) -> Uint32
            { return (color == 0x6A6252FF || color == 0x585143FF || color == 0x776E5CFF) ? 0x3B3B3BFF : color; },
            "black"},
        SDL_GetTicks());

    scene->addSetupSystem<TilemapSetupSystem>(renderer);
    scene->addSetupSystem<AutoTilingSetupSystem>();
    scene->addRenderSystem<TilemapRenderSystem>();

    scene->addSetupSystem<SpriteSetupSystem>(renderer);
    scene->addRenderSystem<SpriteRenderSystem>();
    scene->addUpdateSystem<SpriteUpdateSystem>();

    return scene;
}