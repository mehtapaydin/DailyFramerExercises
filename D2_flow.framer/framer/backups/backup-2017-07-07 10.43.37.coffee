# Import file "FramerTest1"
sketch = Framer.Importer.load("imported/FramerTest1@1x", scale: 0.5)


page1 = sketch.page1	
page2 = sketch.page2
page3 = sketch.page3


# Set up FlowComponent
flow = new FlowComponent
flow.showNext(page1)


# Switch on click
page1.onSwipeLeft ->
	flow.showNext(page2)

sketch.kare.onClick ->
	flow.showNext(page3)

sketch.back2.onClick ->
	flow.showPrevious()
	
sketch.back3.onClick ->
	flow.showPrevious()

	
scroll = new ScrollComponent
	height: 587
	width: 375
	y: 80
	opacity: 100
	scrollHorizontal: false
	parent: page1


scroll.contentInset =
    bottom: 15
# 
# scroll = ScrollComponent.wrap(sketch.mylist)
# sketch.mylist.parent = scroll.content









