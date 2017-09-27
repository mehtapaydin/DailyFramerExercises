
# Set up FlowComponent
flow = new FlowComponent
flow.showNext(artboard1)

# Switch on click
artboard1.onSwipeLeft ->
	recflow.showNext(artboard2)



artboard2.onSwipeLeft ->
	flow.showNext(artboard3)
	
artboard3.onSwipeLeft ->
	flow.showNext(artboard4)
	

	
artboard3.onSwipeRight ->
	flow.showNext(artboard2)

artboard2.onSwipeRight ->
	flow.showPrevious()

	
artboard4.onSwipeRight ->
	flow.showNext(artboard3)


rec2.onClick ->
	flow.showNext(artboard3)


rec2.onClick ->
	flow.showNext(artboard3)
	

rec2.onClick ->
	flow.showNext(artboard3)

flow.footer = bottomNav
flow.header =  appbar




scroll1 = new ScrollComponent
	height: 587
	width: 375
	y: 80
	opacity: 100
	scrollHorizontal: false
	parent: artboard1
	content: videoList


scroll1.contentInset =
	bottom: 124
	top: -24

# scroll1 = ScrollComponent.wrap(sketch.mylist)
videoList.parent = scroll1.content


scroll2 = new ScrollComponent
	height: 587
	width: 375
	y: 80
	opacity: 100
	scrollHorizontal: false
	parent: artboard2
	content: videoList


scroll2.contentInset =
	bottom: 124
	top: -24
	
Image_1.parent = scroll2.content	

scroll3 = new ScrollComponent
	height: 587
	width: 375
	y: 80
	opacity: 100
	scrollHorizontal: false
	parent: artboard3
	content: videoList


scroll3.contentInset =
	bottom: 124
	top: -44
	
Image_2.parent = scroll3.content	

