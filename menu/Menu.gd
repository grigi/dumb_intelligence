extends Node2D

# Declare member variables here.
var time = 0.0

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta
	$Enemy.position.y = sin(time*1.1)*100 + 290
	$Enemy.position.x = cos(time*1.6)*20 + 888


func _on_PlayButton_pressed():
	$Click.play()
	yield(get_tree().create_timer(0.25), "timeout")
	var _res = get_tree().change_scene("res://game/game.tscn")


func _on_QuitButton_pressed():
	$Click.play()
	yield(get_tree().create_timer(0.25), "timeout")
	get_tree().quit()
