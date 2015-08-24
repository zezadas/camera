precision mediump float;

varying vec2 texCoordHandler;

uniform sampler2D uTextureRgb;
uniform float uAlpha;

void main() {
    vec4 rgbColor = texture2D(uTextureRgb, texCoordHandler);
    gl_FragColor = rgbColor * vec4(1.0, 1.0, 1.0, uAlpha);
}
