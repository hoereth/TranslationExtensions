# TranslationExtensions

Contains a few extensions for looking up localized strings prefixed with current class name.

## Examples

### Basic Example

```swift
   import TranslationExtensions
   ...
   class SomeClass {
      ...
      // localized string with key "SomeClass.myKey"
      let translation1 = self.translateKey("myKey")
      
      // localized formatted string with key "SomeClass.otherKey"
      let translation2 = self.translateFormatKey("otherKey", "world")
   }
}
```

### ViewController Example

```swift
   import TranslationExtensions
   ...
   class TestController: UIViewController {
      @IBOutlet weak var button: UIButton!
      ...
      override func viewDidLoad() {
         super.viewDidLoad()
      
         // sets title to localized string with key: "TestController.title"
         self.translateTitle()
         
         // transforms button title from title value "dummyTitle" to
         // localized string with key: "TestController.dummyTitle"
         self.translateButton(button)
      }
   }
}
```
