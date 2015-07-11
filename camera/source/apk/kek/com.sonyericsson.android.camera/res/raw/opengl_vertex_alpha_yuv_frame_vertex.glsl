attribute vec3 vertex;
attribute float vertexAlpha;
attribute vec2 texCoord;

uniform mat4 mvpMatrix;

varying float vAlphaHandler;
varying vec2 vTexCoordHandler;

void main()
{
    gl_Position = vec4(vertex, 1.0);
    gl_Position = mvpMatrix * gl_Position;

    vAlphaHandler = vertexAlpha;
    vTexCoordHandler = texCoord;
}