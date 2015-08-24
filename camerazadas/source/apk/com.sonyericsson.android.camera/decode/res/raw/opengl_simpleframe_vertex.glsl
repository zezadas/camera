attribute vec4 vertex;

uniform mat4 mvpMatrix;

void main()
{
    gl_Position = mvpMatrix * vertex;
}
