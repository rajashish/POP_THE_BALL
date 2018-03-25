#include "enemy.h"



int randomIInRange(int min, int max){
    return min + (rand() % static_cast<int>(max - min + 1));
}

Enemy::Enemy(float x, float y, float radius, float speed, int plank, color_t color) {
    this->position = glm::vec3(x, y, 0);
    this->radius = radius;
    this->rotation = 0;

    this->color = color;
    this->speed = speed;
    this->plank = plank;
    int i=0;
    GLfloat vertex_buffer_data[8005];
    while(i < 690)
    {
        vertex_buffer_data[i*9] = 0.0f;
        vertex_buffer_data[i*9+1] = 0.0f;
        vertex_buffer_data[i*9+2] = 0.0f;
        if (i==0){
            vertex_buffer_data[i*9+3] = 0.0f;
            vertex_buffer_data[i*9+4] = this->radius;
            vertex_buffer_data[i*9+5] = 0.0f;
        }
        else{
            vertex_buffer_data[i*9+3] = vertex_buffer_data[(i-1)*9+6];
            vertex_buffer_data[i*9+4] = vertex_buffer_data[(i-1)*9+7];
            vertex_buffer_data[i*9+5] = vertex_buffer_data[(i-1)*9+8];
        }
        vertex_buffer_data[i*9+6] = (float)cos(-0.01)*vertex_buffer_data[i*9+3] - (float)sin(-0.01)*vertex_buffer_data[i*9+4];
        vertex_buffer_data[i*9+7] = (float)sin(-0.01)*vertex_buffer_data[i*9+3] + (float)cos(-0.01)*vertex_buffer_data[i*9+4];
        vertex_buffer_data[i*9+8] = 0.0f;

        i++;
    }
    this->object = create3DObject(GL_TRIANGLES, 690*3, vertex_buffer_data, this->color, GL_FILL);
    if (this->plank == 1){
        vertex_buffer_data[0] = -(sqrt(2)-0.1)*this->radius;
        vertex_buffer_data[1] = 0;
        vertex_buffer_data[2] = 0;
        vertex_buffer_data[3] = -(sqrt(2)-0.1)*this->radius - 0.05;
        vertex_buffer_data[4] = 0.05;
        vertex_buffer_data[5] = 0;
        vertex_buffer_data[6] = 0;
        vertex_buffer_data[7] = (sqrt(2)-0.1)*this->radius;
        vertex_buffer_data[8] = 0;

        vertex_buffer_data[9] = 0;
        vertex_buffer_data[10] = (sqrt(2)-0.1)*this->radius;
        vertex_buffer_data[11] = 0;
        vertex_buffer_data[12] = -0.05;
        vertex_buffer_data[13] = (sqrt(2)-0.1)*this->radius+0.05;
        vertex_buffer_data[14] = 0;
        vertex_buffer_data[15] = -(sqrt(2)-0.1)*this->radius-0.05;
        vertex_buffer_data[16] = 0.05;
        vertex_buffer_data[17] = 0;
    }
    else if (this->plank == 2){
        vertex_buffer_data[0] = (sqrt(2)-0.1)*this->radius;
        vertex_buffer_data[1] = 0;
        vertex_buffer_data[2] = 0;
        vertex_buffer_data[3] = (sqrt(2)-0.1)*this->radius + 0.05;
        vertex_buffer_data[4] = 0.05;
        vertex_buffer_data[5] = 0;
        vertex_buffer_data[6] = 0;
        vertex_buffer_data[7] = (sqrt(2)-0.1)*this->radius;
        vertex_buffer_data[8] = 0;

        vertex_buffer_data[9] = 0;
        vertex_buffer_data[10] = (sqrt(2)-0.1)*this->radius;
        vertex_buffer_data[11] = 0;
        vertex_buffer_data[12] = 0.05;
        vertex_buffer_data[13] = (sqrt(2)-0.1)*this->radius+0.05;
        vertex_buffer_data[14] = 0;
        vertex_buffer_data[15] = +(sqrt(2)-0.1)*this->radius+0.05;
        vertex_buffer_data[16] = 0.05;
        vertex_buffer_data[17] = 0;
    }
    else {
        for (int j = 0; j < 18; ++j) {


            vertex_buffer_data[j] = 0;
        }

    }
    this->object2 = create3DObject(GL_TRIANGLES, 6, vertex_buffer_data, COLOR_BLACK, GL_FILL);
}

void Enemy::draw(glm::mat4 VP) {
    Matrices.model = glm::mat4(1.0f);
    glm::mat4 translate = glm::translate (this->position);    // glTranslatef
    glm::mat4 rotate    = glm::rotate((float) (this->rotation * M_PI / 180.0f), glm::vec3(0, 0, 1));
    rotate          = rotate * glm::translate(glm::vec3(0, 0, 0));
    Matrices.model *= (translate * rotate);
    glm::mat4 MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]);
    draw3DObject(this->object);
    draw3DObject(this->object2);
}

