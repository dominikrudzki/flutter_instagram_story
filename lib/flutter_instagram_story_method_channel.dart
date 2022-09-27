import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_instagram_story_platform_interface.dart';

/// An implementation of [FlutterInstagramStoryPlatform] that uses method channels.
class MethodChannelFlutterInstagramStory extends FlutterInstagramStoryPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  static MethodChannel methodChannel = const MethodChannel('flutter_instagram_story');

  @override
  Future<String?> getPlatformVersion() async {
    return await methodChannel.invokeMethod<String>('getPlatformVersion');
  }

  @override
  Future<String?> shareWithBackground() async {
    return await methodChannel.invokeMethod<String>('shareWithBackground');
  }
}
