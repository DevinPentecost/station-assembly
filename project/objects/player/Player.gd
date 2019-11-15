extends RigidBody2D



enum MoveState {
	GROUND,
	JUMPING,
	FALLING
}
var move_stat = MoveState.GROUND

class InputState:
	var LEFT = false
	var RIGHT = false
	var UP = false
	var DOWN = false
var input_state = InputState.new()


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_unhandled_key_input(true)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _unhandled_key_input(event):
	
	#Which directions are pressed?
	if event.is_action("player_move_down"):
		input_state.DOWN = event.pressed
	if event.is_action("player_move_up"):
		input_state.UP = event.pressed
	if event.is_action("player_move_left"):
		input_state.LEFT = event.pressed
	if event.is_action("player_move_right"):
		input_state.RIGHT = event.pressed
	
