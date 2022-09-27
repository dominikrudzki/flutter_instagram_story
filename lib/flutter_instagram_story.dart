
import 'flutter_instagram_story_platform_interface.dart';

class FlutterInstagramStory {
  static final FlutterInstagramStoryPlatform _instance = FlutterInstagramStoryPlatform.instance;

   static Future<String?> getPlatformVersion() {
    return _instance.getPlatformVersion();
  }

   static Future<String?> shareWithBackground() {
     return _instance.shareWithBackground();
   }
}
