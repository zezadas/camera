precision highp float;

varying vec2 texCoordHandler;
varying vec2 vMaskTexCoordHandler;

uniform sampler2D textureY;
uniform sampler2D textureVu;

uniform float uAlpha;

uniform sampler2D uAlphaMaskTexture;

const mat3 yuv2rgb = mat3(
        1.000,  0.000,  1.402,
        1.000, -0.344, -0.714,
        1.000,  1.772,  0.000
);

void main()
{
    vec4 mask = texture2D(uAlphaMaskTexture, vMaskTexCoordHandler);

    vec3 yuv = vec3(
            texture2D(textureY, texCoordHandler).r,
            texture2D(textureVu, texCoordHandler).a - 0.5,
            texture2D(textureVu, texCoordHandler).r - 0.5
    );
    vec3 rgb = yuv * yuv2rgb;

    vec4 rgba = vec4(rgb, mask.a * uAlpha);

    vec4 color = clamp(rgba, 0.0, 1.0);

    gl_FragColor = color;
}
