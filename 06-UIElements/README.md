## 06 - UI Elements 

Can be split into two catagories: 
+ Action - creates a function that performs an action or change when tapped
+ Outlet - is a container (something else controlls the change that happens to the view)

### UIView
Controls the shape and size of the window View you see. 

### UILabel
Is a text container. 

    ```
    @IBOutlet weak var testLabel: UILabel!  
    ```

Either you can set it from the start and use it as a title or description for example. 

Or you can use a function to manipluate the text in the label The fundamentals workshop demo. We set a set label, each time we pressed the button that function changed the text increased your age by one. 

### UIButton
A button is a command that you can control when it is fired. 

It is an IBAction, when you connect it from your story board to your View Controller it will autoamtically create a function for you: 

```swift

  @IBAction func buttonTest(_ sender: Any) {
  
        //doSomething
        
  }
  
  ```
  
Whatever you want the button to do you can write inside the function it created for you 

### UISlider
A slider can be used to set a value in a more creative and interesting way for the user. Connect to your View Controller as an IBOutlet. 

Easily customisable in the assistant editor: 
+ set min/max vlaues 
+ customise colours
+ connect as an IBOutet  

```

 @IBAction func didSlide(_ sender: Any) {
  }
  ```
  ```
  
    @IBOutlet weak var sliderValue: UISlider!
```


### UIImageView
Allows you to place images on your view: 
+ local image (store in assets folder)
+ import from device photo library 

### Local Image 
Storage for imagers on device are kept in the assets folder. These images are usually used for design purposes. For example you might want an image background. 

### UISegmentedController
A switch can be used to toggle between two catagories. 

### Navigation Controller






