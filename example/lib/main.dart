import 'package:flutter/material.dart';
import 'package:flutter_instagram_story/flutter_instagram_story.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  void _test() async {
    print(await FlutterInstagramStory.getPlatformVersion());
  }

  void _shareWithBackground() async {
    print(await FlutterInstagramStory.shareWithBackground());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('flutter_instagram_story'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _test,
                child: const Text('Test'),
              ),
              ElevatedButton(
                onPressed: _shareWithBackground,
                child: const Text('Share with background'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
