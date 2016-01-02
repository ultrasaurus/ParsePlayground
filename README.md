# Parse Playouground

For experimenting with [Parse.com](https://www.parse.com/) in Swift

Tested with:
* OSX 10.10.5 (Yosemite)
* Xcode 7.2
* Ruby 2.2.4
* Cocoapod 0.39.0

# Set up Parse

Make an app in Parse, after creating an account, create an app:

![](doc/parse/1-create-app.png)

Then you should see something like this:
![](doc/parse/2-new-app-screen.png)

Add a class called "item"
![](doc/parse/3-add-class.png)

Then you will see the empty list of objects:
![](doc/parse/4-view-object-list.png)

Add a column called "info"
![](doc/parse/5-add-column.png)

then add a few objects

# Play with XCode and Swift

download the files from this repo

in XCode, open `ParsePlayground.xcworkspace`

in `experiment.playground`

find the following two lines of code and fill in your app ID and client key from parse

```
Parse.setApplicationId("-redacted-",
  clientKey: "-redacted-")
```
