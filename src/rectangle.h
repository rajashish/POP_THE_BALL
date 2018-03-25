#include "main.h"

#ifndef POP_THE_BALL_GROUND_H
#define POP_THE_BALL_GROUND_H


class Rectangle {
public:
    Rectangle() {}
    Rectangle(float x, float y, float height, float width, color_t color);
    glm::vec3 position;
    bool movement = true;
    float rotation;
    float height,width;
    void draw(glm::mat4 VP);
    void set_position(float x, float y);
private:
    VAO *object;
};


#endif //POP_THE_BALL_GROUND_H
