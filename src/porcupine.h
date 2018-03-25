#include "main.h"

#ifndef POP_THE_BALL_PORC_H
#define POP_THE_BALL_PORC_H


class Porcupine {
public:
    Porcupine() {}
    Porcupine(float x, float y, float h, float w, int n, float b0, float b1, color_t color);
    glm::vec3 position;
    float rotation,width,height,n,boundary0,boundary1,speed;
    void draw(glm::mat4 VP);
    void set_position(float x, float y);
    void tick();
    bool present = false;
private:
    VAO *object;
};


#endif //POP_THE_BALL_PORC_H
