# AttackActiveState.gd
extends PlayerState

var state_name = "AttackActive"
var frame_counter = 0

func _ready():
	pass

func update(_delta: float):
	pass

func physics_update(delta: float):
	player_vars.v_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down").normalized()
	player.rotate_to_mouse(delta)
	player_vars.velocity.x = player_vars.v_direction.x * player_vars.MOVE_SPEED
	player_vars.velocity.y = player_vars.v_direction.y * player_vars.MOVE_SPEED
	player.move_and_slide(player_vars.velocity)
	frame_counter += 1
	if frame_counter > (player_vars.ATTACK_ACTIVE):
		frame_counter = 0
		get_parent().get_parent().get_node("Sprite/Hitbox/collisionShape").disabled = true		
		state_machine.transition_to("AttackRecovery")



func _on_Hitbox_area_entered(area):
	if area is BaseEnemy:
		area.take_damage(player_vars.BASE_ATTACK_DAMAGE)
