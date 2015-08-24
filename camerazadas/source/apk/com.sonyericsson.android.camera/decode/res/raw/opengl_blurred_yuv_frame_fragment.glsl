precision highp float;

varying vec2 texCoordHandler;

uniform sampler2D textureY;
uniform sampler2D textureVu;

uniform int uTextureWidth;
uniform int uTextureHeight;
uniform float uBlurSpread;
uniform float uLod;
uniform float uSpreadOffset;
uniform float uCenterWeight;

vec4 yuv2rgba(float x, float y, float lod);

const mat3 yuv2rgb = mat3(
        1.000,  0.000,  1.402,
        1.000, -0.344, -0.714,
        1.000,  1.772,  0.000
);

void main()
{
    float offsetX = uBlurSpread / float(uTextureWidth);
    float offsetY = uBlurSpread / float(uTextureHeight);

    vec4 color[5];

    color[0] = yuv2rgba(texCoordHandler.x,                           texCoordHandler.y,                              uLod);
    color[1] = yuv2rgba(texCoordHandler.x - offsetX * uSpreadOffset, texCoordHandler.y - offsetY,                    uLod);
    color[2] = yuv2rgba(texCoordHandler.x - offsetX,                 texCoordHandler.y + offsetY * uSpreadOffset,    uLod);
    color[3] = yuv2rgba(texCoordHandler.x + offsetX * uSpreadOffset, texCoordHandler.y - offsetY,                    uLod);
    color[4] = yuv2rgba(texCoordHandler.x + offsetX,                 texCoordHandler.y + offsetY * uSpreadOffset,    uLod);

    gl_FragColor = (color[0] * uCenterWeight + color[1] + color[2] + color[3] + color[4]) / (4.0 + uCenterWeight);

    gl_FragColor = clamp(gl_FragColor, 0.0, 1.0);
}

vec4 yuv2rgba(float x, float y, float lod)
{
    vec2 pos = vec2(x, y);

    vec3 yuv = vec3(
            texture2D(textureY, pos, lod).r,
            texture2D(textureVu, pos, lod).a - 0.5,
            texture2D(textureVu, pos, lod).r - 0.5
    );
    vec3 rgb = yuv * yuv2rgb;

    vec4 rgba = vec4(rgb, 1.0);

    vec4 color = clamp(rgba, 0.0, 1.0);

    return color;
}
