extends Node2D

const block_size = 64
const grid_size = Vector2(10, 40)

const margin_x = 0
const margin_y = 1

func rect(x, y) -> Rect2:
	var rect_scale = Vector2(get_viewport_rect().size.x, get_viewport_rect().size.x) / grid_size.x
	
	var rx = (margin_x + x) * block_size
	var ry = (margin_y + y) * block_size
	
	return Rect2(Vector2(rx, ry), rect_scale)

func color(n) -> Color:
	return Color.ANTIQUE_WHITE
