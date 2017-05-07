//
// Simple passthrough fragment shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 u_cl_pos; //click pos
uniform float u_framesElapsed; //time elapsed since last clikc

//macros
float o = 0.0;
float full = 1.0;
vec4 white = vec4(full, full, full, full);


void main()
{
	float pct_alpha = 1.0-smoothstep(o,120.0, u_framesElapsed); //percentage alpha
	float base_alpha = .50;//greatest alpha value
	vec4 _color = white;
	_color.a = base_alpha*pct_alpha;//change alpha val based on time
	
	gl_FragColor = _color;//apply white component wise
	
	
}