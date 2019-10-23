## 08 - Fixing Errors

There are a couple of common errors that crop up in most projects and they are usually very fixable but before you get a chance to work through them you panic when you see a lot of red highlighted lines of code! 

I have put together a list of common error with an explanation of how to fix each one. There are corresponding projects to each error type in the completed demos section. Go through each one a practise spotting and fixing the errors. 

REMEMBER: 

* DONT PANIC
* DEBUG AREA - this is were xcode explains where/what the error is. 
* READ THE ERROR - dont panic when you see a red highlighted line go to the end of it and read what it says. It will usually give you a good explaination of what is wrong. For example: Expected '}' in class 


### Brackets 
Make sure all your classes and functions are closed. You can double click on a bracket to find its pair. Brackets ALWAYS come in pairs! It will highlight the area that it encompasses. 

There is a broken project in the [Completed Demos](https://github.com/KyleGoslan/Digital-Media-Design/blob/master/02-Fundamentals/Functions.md) try and find all the errors. 

### UIElements + Connections Inspector

There are a couple of common errors that crop up with UIElements. 

1. The Element hasn't been given the right IB*** 
    * IBOutlet 
    * IBAction 
    * BOTH 
    
2. You manually change the connection name in your View Controller. For exmaple, if you forgot to camel case, wanted to correct a typo or want to add more description to your Element name. You will need to remove the connection link and make a new one. 

You can NOT just delete it from your View Controller you have to remove the link from the story board in the Connections Inspector. 

Within your connections inspector check to see if there are any yellow triangles in the connections inspector on your storyboard - if so delete them! (Don not try and match up the names...)

If you accidentally remove an element form your storyboard so the connection is lost in your View Controller check to see if there are any hollow circles. 

If so you can reconnect it by dragging and dropping the plus(+) sign from the View Controller to the element you want it to link to.  

The DEBUG area is your friend!! - don't be intimidated by it. Scroll to the very top of the text that appears there. Within the first paragraph is will state: "is not key value coding-compliant for the key ....." 

### Control Flow
This refers to the order of the variables/functions in your project. You have to declare a variable before you try and use it in a function further down your project. Xcode does try and help you with this by 'auto filling' the predicted variable. The colour of the variable title will turn green if it is corresponding to a variable - if the colour does not change (from black -> green) check that the function is in the right place within the project and that the variable is set at the top of the project. 

A good formatting rule is to always have your variable and constant at the top of your project. Underneath your class and above your function View Did Load. 

Control Flow and UIElements Project:
There is a broken project in the [Completed Demos](https://github.com/KyleGoslan/Digital-Media-Design/blob/master/02-Fundamentals/Functions.md) try and find all the errors. 

### Functions spelt wrong
Like most things in xcode functions are case sensitive and should be camel cased. When you try and call a function make sure that it is spelt EXACTLY THE SAME as the func ... you already created. 

### Unnamed Segues
In the same way that classes and functions need to be named so do segues. It is very common to forget to label your segue within the Story Board. 

Again Xcode is case and space sensitive so make sure whatever you labelled your segue in your View Controller with in the "..." is the same as the Segue Identifier on teh Story Board. 

(feel free to revert back to your segues notes)

### Could not cast value of type ...

REMEMBER whenever you see a : read IS OF TYPE. 

We discussed casting types of values in the fundamentals workshop. 

``` var name: String
    var age: Int 
    
```
 
So our name is of type characters and our age is of type number. If an error is thrown that says cannot "Could not cast value of type ..." go back and check that all your varibale types match up with the values you have attemented to get out of them. 

(looks back at the fundamentals work shop may be useful for this. )

### Unexpectidly found nil 
This occurs when you are trying to cast a value and xcode cannot find where to put it. 

There are several common errors that can throw this up. For example: if you are trying to get a label to display a sentence but there is no label connected to your story board you may see this - found nil error - because xcode found nothing to put your sentence in. 


### Change Target
The deployment target is the version of iOS that you are using. There are regular updates to iOS and Xcode so you need to make sure that they are compatibe. 

If your version of xcode if higher that your version of iOS you will see this 'target' error. You need to go into the project setting and lower your delpoyment target so it is compatible with your version of iOS. 

This will require a bit more digging around pages we dont use that often. 

Try and find:  
1. General > Deployment Info > Target


<!--
### Libraries
Have you included (imported) all the libraries you intend on using (hint: using location you'll need a MapKit)

-->