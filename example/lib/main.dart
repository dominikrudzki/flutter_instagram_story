import 'package:flutter/material.dart';
import 'package:flutter_instagram_story/flutter_instagram_story.dart';
import 'package:screenshot/screenshot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ScreenshotController _screenshotController = ScreenshotController();

  @override
  void initState() {
    super.initState();
  }

  void _shareWithBackground() async {
    _screenshotController.capture().then(
          (img) async => {
            debugPrint(
              await FlutterInstagramStory.shareWithBackgroundFromImageBuffer(stickerData: img!),
            )
          },
        );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screenshot(
        controller: _screenshotController,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('flutter_instagram_story'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ElevatedButton(
                  onPressed: null,
                  child: Text('Test'),
                ),
                ElevatedButton(
                  onPressed: _shareWithBackground,
                  child: const Text('Share with background'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
