
import 'flutter_instagram_story_platform_interface.dart';

class FlutterInstagramStory {
  Future<String?> getPlatformVersion() {
    return FlutterInstagramStoryPlatform.instance.getPlatformVersion();
  }
}
