attribute vec4 aVertex;
attribute vec2 aTexCoord;

uniform mat4 uMvpMatrix;

varying vec2 vTexCoordHandler;

void main()
{
    gl_Position = uMvpMatrix * aVertex;

    vTexCoordHandler = aTexCoord;
}

