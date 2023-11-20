#pragma once

#include <string>
#include <vector>
#include "../ECS/Entity.h"
#include "../Game/Graphics/PixelShader.h"
#include "../Game/Graphics/Texture.h"
#include "../Game/Graphics/Tile.h"

struct NameComponent
{
    std::string tag;
};

struct TransformComponent
{
    int x;
    int y;
};

struct SpeedComponent
{
    int x;
    int y;
};

struct SpriteComponent
{
    std::string name;
    int xIndex = 0;
    int yIndex = 0;
    int size = 48;
    int animationFrames = 0;
    int animationDuration = 0;
    PixelShader shader = {nullptr, ""};

    Uint32 lastUpdate = 0;
};

struct TilemapComponent
{
    std::vector<Tile> tilemap;
    int width;
    int height;
    int tileSize;
};

struct CameraComponent
{
    int zoom = 1;
    int vw = 0;
    int vh = 0;
};

struct WorldComponent
{
    int width = 0;
    int height = 0;
};