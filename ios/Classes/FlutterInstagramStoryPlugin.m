#import "FlutterInstagramStoryPlugin.h"
#if __has_include(<flutter_instagram_story/flutter_instagram_story-Swift.h>)
#import <flutter_instagram_story/flutter_instagram_story-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_instagram_story-Swift.h"
#endif

@implementation FlutterInstagramStoryPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterInstagramStoryPlugin registerWithRegistrar:registrar];
}
@end
