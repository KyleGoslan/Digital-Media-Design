## 07 - Camera & Images

### Images

At the UIKit level, there are **two** objects you need deal with: 

>UIImage
>UIImageView

The *UIImage* is the image itself. The *UIImageView* is the view that displays the image. Think of the UIImageView as the frame that holds the image. 

>A UIImage does **not** display an image.

### Working With Images In Code 

Images that you want to include in your project should be dragged into to **Assets.xcassets** folder of your project. 

To create an image from one of those assets in your code:

```swift 
let myImage = UIImage(named: "MyImageName")
```

This creates a `UIImage` instance. You now need a `UIImageView` to display the image. 

Create this in your storyboard and create an *IBOutlet* for it. Then you can assign your image to the UIImageView's image property. 

```swift

// Assumes the IBOutlet for your image view is called "imageView"

let myImage = UIImage(named: "MyImageName")
myImageView.image = myImage

```

### Aspect Ratio




### Using Images The Camera/Library
