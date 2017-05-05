/// @description step it up

v_input = keyboard_check(my_key[actionKey.down]) - keyboard_check(my_key[actionKey.up]);
h_input = keyboard_check(my_key[actionKey.right]) - keyboard_check(my_key[actionKey.left]);

x += h_input * 2;
y += v_input * 2;