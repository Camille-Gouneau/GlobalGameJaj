extends BaseRoom


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _init():
	_room_type = "Dodge"
	_map = [
[1, 3, 1, 1, 1, 4, 1],
[1, 0, 0, 0, 0, 0, 1],
[1, 0, 0, 0, 0, 0, 1],
[1, 0, 0, 0, 0, 0, 1],
[1, 0, 8, 0, 0, 0, 1],
[1, 0, 0, 0, 0, 0, 1],
[1, 0, 0, 0, 0, 0, 1],
[1, 0, 0, 0, 0, 0, 1],
[1, 0, 0, 0, 0, 0, 1],
[1, 0, 0, 0, 8, 0, 1],
[1, 0, 0, 0, 0, 0, 1],
[1, 0, 0, 0, 0, 0, 1],
[1, 0, 0, 0, 0, 0, 1],
[1, 0, 0, 0, 0, 0, 1],
[1, 0, 0, 0, 0, 0, 1],
[1, 1, 1, 0, 1, 1, 1],
[1, 0, 0, 0, 0, 0, 1],
[1, 0, 0, 0, 0, 0, 1],
[1, 2, 1, 1, 1, 1, 1]]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
