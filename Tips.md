## Tips

I've put together a list of common problems and just general advice that might help. 

+ Use GitHub	
I've banged on about this for ages, but I'd still only say around 20% of you are actually using version control in your projects. Using version control makes even more sense when you're in an unfamiliar environment. It's easy to break stuff and not know what you've done. Version control stops this being an issue, and with your projects on GitHub it also makes it a lot easier for me to assist you when you need it. 

+ Create Custom Objects	(Classes)	
The point of object oriented programming is being able to create custom objects. For example, if you app needs an object that holds a coordinate and an image, make an object that does that.

+ Use Arrays	
Using arrays makes it easy to do repetitive tasks. A few great examples of this for a lot of your projects would be something like adding a whole bunch of annotations to a map view, or figuring out which point a user was closest to. 

+ Use `for` Loops
Following on from above, this is how you could do something for each item in your array.

+ Put Delegate Functions In Extension
We've always done this with our delegate methods. Stick to it. It'll make your classes (in particular your view controllers) a lot clearer.

+ Check Storyboard Connections	
Almost all of you have had a problem with connections from your storyboard to you view controllers at some point. It results in a crash with the phrase "is not key coding compliant" somewhere in the log. It's usually the the result of you deleting or renaming you IBActions or IBOutlets. Select the component (button/label or whatever) in your storyboard and go to the connections inspector and make sure that you haven't got any stray connections.

+ Get Familiar with `if let` Syntax		
We've used options a lot in already in swift (either exclamation points or question marks). The `if let` syntax check for nil. Get familiar with using it.

+ Use Lab Macs	
I highly recommend you use the macs in the labs when you can. They are powerful hardware and the large screens make them really nice to develop on, don't struggle with a slow small macbook while you have nice hardware at your disposal.
