## 06 - View Controllers & Segues

### View Controllers

View Controllers are really at the centre of every project you'll work on. While you're new to iOS development **a lot** of the code you write will be in one of your view controller *sub-classes*. 

At the most basic level, think of your view controllers as responsible for controlling a "screen" of your app. 

> Rename your view controller class! "ViewController" is not a very descriptive name. Get into the habit of renaming the `ViewController` class the Xcode give you. Something like "MapViewController" or "SettingsViewController" is far more useful as a name. 

### View Controller Life Cycle

View controllers have several points in their "life" in which we can perform tasks.

#### viewDidLoad

This is likely where you'll start doing a lot of the work:

```swift

func viewDidLoad() {
	super.viewDidLoad()
}

```

There is loads of information on view controllers here:

[Apple - Work With View Controllers](https://developer.apple.com/library/archive/referencelibrary/GettingStarted/DevelopiOSAppsSwift/WorkWithViewControllers.html)


### Linking View Controller Files to Your Storyboard

When you come to add a new "screen" (view controller) to your application there are generally three steps to get up and running. 

1. Create a new `UIViewController` subclass.
2. Drag out a new view controller in your Storyboard.
3. Link the new view controller in your storyboard with the new class you created. This happens in the **Identity Inspector**. 

> Tip: If the class name doesnt auto complete in the identity inspector box, something isn't right.

### Segues

### UIStoryboardSegue

From Apples documentation:

> "An object that prepares for and performs the visual transition between two view controllers..."

For us at the moment, this is the important bit: 

> "Segue objects contain information about the view controllers involved in a transition..."

A segue is used to pass data from one view to another and then present the new View Controller. Segues control the navigation or flow of your project. When a segue is triggered there is a 'visual transition' or animation from one view to the next. 
	
### Storyboard Segue:
To perform a segue on a button tap, hold down ctrl, then drag from the button to the view controller you want to present. Let go - select 'show'. 

A visual representation of your segue will appear as an arrow between the view controller - selecting this arrow and setting a segue identifier is essential if you want to manipulate your segue programmatically (the identifier is case sensitive!).

> You'll encounter the term "Identifier" a lot in iOS. Just think of it as giving something a name. 

### Programming a Segue: 
Often you may want to present a new segue without the user pressing a button. An example might when transitioning to a "game over" screen. We might call this "performing a segue programatically". It's simple to do. 

1. Setup the segue in your storyboard **between your view controllers**. Do this by holding ctrl + clicking & dragging from the view controller to the view controller to present.

2. You **must** give the segue an identifier. Select the segue (the link in the storyboard) and go to the segues "Attribute Inspector" to assign it's identifier. 

3. Perform the segue at the relevant point in your application by calling the following method:

```swift
performSegue(withIdentifier: "GameOver", sender: nil)
```

### Passing Data To The Next View Controller

Often you may want to pass some kind of data from the current view controller to the one about to be presented. If we continue the "game over" example, you may want to pass the players score to be shown on the next screen. This is where we can use the `prepare(for segue: UIStoryboardSegue, sender: Any?)` function. 

This function *gets called automatically* by the view controller when a segue is being performed. You can think of it as your last chance to do something here before moving to the next "screen". 

The important parts of this function are the arguments it receives. The segue argument "is type of" `UIStoryboardSegue`. This is the object that is the segue about to happen. It has several properties, two are particularly useful:

+ The segue *identifier* (name of the segue about to happen).
+ The *destination*. This is the view controller about to be presented. 

This is how we can "pass" some data to the next view controller:

``` swift
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
	if segue.identifier == "newVC" { 
		viewController = segue.destination as! NewViewController
		//Set the data you want to pass...
	}
}
```

