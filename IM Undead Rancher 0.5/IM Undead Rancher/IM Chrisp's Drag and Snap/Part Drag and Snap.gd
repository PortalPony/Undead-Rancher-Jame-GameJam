extends Node2D

var  dragging = false
var of = Vector2(0,0)

var snap = 8


var cnct = null;


func _process(delta):
	if dragging:
		var newPos = get_global_mouse_position() - of
		position = Vector2(snapped(newPos.x, snap), snapped(newPos.y, snap))
	else:
		if cnct != null:
			position = cnct
			cnct = null


func _on_button_button_down():
	dragging = true
	of = get_global_mouse_position() - global_position # Replace with function body.


func _on_button_button_up():
	dragging = false # Replace with function body.


func _on_area_2d_area_entered(area):
	if dragging:
		cnct = area.get_parent().position
		cnct += area.position * 2 # Replace with function body.


func _on_area_2d_2_area_entered(area):
	if dragging:
		cnct = area.get_parent().position
		cnct += area.position * 2  # Replace with function body.


func _on_area_2d_3_area_entered(area):
	if dragging:
		cnct = area.get_parent().position
		cnct += area.position * 2  # Replace with function body.


func _on_area_2d_4_area_entered(area):
	if dragging:
		cnct = area.get_parent().position
		cnct += area.position * 2  # Replace with function body.
