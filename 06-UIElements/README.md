## 06 - UI Elements 

Can be split into two catagories: 
+ Action - creates a function that performs an action when tapped
+ Outlet - is a container (something else controlls the change that happens to the view)

### UILabel
Is a text container. 

    ```
    @IBOutlet weak var testLabel: UILabel!  
    ```

Either you can set it from the start and use it as a title or description for example. 

Or you can use a function to manipluate the text in the label (you can look at the fundamentals workshop demo for exmaples of this). 

### UIButton
A button is an action that you can control when it is fired. 

Because it is 'doing' something it is an IBAction which will create a function for you. Your understanding of how functions 'doSomething' should help with this: 

```swift

  @IBAction func buttonTest(_ sender: Any) {
  
        //doSomething
        
  }
  
  ```
Whatever action you want the button to take you can write inside the function it created for you. 

### UISlider
A slider can be used to set a value in a more creative and interesting way for the user. Connect to your View Controller as an Outlet AND an Action. 

The action is the motion of sliding the slider and flicking between values. 
```@IBAction func didSlide(_ sender: Any) {
  }
  ```
  
The outlet is the final value created from the action of the slider.  
```@IBOutlet weak var sliderValue: UISlider!
```

Easily customisable in the assistant editor: 
+ set min/max values 
+ customise colours etc  


### UIImageView
Allows you to place images on your view. 

The image view is simply the container for your image not the image itself. This allows you to flick between images using the same frame/container. 

Storage for images on device are kept in the assets folder. These images are usually used for design purposes. For example you might want an image background. (Accessing photolibrary and using pictures you take with camera will come later on. )

You can access the images in the assets folder by using this snippet of code and calling the name of the image you want (REMEMBER it is case and space sensitive!)

```    imageView.image = UIImage.init(named: "sky")
```

### UISegmentedController
A switch can be used to toggle between two things.

(You may want to revisit the If statements that we did last week to see how you can provide two options.)

### Navigation Controller
DO NOT USE the one in the UIElements Library. You want to embed it within your View Controller. 

Editor/Embed In/Navigation Controller

Adding elements/icons into your nav bar can be done using the Bar Button Item in the UIElements Library. 






