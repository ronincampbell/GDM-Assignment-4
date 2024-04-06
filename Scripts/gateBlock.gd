@tool
extends StaticBody2D

@onready
var sprite = $Sprite

@export
var pos : Vector2 : set = set_pos

var lit : bool : set = set_lit

# Called when the node enters the scene tree for the first time.
func _ready():
	sprite.texture = sprite.texture.duplicate()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_pos(new_pos : Vector2):
	if not is_instance_valid(sprite):
		return
	pos = new_pos
	position = pos*8
	sprite.texture.region.position = pos*8

func set_lit(val : bool):
	if lit == val:
		return
	lit = val
	if lit:
		sprite.hide()
		collision_layer -= 1
	else:
		sprite.show()
		collision_layer += 1
	