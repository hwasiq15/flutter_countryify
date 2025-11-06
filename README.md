# flutter_countryify

A Flutter package to display country details including flags, name, currency, and phone code.

## ✨ Features

✅ Get country by name or code  
✅ Display SVG flags in square, circle, rounded, or rectangle shapes  
✅ Built-in 270+ countries data  
✅ Offline and lightweight  

---

## 🚀 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_countryify: ^0.0.3
```
## 💡 Usage

Import the package:

```dart
import 'package:flutter_countryify/flutter_countryify.dart';
final country = CountryData.fromCode('PK');

print(country.name);       // Pakistan
print(country.currency);   // PKR
print(country.phoneCode);  // +92

//Diplay Country Flag
CountryFlag(
  countryCode: 'PK',
  shape: FlagShape.circle,    // FlagShape.square, FlagShape.rounded
  width: 50,
  height: 50,
);
```
## 🖼️ Preview
![flutter_countryify example](https://raw.githubusercontent.com/hwasiq15/flutter_countryify/refs/heads/main/example/example_screen_shot.jpg)
