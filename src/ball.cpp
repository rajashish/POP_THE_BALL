#include "ball.h"
#include "main.h"

Ball::Ball(float x, float y, float radius, color_t color)
{
    this->position = glm::vec3(x, y, 0);
    this->gravity = 0;
    this->rotation = 1;
    this->speed = 0;
    this->radius = radius;
    GLfloat vertex_buffer_data[100005];

    vertex_buffer_data[0] = 0.0f;
    vertex_buffer_data[1] = 0.0f;
    vertex_buffer_data[2] = 0.0f;
    vertex_buffer_data[3] = 0.0f;
    vertex_buffer_data[4] = radius;
    vertex_buffer_data[5] = 0.0f;
    vertex_buffer_data[6] = (float)cos(-0.001)*vertex_buffer_data[3] - (float)sin(-0.001)*vertex_buffer_data[4];
    vertex_buffer_data[7] = (float)sin(-0.001)*vertex_buffer_data[3] + (float)cos(-0.001)*vertex_buffer_data[4];
    vertex_buffer_data[8] = 0.0f;






    for (int i = 1; i <= 690; ++i) {
        vertex_buffer_data[i*9] = 0.0f;
        vertex_buffer_data[i*9+1] = 0.0f;
        vertex_buffer_data[i*9+2] = 0.0f;
        vertex_buffer_data[i*9+3] = vertex_buffer_data[(i-1)*9+6];
        vertex_buffer_data[i*9+4] = vertex_buffer_data[(i-1)*9+7];
        vertex_buffer_data[i*9+5] = vertex_buffer_data[(i-1)*9+8];
        vertex_buffer_data[i*9+6] = (float)cos(-0.01)*vertex_buffer_data[i*9+3] - (float)sin(-0.01)*vertex_buffer_data[i*9+4];
        vertex_buffer_data[i*9+7] = (float)sin(-0.01)*vertex_buffer_data[i*9+3] + (float)cos(-0.01)*vertex_buffer_data[i*9+4];
        vertex_buffer_data[i*9+8] = 0.0f;
    }
    this->object = create3DObject(GL_TRIANGLES, 690*3, vertex_buffer_data, color, GL_FILL);
}

void Ball::draw(glm::mat4 VP) {
    Matrices.model = glm::mat4(1.0f);
    glm::mat4 translate = glm::translate (this->position);    // glTranslatef
    glm::mat4 rotate    = glm::rotate((float) (this->rotation * M_PI / 180.0f), glm::vec3(0, 0, 1));
    rotate          = rotate * glm::translate(glm::vec3(0, 0, 0));
    Matrices.model *= (translate * rotate);
    glm::mat4 MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]);
    draw3DObject(this->object);
}

void Ball::set_position(float x, float y) {
    this->position = glm::vec3(x, y, 0);
}

void Ball::tick() {
    if (this->movement) {
        if (this->position.y>3.8){
            this->vertspeed = 0;
        }
        if (this->position.x>3.8 || this->position.x <-3.8){
            this->speed = -this->speed;
            if (this->position.x > 3.8)
                this->position.x = 3.8;
            else
                this->position.x = -3.8;
        }
        this->position.x -= speed;
        if (this->position.x>2.75-0.1 && this->position.x < 3.75+0.1 && this->position.y <=-1 && this->position.y>=-1-0.2 && this->vertspeed<=0){
            this->vertspeed = 0.20;
        }
        if (this->position.x >-1 && this->position.y <=(-2+(this->radius)+0.05) && this->position.x <1){
            this->insemicircle = true;

                this->gravity = -0.0015;
        }
        else{
            this->insemicircle = false;
            if (this->gravity != 0) {
                this->gravity = -0.0045;
            }
        }
        if (this->gravity!=0) {
            if (this->insemicircle==0)
            {
                this->vertspeed =this->vertspeed + this->gravity;
                this->position.y =this->position.y + this->vertspeed;
                if (this->position.y <= (-2+(this->radius)))
                {
                    this->gravity = 0;
                    this->position.y = (-2+(this->radius));
                    this->vertspeed = 0;
                }
            }
            else{
                this->vertspeed =this->vertspeed + this->gravity;
                this->position.y =this->position.y + this->vertspeed;
                if (this->position.x>=-0.8 && this->position.x <=0.8 && this->position.y < -2-sqrt(abs(0.64 - this->position.x*this->position.x)))
                {
                    this->position.y = -2- sqrt(abs(0.64 - this->position.x*this->position.x));
                    this->vertspeed = 0;
                }
                else if (this->position.x<-0.8)
                {
                    this->vertspeed = 0;
                    if (this->position.y < -3+0.2-this->position.x)
                        this->position.y = -3+0.2-this->position.x;

                }
                else if (this->position.x > 0.8)
                {
                    this->vertspeed = 0;
                    if (this->position.y < this->position.x-3+0.2)
                        this->position.y = this->position.x-3+0.2;

                }
            }
        }
    }
}
