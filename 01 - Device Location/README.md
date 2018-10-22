## Device Location

### Requesting Permission

Before you do *anyhting* with a users device location you *must* request that your app has access to that information and a user can either allow or deny that access. 

There are two parts to this process: 

1. Add the relevant keys the apps Info.plist file. 
2. Make the request via a method call on a `CLLocationManager` object.

#### Setting up the Info.plist file

All apps come with an Info.plist file. This file contains some settings and other bits of information about your app. There are **two** additions you need to make in this file:

Privacy - Location Always and When In Use Usage Description
Privacy - Location When In Use Usage Description
