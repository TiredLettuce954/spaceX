//motion
if keyboard_check(ord("W"))
{
	motion_add(image_angle,0.1);
}

if keyboard_check(ord("S"))
{
	motion_add(image_angle,-0.125 );
}

if keyboard_check(ord("A"))
{
	image_angle += 4;
}

if keyboard_check(ord("D"))
{
	image_angle -= 4;
}

//animation
if (speed > 5)
{
	sprite_index = spr_player;
} else {
	sprite_index = spr_player_stop;
}

//wrap around game
move_wrap(true,true,0);

//shooting
if mouse_check_button_pressed(mb_left) {
	instance_create_layer(x, y, "instances", obj_bullet);
}