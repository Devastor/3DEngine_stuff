// main.cpp
#include <iostream>
#include <GL/glew.h>
#include <GLFW/glfw3.h>

void error_callback(int error, const char* description) {
    std::cerr << "Error: " << description << std::endl;
}

int main() {
    // Инициализация GLFW
    if (!glfwInit()) {
        std::cerr << "Failed to initialize GLFW" << std::endl;
        return -1;
    }

    // Установка обработчика ошибок GLFW
    glfwSetErrorCallback(error_callback);

    // Создание окна
    GLFWwindow* window = glfwCreateWindow(800, 600, "OpenGL Window", nullptr, nullptr);
    if (!window) {
        std::cerr << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }

    // Установка контекста OpenGL для окна
    glfwMakeContextCurrent(window);

    // Инициализация GLEW
    if (glewInit() != GLEW_OK) {
        std::cerr << "Failed to initialize GLEW" << std::endl;
        return -1;
    }

    // Основной цикл программы
    while (!glfwWindowShouldClose(window)) {
        // Очистка буфера цвета
        glClear(GL_COLOR_BUFFER_BIT);

        // Рендеринг треугольника (пример)
        glBegin(GL_TRIANGLES);
        glVertex2f(-0.5f, -0.5f);
        glVertex2f(0.5f, -0.5f);
        glVertex2f(0.0f, 0.5f);
        glEnd();

        // Обновление буферов
        glfwSwapBuffers(window);

        // Обработка событий
        glfwPollEvents();
    }

    // Завершение программы
    glfwDestroyWindow(window);
    glfwTerminate();

    return 0;
}
