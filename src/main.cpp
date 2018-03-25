#include "main.h"
#include "timer.h"
#include "ball.h"
#include "semicircle.h"
#include "rectangle.h"
#include "triangle.h"
#include "enemy.h"
#include "porcupine.h"

using namespace std;

GLMatrices Matrices;
GLuint programID;
GLFWwindow *window;
int col,i;
bool drag = false;



void dragS() {
    drag = true;
}

void dragE() {
    drag = false;
}
/**************************
* Customizable functions *
**************************/

Triangle plank1, plank2;
Ball ball1, ball2;
Semicircle semicircle1, trampoline, magnetCO, magnetCI, magnetCO2, magnetCI2;
Enemy enemy[15];

Rectangle bigRectangle, smallRectangle;
Rectangle trampbar1, trampbar2;
Rectangle magnetBar1, magnetBar2, magnetN, magnetS, magnetBar12, magnetBar22, magnetN2, magnetS2;

Porcupine porcupine1, porcupine2;
bool magnet1 = false, magnet2 = false;
bool porcupine1s = false, porcupine2s = false;
int mtimeout;
int porcupine1t,porcupine2t;

double cursor_xpos,  cursor_ypos;
double prev_xpos, prev_ypos;




int randomiInRange(int min, int max) {
    return min + (rand() % static_cast<int>(max - min + 1));
}

float screen_zoom = 1, screen_center_x = 0, screen_center_y = 0;

Timer t60(1.0 / 60);

/* Render the scene with openGL */
/* Edit this function according to your assignment */
void draw() {
    // clear the color and depth in the frame buffer
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    // use the loaded shader program
    // Don't change unless you know what you are doing
    glUseProgram(programID);

    // Eye - Location of camera. Don't change unless you are sure!!
    // glm::vec3 eye ( 5*cos(camera_rotation_angle*M_PI/180.0f), 0, 5*sin(camera_rotation_angles*M_PI/180.0f) );
    // Target - Where is the camera looking at.  Don't change unless you are sure!!
    // glm::vec3 target (0, 0, 0);
    // Up - Up vector defines tilt of camera.  Don't change unless you are sure!!
    // glm::vec3 up (0, 1, 0);

    // Compute Camera matrix (view)
    // Matrices.view = glm::lookAt( eye,target,up ); // Rotating Camera for 3D
    // Don't change unless you are sure!!
    Matrices.view = glm::lookAt(glm::vec3(0, 0, 3), glm::vec3(0, 0, 0),
                                glm::vec3(0, 1, 0)); // Fixed camera for 2D (ortho) in XY plane

    // Compute ViewProject matrix as view/camera might not be changed for this frame (basic scenario)
    // Don't change unless you are sure!!
    glm::mat4 VP = Matrices.projection * Matrices.view;

    // Send our transformation to the currently bound shader, in the "MVP" uniform
    // For each model you render, since the MVP will be different (at least the M part)
    // Don't change unless you are sure!!
    glm::mat4 MVP;  // MVP = Projection * View * Model

    // Scene render


    bigRectangle.draw(VP);
    smallRectangle.draw(VP);
    semicircle1.draw(VP);


    if (ball2.score > 499) {
        int rand1 = rand() % static_cast<int>(21);
        mtimeout-=1;
        if (magnet2==0 && magnet1==0 && mtimeout <= 0)
        {
            if (rand1 == 2)
            {
                magnet2 = 1;
                mtimeout = 480;
            }
            else if (rand1 == 1)
            {
                magnet1 = 1;
                mtimeout = 480;
            }
        }
        if (magnet1 == 1)
        {
            magnetN.draw(VP);
            magnetBar1.draw(VP);
            magnetBar2.draw(VP);
            magnetS.draw(VP);
            magnetCO.draw(VP);
            magnetCI.draw(VP);


            if (mtimeout <= 0)
            {
                magnet1 = 0;
                mtimeout = 480;
            }

        }
        if (magnet2 == 1)
        {
            magnetN2.draw(VP);
            magnetS2.draw(VP);
            magnetCO2.draw(VP);
            magnetCI2.draw(VP);
            magnetBar12.draw(VP);
            magnetBar22.draw(VP);

            if (mtimeout <= 0)
            {
                magnet2 = 0;
                mtimeout = 480;
            }

        }

    }
    trampbar1.draw(VP);
    trampbar2.draw(VP);
    trampoline.draw(VP);

    int i = 0;
    while(i<15)
    {
        enemy[i].draw(VP);
        i++;
    }
    ball2.draw(VP);
    if (porcupine1.present == 1) {
        porcupine1.draw(VP);
    }
    if (porcupine2.present==1)
    {
        porcupine2.draw(VP);
    }
}

