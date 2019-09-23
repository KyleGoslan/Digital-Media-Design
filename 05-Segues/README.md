## 06 - View Controller & Segues

A segue is used to pass data from one view to another and then present the new View Controller. Segues control the naviagation or flow of your project. When a segue is triggered there is a 'visual transition' or animation from one view to the next. 

### Storyboard Segue:
Select an item in your initial view controller, hold down ctrl, then drag and drop to the desired destination and let go - select 'show'. 

A visual representation of your segue will appear as an arrow - selecting this arrow and setting a segue identifier is essential if you want to manipulate your segue programmatically. (Remember the identifier is case sensitive!)

### Programming a Segue: 
A method can be used to set up a segue from one view to another. By setting a Segue Identifier in your storyboard it can be used  to control how and when the segue is used. The two main ways we looked at this was with these functions: 
+ Prepare:
``` swift
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
if segue.identifier == "newVC"
{ viewController = segue.destination as! NewViewController }
}
```
+ Perform: 
```swift
performSegue(withIdentifier: "newVC", sender: nil)
}
```

### Embedding a Navigation Controller: 
This is a simply way of unwinding a Segue or setting up a 'back' button. 

### Dismiss <--- IMPORTANT 
If you present several view controllers one after the other they pile up or build a stack of presented view controllers. This uses up memory and creates a disorganised and confusing work flow. Dismissing gets rid of all the view controllers stacked up before it. 

```swift
dismiss(animated: true, completion: nil)
```


