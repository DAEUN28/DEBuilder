# DEBuilder
[![Version](https://img.shields.io/cocoapods/v/DEBuilder.svg?style=flat)](https://cocoapods.org/pods/DEBuilder)
[![License](https://img.shields.io/cocoapods/l/DEBuilder.svg?style=flat)](https://cocoapods.org/pods/DEBuilder)
[![Platform](https://img.shields.io/cocoapods/p/DEBuilder.svg?style=flat)](https://cocoapods.org/pods/DEBuilder)

UIKit의 [Views and Controls](https://developer.apple.com/documentation/uikit/views_and_controls) 을 가장 편리하게 생성할 수 있는 라이브러리



## Usage

### 기본 

```swift
let view = UIView.Builder()
	.withGestureRecognizers(tapGesture)
	.withCornerRadius(8, maskedCorners: [.layerMaxXMaxYCorner, .layerMaxXMinYCorner])
	.disableTranlatesAutoresizing()
	.build()
```

또는 직접 DEBuilder에 직접 접근할 수 있습니다.

```swift
let view = ViewBuilder()
	.withGestureRecognizers(tapGesture)
	.withCornerRadius(8, maskedCorners: [.layerMaxXMaxYCorner, .layerMaxXMinYCorner])
	.disableTranlatesAutoresizing()
	.build()
```

Custom View에 상속한 Object의 Builder를 사용하고 싶다면 다음코드와 같이 사용할 수 있습니다.

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

NSObject를 상속받는 객체들은 기본적으로 keypath를 사용해 preperty를 set할 수 있습니다.

Builder를 사용해 객체를 생성한 이후에도 다음과 같이 with 메서드를 사용해 Builder가 제공하지 않는 property를 set할 수 있습니다.

```swift
let label = UILabel.Builder()
	.withText("Custom Label")
	.disableTranlatesAutoresizing()
	.build()
	.with(\.font, setTo: font)
  .with(\.textAlignment, setTo: textAlignment)
```

Custom Class가 NSObject를 상속하지 않을 때는 다음과 같이 With 프로토콜을 채택할 수 있습니다.

```swift
class CustomClass: With {
  var customProperty: String
}

let custom = CustomClass()
	.with(\.customProperty, setTo: "Custom")
```



### Custom Builder

제공하는 Builder가 없을 경우 직접 Custom Builder를 구현할 수 있습니다.

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

상속받을 Builder가 없는 경우에는 BuilderType을 채택해 직접 Custom Builder를 구현할 수 있습니다.

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

Cocoapods을 사용해 라이브러리를 사용할 수 있습니다.

```
pod 'DEBuilder'
```



## License

DEBuilder is available under the MIT license. See the LICENSE file for more info.