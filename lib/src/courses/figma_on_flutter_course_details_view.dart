import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lms/core/extensions.dart';
import 'package:lms/src/components/section.dart';
import 'package:lms/src/components/social_testimonial_card.dart';
import 'package:lms/src/components/video.dart';
import 'package:url_launcher/url_launcher.dart';

class Chapter extends Equatable {
  const Chapter({
    required this.title,
    required this.description,
    required this.videoUri,
  });

  final String title;
  final String description;
  final Uri videoUri;

  @override
  List<Object> get props => [title, description, videoUri];
}

class FigmaOnFlutterCourseDetailsView extends StatelessWidget {
  FigmaOnFlutterCourseDetailsView({super.key});

  static const routeName = '/course/figma-on-flutter';

  final chapters = <Chapter>[
    // 🚀 Getting Started
    Chapter(
      title: 'Flutter Explained in 100 Seconds',
      description: 'Quick overview of Flutter framework',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Resources',
      description: 'Essential learning resources',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Installation and Setup',
      description: 'Setup your development environment',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Flutter Create',
      description: 'Create your first Flutter project',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Editor Tricks',
      description: 'Essential IDE tips and tricks',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Dev Tools',
      description: 'Master Flutter development tools',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    // 🐣 Basic Training
    Chapter(
      title: 'Flutter Basics Tutorial',
      description: 'Learn fundamental Flutter concepts',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Async Widgets',
      description: 'Handle asynchronous operations',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Provider',
      description: 'State management fundamentals',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    // 🎫 App Development
    Chapter(
      title: 'App Tour',
      description: 'Overview of the quiz application',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Firebase Setup',
      description: 'Configure Firebase for Flutter',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Project Organization',
      description: 'Structure your Flutter project',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Routing',
      description: 'Navigate between screens',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Themes',
      description: 'Style your app with themes',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Google Fonts',
      description: 'Implement custom typography',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Bottom Navigation Bar',
      description: 'Create app navigation',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    // 🌊 Authentication
    Chapter(
      title: 'Auth Stream',
      description: 'Handle user authentication state',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Login Screen',
      description: 'Build the authentication UI',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Google Sign In',
      description: 'Implement Google authentication',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Sign in with Apple',
      description: 'Implement Apple authentication',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    // 💽 Firestore Integration
    Chapter(
      title: 'Database Model',
      description: 'Design the data structure',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'JSON Serializable',
      description: 'Convert Firestore data to Dart',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Basic Data Fetching',
      description: 'Read from Firestore',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Relational Data Fetching',
      description: 'Handle complex data relationships',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Write to Firestore',
      description: 'Update and create data',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    // 📳 Core UI Components
    Chapter(
      title: 'Topics Grid',
      description: 'Build the quiz topics grid',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Hero Animation',
      description: 'Add smooth transitions',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Stream Provider',
      description: 'Manage realtime data streams',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Dynamic Drawer',
      description: 'Create an animated drawer',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'User Profile',
      description: 'Display user information',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Animated Progress Bar',
      description: 'Add interactive animations',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    // ✨ Quiz Features
    Chapter(
      title: 'State Management with Provider',
      description: 'Manage quiz state',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Dynamic Screens',
      description: 'Create adaptive layouts',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Bottom Sheet',
      description: 'Implement quiz interactions',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    // 🚀 Deployment
    Chapter(
      title: 'Google Play Release',
      description: 'Deploy to Android',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
    Chapter(
      title: 'Apple App Store Release',
      description: 'Deploy to iOS',
      videoUri: Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var footer = [Divider(), SizedBox(height: context.sizeOf.height * 0.1)];
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
                Section(
                  key: ValueKey('is-this-course-right-for-me'),
                  title: 'Is this course right for me?',
                  content: [
                    'This course is intermediate level and designed to help you become a productive full-stack Flutter app developer. It assumes you have some basic knowledge of programming, ideally in a language similar to JavaScript, C#, or Java. It is fast-paced and similar to my style on YouTube, but far more in-depth and comprehensive.',
                    "If you're new to programming consider going through the Dart Language Course first."
                  ],
                ),
                Wrap(
                  spacing: 96,
                  runAlignment: WrapAlignment.center,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    SocialTestimonialCard(
                      authorAvatarUrl:
                          'https://avatars.githubusercontent.com/u/10137?v=4',
                      authorName: 'Andrea Bizzotto',
                      authorHandle: '@bizz84',
                      testimonial:
                          'I have a few programming idols. My current favorite is @Jeffdelaney23 of @fireship_dev.',
                    ),
                    SocialTestimonialCard(
                      authorAvatarUrl:
                          'https://avatars.githubusercontent.com/u/321360?v=4',
                      authorName: 'Simon Lightfoot',
                      authorHandle: '@devangelslondon',
                      testimonial:
                          'You know that time when you have to explain to someone what @FlutterDev is? @fireship_dev has come to the rescue with this video. My life has been made so much easier now 💙',
                    ),
                  ],
                ),
                Section(
                  key: ValueKey('test-drive'),
                  title: 'Test drive',
                  content: [
                    'You can download the app we’re building on Google Play or the App Store, so give it a test drive before you enroll.'
                  ],
                ),
                _appBadges(),
                Section(
                  key: ValueKey('how-do-i-enroll'),
                  title: 'How do I enroll?',
                  content: [
                    'The first few videos are free, so just dive in 🤿. When you reach a paid module, you will be asked to pay for a single course or upgrade to PRO.'
                  ],
                ),
                _howToEnroll(context),
                const SizedBox(height: 32),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Chapters', style: context.textTheme.headlineMedium),
                      const SizedBox(height: 16),
                      const Divider(),
                      const SizedBox(height: 16),
                      Flexible(
                        child: Builder(builder: (context) {
                          return LayoutBuilder(builder: (context, constraints) {
                            return GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: context.sizeOf.width < 800
                                    ? 1
                                    : context.sizeOf.width < 1200
                                        ? 2
                                        : context.sizeOf.width < 1400
                                            ? 3
                                            : 4,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                                childAspectRatio: 3 / 2,
                              ),
                              itemCount: 36,
                              itemBuilder: (context, index) {
                                final chapter = chapters[index];

                                return Material(
                                  color: context.theme.colorScheme.surface,
                                  borderRadius: BorderRadius.circular(16),
                                  elevation: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.all(24.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${index + 1} ${chapter.title}',
                                          textAlign: TextAlign.center,
                                          style: context.textTheme.titleMedium,
                                        ),
                                        Text(
                                          chapter.description,
                                          textAlign: TextAlign.center,
                                          style: context.textTheme.bodySmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          });
                        }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                ...footer,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _howToEnroll(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('How To Enroll', style: context.textTheme.headlineMedium),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          OutlinedButton(
            onPressed: () {
              // TODO: Implement course purchase
            },
            child: Column(
              children: [
                Text(
                  'Buy Course (\$20)',
                  style: context.textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  'Lifetime access for a blazingly low price',
                  style: context.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Text('OR'),
          const SizedBox(height: 16),
          OutlinedButton(
            onPressed: () {
              // TODO: Implement PRO upgrade
            },
            child: Column(
              children: [
                Text(
                  'Upgrade to PRO',
                  style: context.textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  'Unlock all Fireship content && bonus perks',
                  style: context.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _appBadges() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Row(children: [
        RawMaterialButton(
          onPressed: () {
            final url = Uri.parse(
                'https://itunes.apple.com/us/app/fireship/id1462592372?mt=8');
            launchUrl(url, mode: LaunchMode.externalApplication);
          },
          child: SvgPicture.asset(
            'assets/svgs/app_store_badge.svg',
            height: 56,
          ),
        ),
        const SizedBox(width: 16),
        RawMaterialButton(
          onPressed: () {
            final url = Uri.parse(
                'https://play.google.com/store/apps/details?id=io.fireship.quizapp&pcampaignid=MKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1');
            launchUrl(url, mode: LaunchMode.externalApplication);
          },
          child: Image.asset(
            'assets/images/google_play_badge.png',
            height: 56,
          ),
        ),
      ]),
    );
  }
}
