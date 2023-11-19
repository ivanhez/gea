#pragma once

#include <glm/glm.hpp>
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
    glm::ivec2 position;
    // glm::vec2 scale;
    // double rotation;
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