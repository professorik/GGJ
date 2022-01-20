extends CanvasLayer


var time 

func _ready():
	time = 0
	var timer = Timer.new()
	timer.connect("timeout",self,"_on_timer_timeout") 
	add_child(timer)
	timer.start()

func _on_timer_timeout():
	time += 1
	$Time.text = String(time)
	