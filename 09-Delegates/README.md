## 09 - Delegates

The “Delegate Pattern” or delegation is a common design pattern in iOS apps. Apple use this pattern in many of their iOS frameworks and libraries. 

You can build you own delegate pattern as well. This is one way that you can notify one object that something has happened in another object, that’s exactly what we’ll do for this demo. 

**The scenario...** 

We’ll have a one “MainViewController” that presents another, a “SettingsViewController”. We’ll change the background color of the MainViewController from the SettingsViewController. In this example the MainViewController will be the delegate of the SettingsViewController. 

#### Creating a Protocol

The first part is deciding what the delegate object “must be able to do” on behalf of the object it’s delegating for. To do this we write a `protocol`. You can write this in a new file, or in this case I might write it at the top of my “SettingsViewController” file (below the imports). 

```swift
protocol SettingsViewControllerDelegate {
  //What must the delegating object be able to do?
}
```

A protocol looks similar to writing a class, but with the word “protocol” replacing “class”. Here your write the functions that the delegate object must be able to do. You could think of this as writing a job advert. 

The big difference here is that you do not write the body of the function (no curly braces) here.

In our example we want our delegate to handle what to do when a user selects a new color. So we could write a function signature that looks like this:

```swift
func didSelect(color: UIColor) 
```

So our completed protocol looks like this:

```swift
protocol SettingsViewControllerDelegate {
  func didSelect(color: UIColor)
}
```

We now need to give our SettingsViewController a delegate property, these are unusually optional:

```swift
var delegate: SettingsViewControllerDelegate?
```

#### Off to the `MainViewController` to setup the delegate...

We need to assign the `SettingsViewController`’s delegate property to this view controller. This is just like setting any other property (think back to the segue workshop). So this will happen in the `prepareForSegue` function.

```swift
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  let settingsViewController = segue.destination as! SettingsViewController 
  settingsViewController.delegate = self
}
```

>Note: This will give you an error at this point. It’s fine, we just haven’t finished yet...
This warrior is because We haven’t said the the `MainViewController` can be a `SettingsViewControllerDelegate`. We’ll do this in a extension. At the bottom of the `MainViewController` file add the extension:

```swift
extension MainViewController: SettingsViewControllerDelegate {

}
```

>Note: At this point the previous error will be fixed, but we’ll have a new “Does not conform to protocol...” error. That’s because we haven’t implemented the function that we said we would in the protocol. This is known as “conforming to the protocol”. The Fix-it Xcode offers will sort it, and we’ll use the passed color to set the background color:

```swift
extension MainViewController: SettingsViewControllerDelegate {
  func didSelect(color: UIColor) {
    view.backgroundColor = color
  }
}
```

The last step is to call the delegate method from the `SettingsViewController` at the relevant point in time. It will look like this (assuming `selectedColor` is a UIColor):

```swift
delegate?.didSelect(color: selectedColor)
```
