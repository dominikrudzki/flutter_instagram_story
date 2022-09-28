# flutter_instagram_story

Plugin for sharing photos to Instagram story.

# Supported platforms

| Platform | Android | iOS |
|:--------:|:-------:|:---:|
| Support  |    ❌    |  ✅  |

# Configuration

### iOS

#### Update your `Info.plist`

```
<key>LSApplicationQueriesSchemes</key>
<array>
    <string>instagram-stories</string>
</array>
```

then add `flutter_instagram_story` as a dependency in your pubspec.yaml file.

# Usage

#### shareWithBackgroundFromImageBuffer
```
FlutterInstagramStory.shareWithBackgroundFromImageBuffer(
    stickerData: image
)
```

#### shareWithBackground
```
FlutterInstagramStory.shareWithBackground(
    path: imageFilePath
)
```