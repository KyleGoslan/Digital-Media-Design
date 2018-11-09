 ## Segues

A segue is used to present a new View Controller. They control the naviagation or flow of your project.     

### Storyboard Segue:

By selecting an item in your initial view controller holding down ctrl then drag and drop to the desired destination -  select show. 

### Programming a Segue: 

A function can also be used to segue from one view to another. By setting a Segue Identifier in your storyboard it can be used here to create the same effect - and its reusable!

```swift

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
if segue.identifier == "showSecondVC" {
let SecondViewController: SecondViewController = segue.destination as! SecondViewController
SecondViewController.delegate = self

}
```
If you present several view controllers one after the other they pile up or build a stack of presented view controllers. This uses up memory and creates a disorganised and confusing work flow. A dismiss method gets rid of all the view controllers stacked up before it. 

```swift
dismiss(animated: true, completion: nil)
```