void Enemy::set_position(float x, float y) {
    this->position = glm::vec3(x, y, 0);
}

void Enemy::tick() {
    int j;
    if (this->movement){
        this->position.x = this->position.x + speed;
        if (this->position.x>4.3)
            this->movement = 0;

    }
    else{
        this->movement = 1;
        int col = randomIInRange(0,4);
        this->position.x = -4.3;
        this->position.y = -1.5 + static_cast <float> (rand()) /( static_cast <float> (RAND_MAX/(4.5)));
        this->radius = 0.15 + static_cast <float> (rand()) /( static_cast <float> (RAND_MAX/(0.15)));
        this->speed = 0.01 + static_cast <float> (rand()) /( static_cast <float> (RAND_MAX/(0.03)));

        if(col==3)
            this->color = COLOR_DBLUE;

       else if(col==2)
            this->color = COLOR_PURPLE;

        else if(col==1)
            this->color = COLOR_GREEN;

        else if(col==0)
                this->color = COLOR_DRED;

        else
                this->color = COLOR_YELLOW;



        GLfloat vertex_buffer_data[8005];

        vertex_buffer_data[0] = 0.0f;
        vertex_buffer_data[1] = 0.0f;
        vertex_buffer_data[2] = 0.0f;
        vertex_buffer_data[3] = 0.0f;
        vertex_buffer_data[4] = this->radius;
        vertex_buffer_data[5] = 0.0f;
        vertex_buffer_data[6] = (float)cos(-0.001)*vertex_buffer_data[3] - (float)sin(-0.001)*vertex_buffer_data[4];
        vertex_buffer_data[7] = (float)sin(-0.001)*vertex_buffer_data[3] + (float)cos(-0.001)*vertex_buffer_data[4];
        vertex_buffer_data[8] = 0.0f;
        int i=1;
        while( i <= 690)
        {
            vertex_buffer_data[i*9] = 0.0f;
            vertex_buffer_data[i*9+1] = 0.0f;
            vertex_buffer_data[i*9+2] = 0.0f;
            vertex_buffer_data[i*9+3] = vertex_buffer_data[(i-1)*9+6];
            vertex_buffer_data[i*9+4] = vertex_buffer_data[(i-1)*9+7];
            vertex_buffer_data[i*9+5] = vertex_buffer_data[(i-1)*9+8];
            vertex_buffer_data[i*9+6] = (float)cos(-0.01)*vertex_buffer_data[i*9+3] - (float)sin(-0.01)*vertex_buffer_data[i*9+4];
            vertex_buffer_data[i*9+7] = (float)sin(-0.01)*vertex_buffer_data[i*9+3] + (float)cos(-0.01)*vertex_buffer_data[i*9+4];
            vertex_buffer_data[i*9+8] = 0.0f;

            i++;
        }
        this->object = create3DObject(GL_TRIANGLES, 690*3, vertex_buffer_data, this->color, GL_FILL);

        vertex_buffer_data[1] = 0;
        vertex_buffer_data[2] = 0;
        vertex_buffer_data[5] = 0;
        vertex_buffer_data[6] = 0;
        vertex_buffer_data[8] = 0;
        vertex_buffer_data[9] = 0;
        vertex_buffer_data[11] = 0;
        vertex_buffer_data[14] = 0;
        vertex_buffer_data[17] = 0;

        if (this->plank == 1){
            vertex_buffer_data[0] = -(sqrt(2)-0.1)*this->radius;
            vertex_buffer_data[3] = -(sqrt(2)-0.1)*this->radius - 0.05;
            vertex_buffer_data[4] = 0.05;
            vertex_buffer_data[7] = (sqrt(2)-0.1)*this->radius;
            vertex_buffer_data[10] = (sqrt(2)-0.1)*this->radius;
            vertex_buffer_data[12] = -0.05;
            vertex_buffer_data[13] = (sqrt(2)-0.1)*this->radius+0.05;
            vertex_buffer_data[15] = -(sqrt(2)-0.1)*this->radius-0.05;
            vertex_buffer_data[16] = 0.05;

        }
        else if (this->plank == 2){
            vertex_buffer_data[0] = (sqrt(2)-0.1)*this->radius;
            vertex_buffer_data[3] = (sqrt(2)-0.1)*this->radius + 0.05;
            vertex_buffer_data[4] = 0.05;
            vertex_buffer_data[7] = (sqrt(2)-0.1)*this->radius;
            vertex_buffer_data[10] = (sqrt(2)-0.1)*this->radius;
            vertex_buffer_data[12] = 0.05;
            vertex_buffer_data[13] = (sqrt(2)-0.1)*this->radius+0.05;
            vertex_buffer_data[15] = +(sqrt(2)-0.1)*this->radius+0.05;
            vertex_buffer_data[16] = 0.05;

        }
        else {
            for (j = 0; j < 18; ++j)
                vertex_buffer_data[j] = 0;

        }
        this->object2 = create3DObject(GL_TRIANGLES, 6, vertex_buffer_data, COLOR_BLACK, GL_FILL);
    }
}



