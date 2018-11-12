## Image Picker

In image picker is a way of retrieving an image and incorporating it into your app - very useful! (e.g profile picture or social media post)

### SourceType: 
The image picker is how we get an image. There are a 2 ways to get an image:
+ Camera
+ Photo Library

One way of organising how we want to get our image is to set up an if statement: 

```swift
if UIImagePickerController.isSourceTypeAvailable(.camera) {
image.sourceType = .camera
self.present(image, animated: true, completion: nil)
} else {
print("camera not available")
}
```
Attempt to access the camera - if not then error.  

Use the UIImagePickerController to access the device Photo Library instead. 
```image.sourceType = UIImagePickerController.SourceType.photoLibrary ```

### Media Type: 
The image picker allows to access images or videos 
Set media type to be .video/.image 
