# DEBuilder
[![Version](https://img.shields.io/cocoapods/v/DEBuilder.svg?style=flat)](https://cocoapods.org/pods/DEBuilder)
[![License](https://img.shields.io/cocoapods/l/DEBuilder.svg?style=flat)](https://cocoapods.org/pods/DEBuilder)
[![Platform](https://img.shields.io/cocoapods/p/DEBuilder.svg?style=flat)](https://cocoapods.org/pods/DEBuilder)

The most beautiful Builder 🛠

DEBuilder provide UIKit's [Views and Controls](https://developer.apple.com/documentation/uikit/views_and_controls) Builder by default.

Through inheritance also convenient way to create custom object.

[한글문서](https://github.com/DAEUN28/DEBuilder/blob/main/README-KR.md)



## Usage

### Basic

```swift
let view = UIView.Builder()
	.withGestureRecognizers(tapGesture)
	.withCornerRadius(8, maskedCorners: [.layerMaxXMaxYCorner, .layerMaxXMinYCorner])
	.disableTranlatesAutoresizing()
	.build()
```

Or you can access directly accessible too.

```swift
let view = ViewBuilder()
	.withGestureRecognizers(tapGesture)
	.withCornerRadius(8, maskedCorners: [.layerMaxXMaxYCorner, .layerMaxXMinYCorner])
	.disableTranlatesAutoresizing()
	.build()
```

If you want to use the Builder of an Object inherited in Custom View, you can use it with the following code.

```swift
class CustomButton: UIButton {
  typealias Builder = ButtonBuilder<CustomButton>
}

// Usage 1
let customButton = CustomButton.Builder()
	.withTitle([("CustomButtonTitle", .normal)])
	.disableTranlatesAutoresizing()
	.build()

// Usage 2
let customButton = ButtonBuilder<CustomButton>
	.withTitle([("CustomButtonTitle", .normal)])
	.disableTranlatesAutoresizing()
	.build()
```



### With

Objects that inherit the NSObject can set properties by default using keypath.

After you create an object using Builder, you can use the `with` method to set the properties that the builder does not provide.

```swift
let label = UILabel.Builder()
	.withText("Custom Label")
	.disableTranlatesAutoresizing()
	.build()
	.with(\.font, setTo: font)
  .with(\.textAlignment, setTo: textAlignment)
```

When Custom Class does not inherit the NSObject, you can adopt the `With` protocol as follows.

```swift
class CustomClass: With {
  var customProperty: String
}

let custom = CustomClass()
	.with(\.customProperty, setTo: "Custom")
```



### Custom Builder

If DEBuilder don't have a builder you want, you can implement it yourself.

```swift
class CustomLabel: UILabel {
  var customProperty: String?
}

class CustomLabelBuilder: LabelBuilder<CustomLabel> {
  private var customProperty: String?
  
  override func build() -> CustomLabel {
    return super.build()
    	.with(\.customProperty, setTo: customProperty)
  }
  
  func withCustomProperty(_ customProperty: String?) -> CustomLabelBuilder {
    self.custom
  }
}
```

If you don't have a builder to inherit, you can adopt `BuilderType` to implement Custom Builder yourself.

```swift
class CustomObject {
  var customProperty: String?
}

class CustomObjectBuilder: BuilderType {
  private var customProperty: String?
  
  func build() -> CustomObject {
    return CustomObject()
    	.with(\.customProperty, setTo: customProperty)
  }
  
  func withCustomProperty(_ customProperty: String?) -> CustomObjectBuilder {
    self.custom
  }
}
```



## Installation

You can install the library only using Cocoapods

```
pod 'DEBuilder'
```



## License

DEBuilder is available under the MIT license. See the LICENSE file for more info.
