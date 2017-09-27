# Import file "170606_desktop_stickersheet"
sketch = Framer.Importer.load("imported/170606_desktop_stickersheet@1x", scale: 0.5)

page1 = sketch.page1	
page2 = sketch.page2
page3 = sketch.page3

page = new PageComponent
	width: 375
	height: 667
 
# Define first page layer 
page1 = page.content
 
# Define second page layer place it to the right 
# page2.parent = page.content
# page2.x = 319
# 
# page3.parent = page.content
# page3.x = 638


page.addPage(page1)
page.addPage(page2, "bottom")
