extends Skill

func enter():
	pass
func think(delta: float):#, inputs):
	if(Input.is_action_just_pressed("jump")):
		machine.goto(SkillType.JUMP)
		return
	if(Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right") or Input.is_action_pressed("move_up") or Input.is_action_pressed("move_down")):
		machine.goto(SkillType.RUN)
		return #ALWAYS use return after calling goto
func exit():
	pass
