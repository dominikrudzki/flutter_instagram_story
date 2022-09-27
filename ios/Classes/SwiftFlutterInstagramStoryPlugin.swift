import Flutter
import UIKit

public class SwiftFlutterInstagramStoryPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_instagram_story", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterInstagramStoryPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      switch call.method {
      case "getPlatformVersion":
          result("getPlatformVersion")
          
      case "shareWithBackground":
          result("shareWithBackground")
          
      default:
          result("Not implemented method")
      }
      
  }
}
