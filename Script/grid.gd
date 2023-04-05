extends Node2D

const block_size = 64
const grid_size = Vector2(10, 40)

var screen_size
var left_border

var map := []

func _ready():

	screen_size = get_viewport_rect().size
	
	for x in range(grid_size.x):
		map.append([])
		for y in range(grid_size.y):
			map[x].append(0)

func _draw():
	for x in range(grid_size.x):
		for y in range(grid_size.y):
			if(map[x][y] > 0):
				draw_rect(Block.rect(x, y), Color.BLACK)
