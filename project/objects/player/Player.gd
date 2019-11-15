extends RigidBody2D



enum MoveState {
	GROUND,
	JUMPING,
	FALLING
}
move_state = MoveState.GROUND

class InputState:
	LEFT = false
	RIGHT = false
	UP = false
	DOWN = false
input_state = InputState.new()


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_unhandled_key_input(true)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _unhandled_key_input(event):
	
	#Which directions are pressed?
	
