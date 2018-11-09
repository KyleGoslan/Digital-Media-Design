## TableViews

Table Views are a fundemental part of working in iOS. They are responsible for displaying a large amount of scrollable data - your contacts list for example. 

They can seem confusing at first, but once you've set up a few, they'll become relatively intuative to work with. They work on a delegate design pattern, and in fact have **two** delegates that. One for it's data source and another for common interations with the table view, for example when a user selects a row, you'll likely want to perform an action of some kind. 

You **must** adopt the `UITableViewDataSource` protocol. As the name suggest this is responsible for providing the table view with the data it is going to display. All the other delegate methods in the `UITableViewDelegate` protocol are optional.  

> If you need to refresh what delegates are and hwo they work, go and read the notes on them [here](https://github.com/KyleGoslan/Digital-Media-Design/tree/master/05%20-%20Delegates)

![Image](Resources/table-views-01.png)
