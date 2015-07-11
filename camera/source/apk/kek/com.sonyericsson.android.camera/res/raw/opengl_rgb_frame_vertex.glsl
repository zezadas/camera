attribute vec4 vertex;
attribute vec2 texCoord;

uniform mat4 mvpMatrix;

varying vec2 texCoordHandler;

void main()
{
    gl_Position = mvpMatrix * vertex;

    texCoordHandler = texCoord;
}
