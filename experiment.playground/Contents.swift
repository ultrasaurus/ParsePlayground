// ParsePlayground - noun: a place where people can play with Parse

import Parse
import XCPlayground
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

Parse.setApplicationId("-redacted-",
  clientKey: "-redacted-")

// making objects -- this will auto-create the class "TestObject"
let testObject = PFObject(className: "TestObject")

testObject["foo"] = "bar"
testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
  print("Object has been saved: \(success)")
}

// fetching objects -- in this case, the class "item" was created in Parse UI on the server
var query = PFQuery(className: "item")
var items = try query.findObjects()
print("got some items")
for item in items {
  var info = item["info"]
  print("   item #\(item.objectId!) info:\(info)")
}

print("not the end... wait for the sync call to finish")
