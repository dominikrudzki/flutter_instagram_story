import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_instagram_story_method_channel.dart';

abstract class FlutterInstagramStoryPlatform extends PlatformInterface {
  /// Constructs a FlutterInstagramStoryPlatform.
  FlutterInstagramStoryPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterInstagramStoryPlatform _instance = MethodChannelFlutterInstagramStory();

  /// The default instance of [FlutterInstagramStoryPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterInstagramStory].
  static FlutterInstagramStoryPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterInstagramStoryPlatform] when
  /// they register themselves.
  static set instance(FlutterInstagramStoryPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