void tick_input(GLFWwindow *window) {
    glfwGetCursorPos(window, &cursor_xpos, &cursor_ypos);
    int left = glfwGetKey(window, GLFW_KEY_A);
    int right = glfwGetKey(window, GLFW_KEY_D);
    int up = glfwGetKey(window, GLFW_KEY_SPACE);
    int screenl = glfwGetKey(window, GLFW_KEY_LEFT);
    int screenr = glfwGetKey(window, GLFW_KEY_RIGHT);
    int screenu = glfwGetKey(window, GLFW_KEY_UP);
    int screend = glfwGetKey(window, GLFW_KEY_DOWN);
    if (cursor_xpos < prev_xpos && drag)
    {
        left = 1;
    }
    else if (cursor_xpos > prev_xpos )
    {
        if(drag == 1)
            right = 1;
    }
    prev_xpos = cursor_xpos;
    prev_ypos = cursor_ypos;
    if (screenu == 1)
    {
        screen_center_y += 0.01;
        reset_screen();
    }
    if (screend == 1)
    {
        screen_center_y -= 0.01;
        reset_screen();
    }
    if (screenl == 1)
    {
        screen_center_x -= 0.01;
        reset_screen();
    }
    if (screenr == 1)
    {
        screen_center_x += 0.01;
        reset_screen();
    }



    if (ball2.speed > 0 && left==0 && ball2.vertspeed == 0 && (ball2.insemicircle==0 || fabs(ball2.position.x) <= 0.05))
    {
        ball2.speed = 0;
    }
    else if (ball2.speed > 0 && left==0 && ball2.insemicircle && ball2.position.x < 0 &&
               (fabs(sqrt(ball2.position.x * ball2.position.x + (ball2.position.y + 2) * (ball2.position.y + 2)) -
                    0.8)) <= 0.02)
    {
        ball2.speed = -0.015;
    }
    if (left == 1)
    {
        if (ball2.insemicircle == 1)
            ball2.speed = 0.015;
        else
            ball2.speed = 0.035;
    }
    if (ball2.speed < 0 && right==0 && ball2.vertspeed == 0 && (ball2.insemicircle==0 || fabs(ball2.position.x) <= 0.05)) {
        ball2.speed = 0;
    }
    else if (ball2.speed < 0)
    {    if(right==0 && ball2.insemicircle==1 && ball2.position.x > 0 &&
               (fabs(sqrt(ball2.position.x * ball2.position.x + (ball2.position.y + 2) * (ball2.position.y + 2)) -
                    0.8)) <= 0.02)
        {
         ball2.speed = ball2.speed + 0.015;
         }
    }
    if (ball2.speed == 0)
    {    if(ball2.insemicircle == 1 && left==0 && right==0 &&
        (abs(sqrt(ball2.position.x * ball2.position.x + (ball2.position.y + 2) * (ball2.position.y + 2)) - 0.8))) {

        if (ball2.position.x > 0.05)
            ball2.speed =  ball2.speed +0.015;

        if (ball2.position.x < -0.05)
            ball2.speed = ball2.speed-0.015;
        }
    }
    if (right == 1)
    {
        if (ball2.insemicircle==1)
            ball2.speed = -0.015;
        else
            ball2.speed = -0.035;
    }
    if (ball2.movement==1)
    {
        if(ball2.vertspeed == 0) {
            if (up==1) {
                if (ball2.insemicircle == 0) {
                    if (ball2.gravity == 0) {
                        ball2.gravity = -0.0045;
                        ball2.vertspeed = 0.12;
                    }
                } else if(ball2.insemicircle!=0)
                {

                    ball2.gravity = -0.0015;
                    ball2.vertspeed = 0.052;

                }
            }
        }
    }
}

