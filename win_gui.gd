extends Control

func _ready():
	$anim.play("fade")

var b = 0
func f1():
	self.set("b",0)
	self.modulate.a = self.get("b")

func f2():
	self.set("b",self.get("b") + .1)
	self.modulate.a = self.get("b")
	
func f3():
	self.set("b",self.get("b") + .1)
	self.modulate.a = self.get("b")
	
func f4():
	self.set("b",self.get("b") + .1)
	self.modulate.a = self.get("b")
	
func f5():
	self.set("b",self.get("b") + .1)
	self.modulate.a = self.get("b")
	
func f6():
	self.set("b",self.get("b") + .1)
	self.modulate.a = self.get("b")
	
func f7():
	self.set("b",self.get("b") + .1)
	self.modulate.a = self.get("b")

func f8():
	self.set("b",self.get("b") + .2)
	self.modulate.a = self.get("b")
	
func f9():
	self.set("b",self.get("b") + .2)
	self.modulate.a = self.get("b")
	print(self.get("b"))