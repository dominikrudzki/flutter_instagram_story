import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_instagram_story_platform_interface.dart';

/// An implementation of [FlutterInstagramStoryPlatform] that uses method channels.
class MethodChannelFlutterInstagramStory extends FlutterInstagramStoryPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_instagram_story');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
