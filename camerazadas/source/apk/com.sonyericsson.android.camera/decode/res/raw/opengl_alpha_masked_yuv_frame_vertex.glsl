attribute vec3 vertex;
attribute vec2 texCoord;
attribute vec2 aMaskTexCoord;

uniform mat4 mvpMatrix;

varying vec2 texCoordHandler;
varying vec2 vMaskTexCoordHandler;

void main()
{
    gl_Position = vec4(vertex, 1.0);
    gl_Position = mvpMatrix * gl_Position;

    texCoordHandler = texCoord;
    vMaskTexCoordHandler = aMaskTexCoord;
}
