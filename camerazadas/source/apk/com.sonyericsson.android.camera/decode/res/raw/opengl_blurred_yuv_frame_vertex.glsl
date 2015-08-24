attribute vec3 vertex;
attribute vec2 texCoord;

uniform mat4 mvpMatrix;

varying vec2 texCoordHandler;

void main()
{
    gl_Position = vec4(vertex, 1.0);
    gl_Position = mvpMatrix * gl_Position;

    texCoordHandler = texCoord;
}
