import Flutter
import UIKit

public class SwiftFlutterInstagramStoryPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_instagram_story", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterInstagramStoryPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      let hasArgs = call.arguments as? Dictionary<String, Any>
      
      switch call.method {
      case "shareWithBackground":
          guard let arguments = call.arguments as? [String:FlutterStandardTypedData],
          let data:FlutterStandardTypedData = arguments["stickerImage"] else {
              result("Couldn't find image data")
              return
          }
          let uiImage = UIImage(data: data.data)!
              result(
                shareWithBackground(stickerImage: uiImage)
              )
          break
          
      default:
          result("Not implemented method")
      }
  }

    public func shareWithBackground(stickerImage: UIImage) -> String {
      if let urlScheme = URL(string: "instagram-stories://share") {

          if UIApplication.shared.canOpenURL(urlScheme) {

              let imageData: Data = stickerImage.pngData()!
              let items = [["com.instagram.sharedSticker.backgroundImage": imageData]]
              let pasteboardOptions = [UIPasteboard.OptionsKey.expirationDate: Date().addingTimeInterval(60*5)]

              UIPasteboard.general.setItems(items, options: pasteboardOptions)

              UIApplication.shared.open(urlScheme, options: [:], completionHandler: nil)
              
              return "Success!"
          }
      }
    return "Error"
  }
}
