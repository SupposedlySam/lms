import 'package:flutter/foundation.dart';

/// Helper class to manage video sources for different platforms and testing
class VideoSources {
  static const String muxM3u8Base = 'https://stream.mux.com';
  static const String muxMp4Base = 'https://stream.mux.com';

  /// Your actual Mux stream ID
  static const String figmaOnFlutterStreamId =
      'm75Xv3NMdoFZgpoW2GiW4t5rCkq4AD25bLIOcewDM00o';

  /// Test video URLs that work across platforms
  static const Map<String, String> testVideos = {
    'bee':
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'butterfly':
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    'big_buck_bunny':
        'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
  };

  /// Get the best video URL for the current platform
  static Uri getBestVideoUrl(String streamId, {bool forceMP4 = false}) {
    // For web or when forcing MP4, use MP4 format
    if (kIsWeb || forceMP4) {
      return Uri.parse('$muxMp4Base/$streamId.mp4');
    }

    // For native platforms, M3U8 should work better
    return Uri.parse('$muxM3u8Base/$streamId.m3u8');
  }

  /// Get your main course video URL
  static Uri get figmaOnFlutterIntro => getBestVideoUrl(figmaOnFlutterStreamId);

  /// Get a test video URL (guaranteed to work)
  static Uri get testVideo => Uri.parse(testVideos['bee']!);

  /// Get all available test videos
  static Map<String, Uri> get allTestVideos {
    return testVideos.map((key, value) => MapEntry(key, Uri.parse(value)));
  }
}
