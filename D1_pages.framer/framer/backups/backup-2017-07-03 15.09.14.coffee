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



