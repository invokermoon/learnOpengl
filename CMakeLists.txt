cmake_minimum_required(VERSION 3.19)
project(opengl)

set(CMAKE_CXX_STANDARD 14)

# Add header file
set(GLEW_H /opt/homebrew/Cellar/glew/2.2.0_1/include/GL)
set(GLFW_H /opt/homebrew/Cellar/glfw/3.3.7/include/GLFW)
set(GLFW_H1 /opt/homebrew/Cellar/glfw/3.3.7/include)
set(GLAD_H ./glad)
set(GLAD_H1 ./glad/include)
include_directories(${GLEW_H} ${GLFW_H} ${GLFW_H1} ${GLAD_H} ${GLAD_H1})

# Add target link
set(GLEW_LINK /opt/homebrew/Cellar/glew/2.2.0_1/lib/libGLEW.2.2.dylib)
set(GLFW_LINK /opt/homebrew/Cellar/glfw/3.3.7/lib/libglfw.3.dylib)
link_libraries(${OPENGL} ${GLEW_LINK} ${GLFW_LINK})

# Execute compilation command
#set(SOURCE_FILES main.cpp ./glad/src/glad.c)
set(SOURCE_FILES 1triangle.cpp ./glad/src/glad.c)
add_executable(triangle ${SOURCE_FILES})

set(SOURCE_FILES2 2triangle.cpp ./glad/src/glad.c)
add_executable(2triangle ${SOURCE_FILES2})

set(SOURCE_FILES3 rectangle.cpp ./glad/src/glad.c)
add_executable(rectangle ${SOURCE_FILES3})

set(SOURCE_FILES4 tex_box.cpp ./glad/src/glad.c)
add_executable(box ${SOURCE_FILES4})

set(SOURCE_FILES5 face_tex.cpp ./glad/src/glad.c)
add_executable(facebox ${SOURCE_FILES5})


if (APPLE)
    target_link_libraries(triangle "-framework OpenGL")
    target_link_libraries(triangle "-framework GLUT")
endif()


