precision highp float;

uniform mat4 t_matrix;
varying vec2 v_texcoord;

uniform sampler2D texture;
void main() {		 
 	 gl_FragColor = texture2D(texture, v_texcoord);
}