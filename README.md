# 🏳️ Simple Flag Picker

[![pub package](https://img.shields.io/pub/v/simple_flag_picker.svg)](https://pub.dev/packages/simple_flag_picker)
[![likes](https://badges.bar/simple_flag_picker/likes)](https://pub.dev/packages/simple_flag_picker/score)
[![pub points](https://badges.bar/simple_flag_picker/pub%20points)](https://pub.dev/packages/simple_flag_picker/score)
[![platform](https://img.shields.io/badge/platform-Flutter-blue)](https://flutter.dev)

A simple and customizable country flag picker widget using SVG assets, for Flutter apps.  
Works great with localization and supports Web, iOS, Android.

---

## Features

- Display country flags from SVG assets
- Change selected locale code via `onChanged`
- 200+ supported countries (ISO 3166-1 alpha-2)
- Handles missing SVGs gracefully with fallback icon
- Shows loading spinner while rendering SVG
- Supports custom text style and padding

---

## 📸 Preview

```dart
SimpleFlagPicker(
  selectedCode: 'th',
  onChanged: (code) => print('Selected: $code'),
  flagSize: 32,
  textStyle: TextStyle(fontSize: 16),
)
```

---

## Getting Started

### Install

Add to your `pubspec.yaml`:

```yaml
dependencies:
  simple_flag_picker: ^0.0.1