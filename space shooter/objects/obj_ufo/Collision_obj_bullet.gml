instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

direction = random(360);

if sprite_index == spr_ufo2
{
        sprite_index = spr_frag2;
        instance_copy(true);
}
else if instance_number(obj_ufo) < 12
{
        sprite_index = spr_ufo2;
        x = -100;
}
else
{
        instance_destroy();
}

obj_game.points += 50;