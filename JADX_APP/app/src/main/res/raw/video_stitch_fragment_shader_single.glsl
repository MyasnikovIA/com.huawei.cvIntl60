#extension GL_OES_EGL_image_external : require
precision highp float;

uniform mat4 t_matrix;
varying vec2 v_texcoord;

uniform samplerExternalOES sTexture;
const float INVPI = 0.3183098861;
const float PI1_2 = 1.5707963267;
const float PI1 = 3.1415926535;
const float PI2 = 6.2831853071;
const float PI_Angle = 0.0174532925194444;
const float cfLOWER = 0.45;
const float cfUPPER = 0.55;
const float cfAlphaLOWER = cfLOWER;
const float cfAlphaUPPER = cfUPPER-0.05;

//Input Metadata
uniform float cfNormalizeX;
uniform float cfNormalizeY;
uniform float cfOffset0X;
uniform float cfOffset0Y;
uniform float cfOffset1X;
uniform float cfOffset1Y;
uniform float cfRotate0;
uniform float cfRotate1;
uniform float cfRatio;
uniform float cfLensRatio;

void main() {
	 
	 // 3D Transform 
	 vec2 vThetaXPhiY = vec2(v_texcoord * PI1 - PI1_2);
	 vThetaXPhiY.x *= 2.0;
	 vec2 vThetaXPhiY_Sin = vec2(sin(vThetaXPhiY));
	 vec2 vThetaXPhiY_Cos = vec2(cos(vThetaXPhiY));
	 vec4 pos = t_matrix * vec4(vThetaXPhiY_Cos.y * vThetaXPhiY_Sin.x, vThetaXPhiY_Cos.y * vThetaXPhiY_Cos.x, vThetaXPhiY_Sin.y, 0);
	  
	 vThetaXPhiY = vec2(atan(vec2(pos.z, length(vec2(pos.x, pos.z))), vec2(pos.x, pos.y)));

	 gl_FragColor = vec4(0);
	 float r = vThetaXPhiY.y * INVPI * cfLensRatio;
	 
	 if(r >= cfLOWER)
	 {
	 		float fRadius = cfLensRatio - r;// (1.0 - r) * cfRATIO
	 		float fTheta = vThetaXPhiY.x + cfRotate0 * PI_Angle;
	 		float fAlpha = smoothstep(cfAlphaUPPER, cfAlphaLOWER, fRadius);
	 		gl_FragColor += texture2D(sTexture, vec2(0.75, 0.50) + fRadius * vec2(-cos(fTheta) * 0.5, sin(fTheta)) + vec2(cfNormalizeX * cfOffset0X, cfNormalizeY * cfOffset0Y) ) * fAlpha;
	 }
	 
	 if(r <= cfUPPER)
	 {
	 		float fRadius = r;
	 		float fTheta = vThetaXPhiY.x + cfRotate1 * PI_Angle;
	 		float fAlpha = smoothstep(cfAlphaUPPER, cfAlphaLOWER, fRadius);
	 		gl_FragColor += texture2D(sTexture, vec2(0.25, 0.50) + fRadius * vec2(cos(fTheta) * 0.5, sin(fTheta) ) + vec2(cfNormalizeX * cfOffset1X, cfNormalizeY * cfOffset1Y)  ) * fAlpha;
	 }
}