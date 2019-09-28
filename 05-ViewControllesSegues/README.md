## 06 - View Controllers & Segues

### View Controllers

View Controllers are really at the centre of every project you'll work on. While you're new to iOS development most of the code you write will be in one of your view controller sub-classes. 

At the most basic level, think of your view controllers as responsible for controlling a "screen" of your app. 

### View Controller Life Cycle

View controllers have several points in their "life" in which we can perform tasks.

#### viewDidLoad

This is likely where you'll start doing a lot of the work:

```swift

func viewDidLoad() {
	super.viewDidLoad()
}

```

> **Tip: Name your view controllers appropriatly. "ViewController" isn't a very useful name. If it's responsible for displaying a map, "MapViewController" is a far more descriptive name.

There is loads of information on view controllers here:

[Apple - Work With View Controllers](https://developer.apple.com/library/archive/referencelibrary/GettingStarted/DevelopiOSAppsSwift/WorkWithViewControllers.html)


### Linking View Controller Files to Your Storyboard

When you create a new View Controller sub-class 



### Segues

A segue is used to pass data from one view to another and then present the new View Controller. Segues control the navigation or flow of your project. When a segue is triggered there is a 'visual transition' or animation from one view to the next. 
	
### Storyboard Segue:
Select an item in your initial view controller, hold down ctrl, then drag and drop to the desired destination and let go - select 'show'. 

A visual representation of your segue will appear as an arrow - selecting this arrow and setting a segue identifier is essential if you want to manipulate your segue programmatically. (Remember the identifier is case sensitive!)

### Programming a Segue: 
A method can be used to set up a segue from one view to another. By setting a Segue Identifier in your storyboard it can be used  to control how and when the segue is used. The two main ways we looked at this was with these functions: 

+ Prepare:

``` swift
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
	if segue.identifier == "newVC" { 
		viewController = segue.destination as! NewViewController 
	}
}
```

+ Perform: 

```swift
performSegue(withIdentifier: "newVC", sender: nil)
```

### Embedding a Navigation Controller: 
This is a simply way of unwinding a Segue or setting up a 'back' button. 

### Dismiss <--- IMPORTANT 
If you present several view controllers one after the other they pile up or build a stack of presented view controllers. This uses up memory and creates a disorganised and confusing work flow. Dismissing gets rid of all the view controllers stacked up before it. 

```swift
dismiss(animated: true, completion: nil)
```


