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

### Functions mis spelt 

### Unnamed Segues

### Could not cast value of type ...

### Unexpectidly found nil 

### Change Target 








<!--
### Libraries
Have you included (imported) all the libraries you intend on using (hint: using location you'll need a MapKit)

-->







