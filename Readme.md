# HSInputManager
This project is a simple class for handeling UItextfields focus.

#### Installat
Just simply add swift file to your projetc.

#### How to use
Make an Instanse from the class.
```swift
let inputManager = HSInputManager()
```
Simply add UItextfields and max length to the class

```swift
inputManager
            .add(input: textField1, maxLength: 10)
            .add(input: textField2, maxLength: 6)
            .add(input: textField3, maxLength: 4)
            .add(input: textField4, maxLength: 2)
            .add(input: textField5, maxLength: 5)
```

##### Thats it!