void tick_elements() {

    if (ball2.score >= 1000) {
      if (porcupine1s==0)
      {
            porcupine1s = 1;
            porcupine1.present = 1;
        }
        if (porcupine2s==0)
        {
            porcupine2s = 1;
            porcupine2.present = 1;
        }
    }
    if (porcupine1s==1 && porcupine1.present==0){
        if(porcupine1t<=0 ) {
            porcupine1.present = 1;
        }
    }
    else if (porcupine1s  && !porcupine1.present){
        if(porcupine1t>0)
        porcupine1t-=1;
    }
    if (porcupine2s && !porcupine2.present){
        if(porcupine2t<=0 )
        porcupine2.present = 1;
    }
    else if (porcupine2s==1 && porcupine2.present==0){
        if( porcupine2t>0)
        porcupine2t=porcupine2t - 1;
    }
    if(magnet1==1 ) {
        if (ball2.score >= 500 && ball2.position.y > 2.1) {
            ball2.speed += 0.003;
        }
    }
        if(magnet2 ==1) {
            if (ball2.score >= 500 && ball2.position.y > 2.1) {
                ball2.speed -= 0.003;
            }
        }
    ball2.tick();
    i = 0;
    while(i<15) {
        enemy[i].tick();
        if (enemy[i].plank == 1) {
            if (ball2.vertspeed <= 0 &&
                ball2.position.x >= (enemy[i].position.x - ((sqrt(2)) * enemy[i].radius + ball2.radius)) &&
                ball2.position.x <= enemy[i].position.x + ball2.radius) {
                if (abs(ball2.position.y -
                        (enemy[i].position.y + sqrt(2) * enemy[i].radius + ball2.position.x - enemy[i].position.x)) <=
                    ball2.radius + 0.05)

                    ball2.vertspeed = 0.10 , ball2.speed = 0.10;

            }
        }
        if (enemy[i].plank == 2) {
            if (ball2.vertspeed <= 0 && ball2.position.x >= enemy[i].position.x - ball2.radius) {
                if (ball2.position.x <= (enemy[i].position.x + ((sqrt(2)) * enemy[i].radius + ball2.radius)))
                {
                    if (abs(ball2.position.y -
                            (enemy[i].position.y + sqrt(2) * enemy[i].radius - ball2.position.x +
                             enemy[i].position.x)) <=
                        ball2.radius + 0.05)

                        ball2.vertspeed = 0.10, ball2.speed = -0.10;

                }
            }
        }
        if (ball2.vertspeed <= 0 && ball2.position.y > enemy[i].position.y)
        {
            if ((sqrt((ball2.position.x - enemy[i].position.x) * (ball2.position.x - enemy[i].position.x) +
                      (ball2.position.y - enemy[i].position.y) * (ball2.position.y - enemy[i].position.y)) <
                 0.2 + enemy[i].radius)) {
                enemy[i].movement = 0;
                ball2.vertspeed = 0.12;
                if (enemy[i].color.r >= 200)
                    ball2.score = ball2.score +  50;
                else if (enemy[i].color.g >= 200)
                    ball2.score = ball2.score + 40;
                else if (enemy[i].color.r == 160)
                    ball2.score =ball2.score +  30;
                else if (enemy[i].color.b == 200)
                    ball2.score = ball2.score + 20;
                else
                    ball2.score = ball2.score +  10;
                if (enemy[i].plank == 1)
                    ball2.score = ball2.score + 20;
                 printf("%d \n",ball2.score);
            }
        }
        i++;
    }
    if (porcupine1.present == 1)
        porcupine1.tick();
    if (porcupine2.present == 1)
        porcupine2.tick();
    if (porcupine1.present == 1 &&
        (ball2.position.x >= porcupine1.position.x && ball2.position.x <= porcupine1.position.x + porcupine1.n * porcupine1.width) &&
        (abs(ball2.position.y - porcupine1.position.y) <= 0.4))
    {
        if (ball2.inporcupine == 0)
        {
            ball2.score -= 500;
            if(ball2.score<0)
                ball2.score=0;
            printf("%d \n",ball2.score);
        }
        ball2.inporcupine = 1;
        porcupine1.present = 0;
        porcupine1t = 480;
    }
    else if (porcupine2.present &&
               (ball2.position.x >= porcupine2.position.x && ball2.position.x <= porcupine2.position.x + porcupine2.n * porcupine2.width) &&
               (abs(ball2.position.y - porcupine2.position.y) <= 0.4))
    {
        if (ball2.inporcupine ==0)
        {
            ball2.score = ball2.score - 500;
            if(ball2.score<0)
                ball2.score=0;
            printf("%d \n",ball2.score);
        }
        ball2.inporcupine = 1;
        porcupine2.present = 0;
        porcupine2t = 480;
    }
    else
    {
        if (ball2.inporcupine == 1)
            ball2.inporcupine = 0;
    }
}

