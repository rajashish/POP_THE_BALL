#include "rectangle.h"
#include "main.h"

Rectangle::Rectangle(float x, float y, float height, float width, color_t color) {
    this->position = glm::vec3(x+(width/2), y+(height/2), 0);
    this->rotation = 0;
    this->height = height;
    this->width = width;
    GLfloat vertex_buffer_data[] = {
            -width/2, -height/2, 0.0f,
            -width/2, height/2, 0.0f,
            width/2, height/2, 0.0f,
            width/2, height/2, 0.0f,
            width/2, -height/2, 0.0f,
            -width/2, -height/2, 0.0f,
    };

    this->object = create3DObject(GL_TRIANGLES, 6, vertex_buffer_data, color, GL_FILL);
}

void Rectangle::draw(glm::mat4 VP) {
    Matrices.model = glm::mat4(1.0f);
    glm::mat4 translate = glm::translate (this->position);    // glTranslatef
    glm::mat4 rotate    = glm::rotate((float) (this->rotation * M_PI / 180.0f), glm::vec3(0, 0, 1));
    rotate          = rotate * glm::translate(glm::vec3(0, 0, 0));
    Matrices.model *= (translate * rotate);
    glm::mat4 MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]);
    draw3DObject(this->object);
}

void Rectangle::set_position(float x, float y) {
    this->position = glm::vec3(x, y, 0);
}
