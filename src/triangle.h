#include "main.h"

#ifndef POP_THE_BALL_TRIANGLE_H
#define POP_THE_BALL_TRIANGLE_H


class Triangle {
public:
    Triangle() {}
    Triangle(float x1, float y1, float x2, float y2, float x3, float y3, color_t color);
    glm::vec3 position;
    float rotation;
    void draw(glm::mat4 VP);
    void set_position(float x, float y);
    bounding_box_t bounding_box();
private:
    VAO *object;
};


#endif //POP_THE_BALL_TRIANGLE_H
