extends Node2D

@export
var packed_block: PackedScene

const block_size = 64
const grid_size = Vector2(10, 40)

const margin_x = 0
const margin_y = 1

var screen_size
var left_border

var timer:= Timer.new()
var cicle_time = .2

var map := []
# Called when the node enters the scene tree for the first time.
func _ready():

	get_tree().root.get_child(0);

	screen_size = get_viewport_rect().size
	left_border = (screen_size.x/2) - (grid_size.x * block_size) / 2 
	
	for x in range(grid_size.x):
		map.append([])
		for y in range(grid_size.y):
			map[x].append(0)
	
	map[0][0] = 1

func _draw():
	var rect_scale = Vector2(get_viewport_rect().size.x, get_viewport_rect().size.x) / grid_size.x
	
	for x in range(grid_size.x):
		for y in range(grid_size.y):
			if(map[x][y] > 0):
				var rx = (margin_x + x) * block_size
				var ry = (margin_y + y) * block_size
				var rect = Rect2(Vector2(rx, ry), rect_scale)
				draw_rect(rect, Color.ANTIQUE_WHITE)
