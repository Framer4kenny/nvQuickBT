
homeScreenA = new Layer
	width: 1440
	height: 2560
	image: "images/homeScreen.png"

weatherCard = new Layer
	width: 1000
	height: 1250
	image: "images/weatherCard.png"
	x: Align.center
	y: Align.center

weatherCard.states.add 
	off:
		y: Screen.height
weatherCard.stateSwitch("off")
weatherCard.states.animationOptions = 
	curve: "spring(200,30,0)"

nvBT = new Layer
	width: 250
	height: 250
	x: -250/3
	opacity: .9
	image: "images/nvBT.png"

# print Screen.width
# print Screen.height

menuBT01 = new Layer
	width: 250
	height: 250
	borderRadius: 250
	x: 193
	backgroundColor: "green"
	y: -295

menuBT02 = new Layer
	width: 250
	height: 250
	borderRadius: 250
	backgroundColor: "green"	
	x: 318

menuBT03 = new Layer
	width: 250
	height: 250
	borderRadius: 250
	backgroundColor: "green"
	x: 193
	y: 295

menuBT04 = new Layer
	width: 250
	height: 250
	borderRadius: 250
	backgroundColor: "green"
	y: 295
	x: -148

menuBT05 = new Layer
	width: 250
	height: 250
	borderRadius: 250
	backgroundColor: "green"
	x: -309
	
menuBT06 = new Layer
	width: 250
	height: 250
	borderRadius: 250
	backgroundColor: "green"	
	x: -148
	y: -295
	
m1 = new TextLayer
	text: "M1"
	fontSize: 84
	fontFamily: "-apple-system, Hevetaca"
	fontWeight: 500
	color: "white"
	x: 70
	y: 70

m2 = new TextLayer
	text: "M2"
	fontSize: 84
	fontFamily: "-apple-system, Hevetaca"
	fontWeight: 500
	color: "white"
	x: 70
	y: 70

m3 = new TextLayer
	text: "M3"
	fontSize: 84
	fontFamily: "-apple-system, Hevetaca"
	fontWeight: 500
	color: "white"
	x: 70
	y: 70

m4 = new TextLayer
	text: "M4"
	fontSize: 84
	fontFamily: "-apple-system, Hevetaca"
	fontWeight: 500
	color: "white"
	x: 70
	y: 70

m5 = new TextLayer
	text: "M5"
	fontSize: 84
	fontFamily: "-apple-system, Hevetaca"
	fontWeight: 500
	color: "white"
	x: 70
	y: 70

m6 = new TextLayer
	text: "M6"
	fontSize: 84
	fontFamily: "-apple-system, Hevetaca"
	fontWeight: 500
	color: "white"
	x: 70
	y: 70

m1.parent = menuBT01
m2.parent = menuBT02
m3.parent = menuBT03
m4.parent = menuBT04
m5.parent = menuBT05
m6.parent = menuBT06

nvBT.draggable.enabled = true
nvBT.draggable.momentum = false

nvBT.draggable.constraints = 
	x: -nvBT.width/2
	y: 0 
	width: Screen.width + nvBT.width
	height: Screen.height

nvBT.onDragEnd ->
	if this.midX > Screen.width/2
		this.animate
			x: Screen.width - nvBT.width*(2/3)
	else if @midX < Screen.width/2
			this.animate
				x: 0 - nvBT.width/3
# menuBT01.draggable.enabled = true

allMenuLayer = [menuBT01, menuBT02, menuBT03, menuBT04, menuBT05, menuBT06]
for menu in allMenuLayer
	menu.opacity = .9
	menu.parent = nvBT
	menu.opacity = 0
	menu.scale = 0

# quickBtn.onTouchEnd ->
# 	if quickBtn.draggable.isDragging is false

nvBT.onClick ->
# 	if nvBT.draggable.isDragging is false
		for i in [0..5]
			nvBT.children[i].animate
				properties:
					opacity: 1
					scale: 1
				curve: "spring(250,20,0)"
				delay: 0.1*i



# for i in [0..3]
# 	allMenuLayer[i].y = menuBT01.height*i




