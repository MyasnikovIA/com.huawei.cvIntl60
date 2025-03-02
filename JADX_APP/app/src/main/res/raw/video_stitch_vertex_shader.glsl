uniform mat4 uSTMatrix;
attribute vec4 a_position;
attribute vec4 a_texcoord;

uniform mat4 u_matrix;

varying vec2 v_texcoord;

void main() {
   gl_Position = a_position;
   v_texcoord = (uSTMatrix * a_texcoord).xy;
}