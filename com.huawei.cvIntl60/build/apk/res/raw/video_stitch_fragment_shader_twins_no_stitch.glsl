#extension GL_OES_EGL_image_external : require
precision highp float;

varying vec2 v_texcoord;

uniform samplerExternalOES sTexture;

void main() { 
	gl_FragColor = texture2D(sTexture, v_texcoord);
}