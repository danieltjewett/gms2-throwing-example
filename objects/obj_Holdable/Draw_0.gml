#region draw

if (holder == noone)
{
	draw_shadow(x, renderY + shadow_yoffset + LINK_SHADOW_OFFSET);
}

//draw_sprite(reference.sprite_index, 0, x, y);

draw_sprite_ext(reference.sprite_index, reference.image_index, renderX, renderY, reference.image_xscale, reference.image_yscale, reference.image_angle, reference.image_blend, reference.image_alpha);

#endregion