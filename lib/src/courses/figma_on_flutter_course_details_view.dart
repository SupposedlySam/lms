import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lms/core/extensions.dart';
import 'package:lms/src/components/section.dart';
import 'package:lms/src/components/social_testimonial_card.dart';
import 'package:lms/src/components/video.dart';
import 'package:lms/src/components/video_card.dart';
import 'package:lms/src/components/video_sources.dart';
import 'package:lms/src/data/mock_chapters.dart';
import 'package:url_launcher/url_launcher.dart';

class FigmaOnFlutterCourseDetailsView extends StatelessWidget {
  FigmaOnFlutterCourseDetailsView({super.key});

  static const routeName = '/course/figma-on-flutter';

  final chapters = mockChapters;

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
                  // Temporarily using test video that works on all platforms
                  // Switch back to VideoSources.figmaOnFlutterIntro when you have MP4 URLs
                  uri: VideoSources.testVideo,
                ),
                Section(
                  key: ValueKey('what-will-i-build'),
                  title: 'What will I build?',
                  content: [
                    'This is a project-based course that will teach you how to build a multiple choice quiz app, inspired by apps like Duolingo and QuizUp. The app implements user authentication (Sign in with Google or Apple), tracks quiz progress in Firestore, uses dynamic animations, and shares data between screens.',
                    'A quiz was chosen because it provides a moderate amount of complexity with plenty of variety between learning concepts. My mission is to teach non-trivial concepts without getting bogged down into repetitive or boring tasks.'
                  ],
                ),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Course Videos',
                        style: context.textTheme.headlineMedium),
                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 16),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        final crossAxisCount = context.sizeOf.width < 600
                            ? 1
                            : context.sizeOf.width < 900
                                ? 2
                                : context.sizeOf.width < 1200
                                    ? 3
                                    : 4;

                        return GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio:
                                0.65, // Increased height to prevent overflow
                          ),
                          itemCount: chapters.length,
                          itemBuilder: (context, index) {
                            final chapter = chapters[index];
                            return VideoCard(
                              chapter: chapter,
                              onTap: () {
                                // TODO: Navigate to video detail page
                                debugPrint('Tapped on: ${chapter.title}');
                              },
                            );
                          },
                        );
                      },
                    ),
                  ],
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
