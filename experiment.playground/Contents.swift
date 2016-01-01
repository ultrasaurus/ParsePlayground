// ParsePlayground - noun: a place where people can play with Parse

import Parse
import XCPlayground
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

Parse.setApplicationId("-redacted-",
  clientKey: "-redacted-")


let testObject = PFObject(className: "TestObject")

testObject["foo"] = "bar"
testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
  print("Object has been saved: \(success)")
}


print("not the end... wait for the sync call to finish")
