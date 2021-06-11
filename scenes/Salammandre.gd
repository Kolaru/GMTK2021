extends Node2D

var speed = 200
var rotation_speed = 2

func _process(delta):
	if Input.is_action_pressed("up"):
		position -= Vector2(0, speed * delta).rotated(self.rotation)

	if Input.is_action_pressed("down"):
		position += Vector2(0, speed * delta).rotated(self.rotation)

	if Input.is_action_pressed("left"):
		rotation -= rotation_speed * delta

	if Input.is_action_pressed("right"):
		rotation += rotation_speed * delta
