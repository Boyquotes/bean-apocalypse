extends Node2D

@onready
var bean_node = preload("res://bean.tscn")

var beans = []
# Called when the node enters the scene tree for the first time.
func _ready():
	print("Script Ready")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var bean = bean_node.instantiate()
	bean.position = get_viewport().get_mouse_position()
	add_child(bean)
	print("Bean spawned")
	beans.append(bean)
	print("Bean added to list")
	
	if Input.is_action_just_pressed("del"):
		for v in beans:
			v.queue_free()
		
		beans.clear()
		print("Beans cleared")

