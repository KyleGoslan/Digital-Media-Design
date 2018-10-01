## Arrays & Dictionaries

### Arrays

Arrays are one of the most common things you'll encounter when working on your apps. Arrays (as the name suggests), contain and collection of "things". These things might be `String`s, `Int`s or any other object - a collection of `CLLocation`s for example. As always in Swift, Arrays are **strongly typed**, so an array of Strings can *only* contain Strings. This is useful because you always know what you're going to pull out the box so to speak. 

#### Creating Arrays

You can create an array containing some values like this: 

```swift
  var numbers = [1, 2, 3]
```

This creates an array of `Int`s. Swifts type infrerence system can figure out the type of data contained in an array. If you want to create an empty array (a common thing you'll want to do), then you need to specify the type: 

```swift 
  var names: [String] = [] 
```
#### Retrieving From Arrays

There a few ways to pull individual values out of an array. Each position in an array is reffered to as an "index". Arrays are "zero indexed", meaning that the first item in the array is at position zero. Working with the numbers array from above, we can pull out the value of the 2 like this: 

```swift
  print(numbers[1])
  //prints: 2
```
