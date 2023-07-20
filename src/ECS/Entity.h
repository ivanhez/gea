// #pragma once
// #include <print.h>
// #include "Scene/Scene.h"


// Entity player = Enitity();
// player.addComponent(new Sprite());

// class Entity {
//     public:
//     Entity(entt:: entity e, Scene* s){
//         print("Entity created.")
//         handle = e;
//         scene = s;
//     }
//     ~Entity(){

//     }

//     template<typename T, typename ...Args>
//     T& addComponent(Args&&... args){
//         return scene->r.emplace<T>(handle, std::forward<Args>(args)...)
//     }
    

//     template<typename T>
//     removeComponent(){
//         scene->r.remove<T>(handle)
//     }
    
//     pritvate:
//         entt::entity handle;
//         Scene* scene;
// };