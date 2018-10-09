 ## Storyboard 

We use the storyboard to design the layout for the app, which is then displayed on the simulator.

The assets library gives you access to different iOS objects - by dragging and dropping you can quickly create a good looking view controller. 

By holding ctrl and dragging the object over to your ViewController.swift file you can make the connection. A check to see if the connection worked is by the filled in grey circle - if it's hollow somehting has gone wrong, try again. 

A common error that occurs when connecting the storyboard items to your view controller is this:

    "this class is not key value coding-compliant for the key slider."

It just means that you need to double check you're connections in your storyboard and delete any that are doubled up. This can be found in your Connections Inspection - on the far right in your storyboard. 

Make sure each object has the correct type of outlet or action. 

Outlet:
+ Label
+ TextField 

Action: 
+ Buttons 
+ Sliders 
