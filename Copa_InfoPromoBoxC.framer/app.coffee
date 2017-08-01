bgApp.x = 1440
titleApp.opacity = 0

## Animaciones titulos
titleSanJoseFadeOut = new Animation titleSanJose,
	opacity: 0
	options:
		time: .8
		
titleAppFadeIn = new Animation titleApp,
	opacity: 1
	options:
		time: .8
		
titleAppFadeOut = new Animation titleApp,
	opacity: 0
	options:
		time: .8
		
titleSanJoseFadeIn = new Animation titleSanJose,
	opacity: 1
	options:
		time: .8

## 
bgSanJoseOut = new Animation bgSanJose,
	x: -1440
	options:
		time: 1
		
bgAppIn = new Animation bgApp,
	x: 20
	options:
		time: 1

bgSanJoseIn = new Animation bgSanJose,
	x: 20
	options:
		time: 1
		
bgAppOut = new Animation bgApp,
	x: 1440
	options:
		time: 1

## Comportamiento en clicks
arrowRight.onClick ->
	titleSanJoseFadeOut.start()
	titleAppFadeIn.start()
	bgSanJoseOut.start()
	bgAppIn.start()
	
arrowLeft.onClick ->
	titleSanJoseFadeIn.start()
	titleAppFadeOut.start()
	bgSanJoseIn.start()
	bgAppOut.start()
	