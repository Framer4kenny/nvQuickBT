# nvQuickBT
naver quickmenu prototype

- 드래그 영역 제약, 퀵메뉴 위치지정

```
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
	else if this.midX < Screen.width/2
			this.animate
				x: 0 - nvBT.width/3
```


- 스위치로 기본값 변경
```

weatherCard.states.add 
	off:
		y: Screen.height
weatherCard.stateSwitch("off")
weatherCard.states.animationOptions = 
	curve: "spring(200,30,0)"
```
