#Player.gd
class_name Player
extends KinematicBody2D

signal death
onready var player_vars = get_node("/root/PlayerVariables")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func rotate_to_mouse(_delta):
	var direction = (get_global_mouse_position() - global_position)
	player_vars.v_rotation = transform.x.angle_to(direction)
	rotate(sign(player_vars.v_rotation) * min(_delta * player_vars.ANGULAR_SPEED, abs(player_vars.v_rotation)))

func rotate_to_abs(degrees, _delta):
	player_vars.v_rotation = degrees
	rotate(sign(player_vars.v_rotation) * min(_delta * player_vars.ANGULAR_SPEED, abs(player_vars.v_rotation)))

func _process(delta):
	pass

func damage(sender: Node, damage: int):
	print('Took damage %s from %s' % [damage, sender])
	var audio_player = get_node("SoundEmitter")
	var audio_file = "res://Assets/Sounds/damage1.wav"
	if File.new().file_exists(audio_file):
		var sfx = load(audio_file)
		audio_player.set_stream(sfx)
		randomize()
		audio_player.pitch_scale = rand_range(0.9,1.3)
		audio_player.volume_db = -3
		audio_player.play()
	player_vars.HP -= damage
	if player_vars.HP <= 0:
		yield(audio_player, "finished")
		on_death(sender)

func on_death(sender: Node):
	print('YOU DIED FROM %s' % sender)
	emit_signal('death')