/* Initialize the OpenGL rendering properties */
/* Add all the models to be created here */
void initGL(GLFWwindow *window, int width, int height) {
    /* Objects should be created before any other gl function and shaders */
    // Create the models
    plank1 = Triangle(-0.8, -2, -1, -2, -1, -2.1, COLOR_DGREEN);
    plank2 = Triangle(0.8, -2, 1, -2, 1, -2.1, COLOR_DGREEN);
    bigRectangle = Rectangle(-4, -4, 2, 8, COLOR_BROWN);
    trampoline = Semicircle(3.25 + 0.025, -2 + 1, 0.5, -90, COLOR_RED);
    smallRectangle = Rectangle(-4, -2.5, 0.5, 8, COLOR_DGREEN);
    trampbar1 = Rectangle(2.75, -2, 1, 0.1, COLOR_BROWN);
    trampbar2 = Rectangle(3.70, -2, 1, 0.1, COLOR_BROWN);


    porcupine1 = Porcupine(-3.9, -2, 0.45, 0.3, 5, -3.9, -1.2, COLOR_GREY);
    porcupine2 = Porcupine(1.5, -2, 0.45, 0.3, 3, 1.1, 2.75, COLOR_GREY);
    semicircle1 = Semicircle(0, -2, 1, -90, COLOR_BLUE);
    magnetN = Rectangle(-3 + 0.5, 3 - 0.7, 0.4, 0.35, COLOR_GREY);
    magnetS = Rectangle(-3 + 0.5, 3 + 0.3, 0.4, 0.35, COLOR_GREY);
    magnetN2 = Rectangle(3 - 0.4 - 0.4, 3 - 0.7, 0.4, 0.35, COLOR_GREY);
    magnetS2 = Rectangle(3 - 0.4 - 0.4, 3 + 0.3, 0.4, 0.35, COLOR_GREY);
    magnetCO = Semicircle(-3, 3, 0.7, 180, COLOR_RED);
    magnetCI = Semicircle(-3, 3, 0.3, 180, COLOR_BACKGROUND);
    magnetCO2 = Semicircle(3, 3, 0.7, 0, COLOR_RED);
    magnetCI2 = Semicircle(3, 3, 0.3, 0, COLOR_BACKGROUND);
    magnetBar1 = Rectangle(-3, 3 - 0.7, 0.4, 0.5, COLOR_RED);
    magnetBar2 = Rectangle(-3, 3 + 0.3, 0.4, 0.5, COLOR_RED);
    magnetBar12 = Rectangle(3 - 0.5, 3 - 0.7, 0.4, 0.5, COLOR_RED);
    magnetBar22 = Rectangle(3 - 0.5, 3 + 0.3, 0.4, 0.5, COLOR_RED);
    ball2 = Ball(-1.5, -2 + 0.2, 0.2, COLOR_BLACK);
    ball2.speed = -ball2.speed;
    for (i = 0; i < 15; ++i) {
        col = randomiInRange(0, 4);
            if(col==3)
            {
                enemy[i] = Enemy(-3.75 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (6.25))), -1.5 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (4.5))), 0.15 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (0.15))),
                                 0.01 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (0.03))), ((i / 2 == 0) ? 1 : ((i / 4 == 0) ? 2 : 0)), COLOR_DBLUE);
            }
            else if(col==2)
            {
                enemy[i] = Enemy(-3.75 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (6.25))), -1.5 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (4.5))), 0.15 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (0.15))),
                                 0.01 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (0.03))), ((i / 2 == 0) ? 1 : ((i / 4 == 0) ? 2 : 0)), COLOR_PURPLE);
            }
          else if(col==1)
            {
                enemy[i] = Enemy(-3.75 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (6.25))), -1.5 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (4.5))), 0.15 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (0.15))),
                                 0.01 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (0.03))), ((i / 2 == 0) ? 1 : ((i / 4 == 0) ? 2 : 0)), COLOR_GREEN);
            }

            else if(col==0)
            {
                enemy[i] = Enemy(-3.75 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (6.25))), -1.5 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (4.5))), 0.15 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (0.15))),
                                 0.01 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (0.03))), ((i / 2 == 0) ? 1 : ((i / 4 == 0) ? 2 : 0)), COLOR_DRED);
            }
            else
            {
                enemy[i] = Enemy(-3.75 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (6.25))), -1.5 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (4.5))), 0.15 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (0.15))),
                                 0.01 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (0.03))), ((i / 2 == 0) ? 1 : ((i / 4 == 0) ? 2 : 0)), COLOR_YELLOW);
            }
    }

    // Create and compile our GLSL program from the shaders
    programID = LoadShaders("Sample_GL.vert", "Sample_GL.frag");
    // Get a handle for our "MVP" uniform
    Matrices.MatrixID = glGetUniformLocation(programID, "MVP");


    reshapeWindow(window, width, height);

    // Backrectangle color of the scene
    glClearColor(COLOR_BACKGROUND.r / 256.0, COLOR_BACKGROUND.g / 256.0, COLOR_BACKGROUND.b / 256.0,
                 0.0f); // R, G, B, A
    glClearDepth(1.0f);

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LEQUAL);

    cout << "VENDOR: " << glGetString(GL_VENDOR) << endl;
    cout << "RENDERER: " << glGetString(GL_RENDERER) << endl;
    cout << "VERSION: " << glGetString(GL_VERSION) << endl;
    cout << "GLSL: " << glGetString(GL_SHADING_LANGUAGE_VERSION) << endl;
}


int main(int argc, char **argv) {
    srand(time(0));
    int width = 600;
    int height = 600;

    window = initGLFW(width, height);

    glfwGetCursorPos(window, &prev_xpos, &prev_ypos);
    glfwSetScrollCallback(window, scroll_callback);

    initGL(window, width, height);

    /* Draw in loop */
    while (!glfwWindowShouldClose(window)) {
        // Process timers

        if (t60.processTick()) {
            // 60 fps
            // OpenGL Draw commands
            draw();
            // Swap Frame Buffer in double buffering
            glfwSwapBuffers(window);

            tick_elements();
            tick_input(window);
        }

        // Poll for Keyboard and mouse events
        glfwPollEvents();
    }
    quit(window);
}

void reset_screen() {
    float top = screen_center_y + 4 / screen_zoom, bottom = screen_center_y - 4 / screen_zoom;
    float left = screen_center_x - 4 / screen_zoom, right = screen_center_x + 4 / screen_zoom;

    Matrices.projection = glm::ortho(left, right, bottom, top, 0.1f, 500.0f);
}


