#include <print.h>
#include "../Game/Graphics/PixelShader.h"
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

    scene->player->addComponent<SpriteComponent>(
        "Sprites/Rat/SpriteSheet.png",
        0, 0,
        48,
        8,
        1000,
        PixelShader{nullptr, ""},
        SDL_GetTicks());

    Entity enemy = scene->createEntity("cat1", 0, 0);
    auto &s = enemy.addComponent<SpriteComponent>(
        "Sprites/Cat/SpriteSheet.png",
        0, 0,
        48,
        8,
        1000);
    s.lastUpdate = SDL_GetTicks();

    scene->addEventSystem<PlayerInputEventSystem>();
    scene->addUpdateSystem<PlayerSpriteUpdateSystem>();
    scene->addUpdateSystem<MovementUpdateSystem>();
    scene->addUpdateSystem<CameraFollowUpdateSystem>();

    scene->addSetupSystem<TilemapSetupSystem>(renderer);
    scene->addSetupSystem<AutoTilingSetupSystem>();
    scene->addRenderSystem<TilemapRenderSystem>();

    scene->addSetupSystem<SpriteSetupSystem>(renderer);
    scene->addRenderSystem<SpriteRenderSystem>();
    scene->addUpdateSystem<SpriteUpdateSystem>();

    return scene;
}