#include "print.h"
#include "Pong.h"
#include "Systems.h"
#include "Components.h"
#include "../ECS/Entity.h"

Pong::Pong() : Game("Pong", SCREEN_WIDTH, SCREEN_HEIGHT)
{
    std::unique_ptr<Scene> gameplayScene = createGameplayScene();
    setScene(std::move(gameplayScene));
}

Pong::~Pong()
{
    // destructor implementation
}

std::unique_ptr<Scene> Pong::createGameplayScene()
{
    // Create a unique_ptr to hold the created scene
    std::unique_ptr<Scene> gameplayScene = std::make_unique<Scene>("Gameplay");

    Entity ball = gameplayScene->createEntity("ball", 100, 100);
    ball.addComponent<SpeedComponent>(200, 200);
    ball.addComponent<SizeComponent>(20, 20);
    ball.addComponent<ColliderComponent>(false);

    Entity paddle = gameplayScene->createEntity("paddle", SCREEN_WIDTH - 20, (SCREEN_HEIGHT / 2) - 50);
    paddle.addComponent<SpeedComponent>(0, 0);
    paddle.addComponent<SizeComponent>(20, 100);
    paddle.addComponent<PlayerComponent>(200);

    Entity enemy = gameplayScene->createEntity("enemy", 0, (SCREEN_HEIGHT / 2) - 50);
    enemy.addComponent<SpeedComponent>(0, 0);
    enemy.addComponent<SizeComponent>(20, 100);
    enemy.addComponent<EnemyComponent>(200);

    // Entity net = gameplayScene->createEntity("net", (screen_width / 2) - 2, 0);
    // net.addComponent<SizeComponent>(4, screen_height);
    // net.addComponent<ColliderComponent>(false);

    gameplayScene->addSetupSystem<HelloSystem>();
    gameplayScene->addRenderSystem<RectRenderSystem>();
    gameplayScene->addUpdateSystem<MovementUpdateSystem>(SCREEN_WIDTH, SCREEN_HEIGHT);
    gameplayScene->addEventSystem<PlayerInputEventSystem>();
    gameplayScene->addEventSystem<EnemyInputEventSystem>();
    gameplayScene->addUpdateSystem<CollisionDetectionUpdateSystem>();
    gameplayScene->addUpdateSystem<BounceUpdateSystem>();

    return gameplayScene;
}
