//
// Simple passthrough fragment shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_dist; //distance from border
uniform float u_min_dist; //distance from border

//macros
float o = 0.0;
float full = 1.0;
vec4 white = vec4(full, full, full, full);


void main()
{
	float norm_dist = u_dist/u_min_dist; //normalize the distance
	
	float pct_alpha = 1.-smoothstep(o, 1., norm_dist); //percentage alpha
	float base_alpha = 1.;//greatest alpha value
	vec4 _color = vec4(o,o,o,o); //black
	_color.a = base_alpha*pct_alpha;//change alpha val based on time
	
	gl_FragColor = _color;//apply black component wise
	
	
}