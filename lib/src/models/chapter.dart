import 'package:equatable/equatable.dart';

enum ChapterCategory {
  figma('Figma'),
  flutter('Flutter'),
  foundation('Foundation'),
  walkthrough('Walkthrough');

  const ChapterCategory(this.displayName);
  final String displayName;
}

enum ChapterDifficulty {
  beginner('Beginner'),
  intermediate('Intermediate'),
  advanced('Advanced');

  const ChapterDifficulty(this.displayName);
  final String displayName;
}

class Chapter extends Equatable {
  const Chapter({
    required this.id,
    required this.title,
    required this.description,
    required this.videoUri,
    this.generallyAvailable = false, // Default to paid content
    this.progressPercent = 0.0,
    this.category = ChapterCategory.foundation,
    this.difficulty = ChapterDifficulty.beginner,
    this.durationMinutes,
  });

  final String id;
  final String title;
  final String description;
  final Uri videoUri;
  final bool generallyAvailable;
  final double progressPercent; // 0.0 to 1.0
  final ChapterCategory category;
  final ChapterDifficulty difficulty;
  final int? durationMinutes; // Optional video duration

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        videoUri,
        generallyAvailable,
        progressPercent,
        category,
        difficulty,
        durationMinutes,
      ];

  Chapter copyWith({
    String? id,
    String? title,
    String? description,
    Uri? videoUri,
    bool? generallyAvailable,
    double? progressPercent,
    ChapterCategory? category,
    ChapterDifficulty? difficulty,
    int? durationMinutes,
  }) {
    return Chapter(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      videoUri: videoUri ?? this.videoUri,
      generallyAvailable: generallyAvailable ?? this.generallyAvailable,
      progressPercent: progressPercent ?? this.progressPercent,
      category: category ?? this.category,
      difficulty: difficulty ?? this.difficulty,
      durationMinutes: durationMinutes ?? this.durationMinutes,
    );
  }
}
