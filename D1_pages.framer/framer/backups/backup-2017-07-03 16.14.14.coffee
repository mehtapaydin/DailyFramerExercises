# Import file "170606_desktop_stickersheet"
sketch = Framer.Importer.load("imported/170606_desktop_stickersheet@1x", scale: 0.5)

artboard1 = sketch.page1	
artboard2 = sketch.page2
artboard3 = sketch.page3

artboards = [artboard1, artboard2, artboard3]

Pages = PageComponent.wrap(artboard1)

for artboard in artboards
	artboard.visible = true
	Pages.addPage(artboard)


Pages.scrollVertical = false
Pages.velocityThreshold = 0.2

Pages.animationOptions =
	time: 0.1
	curve: "spring(150, 30, 1)"

# Pages.opacity = 0
# Pages.scale = 0.95
# 
# Pages.animate 
# 	opacity: 1
# 	y: 10
# 	scale: 1
# 	options:
# 		time: 2
# 		delay: 10