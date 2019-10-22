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

Explore the `contentMode` property of the image view to see how the image can be displayed in the frame.


### Using Images The Camera/Library

>Note: Trying to access the camera on the simulator will crash your app. This will work on a real device. 

Accessing images from either the camera or the users photo library is straight forward. 

```swift
let imagePicker = UIImagePickerController()
imagePicker.sourceType = .photoLibrary
imagePicker.delegate = self
present(imagePicker, animated: true, completion: nil)
```

Line by line. 
+ First we create an instance of a `UIImagePickerController`. 
+ We set its source type (in this case to the users photo library).
+ we set its delegate to the current view controller. This is important so we can be notified when the user finishing selecting (or just cancelling) a photo. 
+ Finally we present the `UIImagePickerController`.

When the user finishes picking a photo, you'll likely want to do something with that image. This is handled in its `didFinishPickingMediaWithInfo` delegate method. Below is how you can get hold of an image (if they picked one). This is an extension to your view controller, in this case `ViewController` (you may need to change this to match the name of the view controller you're working in):

```swift
extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else { return }
    dismiss(animated: true, completion: nil)
    imageView.image = image
  }
}
```




