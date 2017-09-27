# Import file "170606_desktop_stickersheet"
sketch = Framer.Importer.load("imported/170606_desktop_stickersheet@1x", scale: 0.5)

artboard1 = sketch.page1	
artboard2 = sketch.page2
artboard3 = sketch.page3

artboards = [artboard1, artboard2, artboard3]

page = new PageComponent
	width: 375
	height: 667
 
# Define first page layer 
page1 = page.content
 
# Define second page layer place it to the right 
page2.parent = page.content
# page2.x = 319

page3.parent = page.content
# page3.x = 638



