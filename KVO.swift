@objcMembers class MyClass: NSObject {
    dynamic var date = Date()
}

let myObject = MyClass()

var observation: NSKeyValueObservation?

observation = myObject.observe(\.date, options: [.old, .new]) { object, change in
    print("date changed from: \(change.oldValue!), updated to: \(change.newValue!)")
}

myObject.date = Date()
