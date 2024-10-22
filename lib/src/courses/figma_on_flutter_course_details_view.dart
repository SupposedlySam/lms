import 'package:flutter/material.dart';
import 'package:lms/core/extensions.dart';
import 'package:lms/src/components/section.dart';
import 'package:lms/src/components/video.dart';

class FigmaOnFlutterCourseDetailsView extends StatelessWidget {
  const FigmaOnFlutterCourseDetailsView({super.key});

  static const routeName = '/course/figma-on-flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Figma on Flutter')),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: context.sizeOf.width * 0.5,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Figma on Flutter', style: context.textTheme.displayLarge),
                Text(
                  'Design it in Figma, build it in Flutter',
                  style: context.textTheme.headlineSmall,
                ),
                Video(
                  key: ValueKey('figma-on-flutter-intro-video'),
                  uri: Uri.parse(
                      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
                ),
                Section(
                  key: ValueKey('what-will-i-build'),
                  title: 'What will I build?',
                  content: [
                    'This is a project-based course that will teach you how to build a multiple choice quiz app, inspired by apps like Duolingo and QuizUp. The app implements user authentication (Sign in with Google or Apple), tracks quiz progress in Firestore, uses dynamic animations, and shares data between screens.',
                    'A quiz was chosen because it provides a moderate amount of complexity with plenty of variety between learning concepts. My mission is to teach non-trivial concepts without getting bogged down into repetitive or boring tasks.'
                  ],
                ),
                // create a sectino for what will I learn
                Section(
                  key: ValueKey('what-will-i-learn'),
                  type: SectionType.unorderedBullets,
                  title: 'What will I learn?',
                  content: [
                    '👨‍🎤 Build a complete Flutter app with Firebase',
                    '🐣 Master the most common Flutter UI widgets',
                    '🔏 User Authentication (Apple, Google, Anonymous)',
                    '⚒️ State Management with Provider',
                    '🔥 Model relational Firestore data',
                    '🎭 Animation for realtime data streams',
                    '⚓ Organize large Flutter projects',
                    '🤖 Convert Firestore data to Dart Classes with JSON Serializable',
                    '🦺 Null safety',
                    '🚀 Deploy to the Apple App Store and Google Play',
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
