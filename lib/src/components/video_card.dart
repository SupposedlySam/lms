import 'package:flutter/material.dart';
import 'package:lms/core/extensions.dart';
import 'package:lms/src/models/chapter.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({
    required this.chapter,
    required this.onTap,
    super.key,
  });

  final Chapter chapter;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with category badge and lock icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _CategoryBadge(category: chapter.category),
                  if (!chapter.generallyAvailable)
                    Icon(
                      Icons.lock_outline,
                      size: 20,
                      color: context.theme.colorScheme.outline,
                    ),
                ],
              ),
              const SizedBox(height: 12),

              // Title and description
              Text(
                chapter.title,
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 6),
              Text(
                chapter.description,
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.theme.colorScheme.onSurfaceVariant,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16),

              // Progress indicator
              _ProgressIndicator(progress: chapter.progressPercent),
            ],
          ),
        ),
      ),
    );
  }
}

class _CategoryBadge extends StatelessWidget {
  const _CategoryBadge({required this.category});

  final ChapterCategory category;

  @override
  Widget build(BuildContext context) {
    Color badgeColor;
    switch (category) {
      case ChapterCategory.figma:
        badgeColor = Colors.purple;
        break;
      case ChapterCategory.flutter:
        badgeColor = Colors.blue;
        break;
      case ChapterCategory.walkthrough:
        badgeColor = Colors.green;
        break;
      case ChapterCategory.foundation:
        badgeColor = context.theme.colorScheme.primary;
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: badgeColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: badgeColor.withValues(alpha: 0.3)),
      ),
      child: Text(
        category.displayName.toUpperCase(),
        style: context.textTheme.labelSmall?.copyWith(
          color: badgeColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _ProgressIndicator extends StatelessWidget {
  const _ProgressIndicator({required this.progress});

  final double progress;

  @override
  Widget build(BuildContext context) {
    if (progress == 0.0) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Progress',
              style: context.textTheme.labelSmall?.copyWith(
                color: context.theme.colorScheme.onSurfaceVariant,
              ),
            ),
            Text(
              '${(progress * 100).round()}%',
              style: context.textTheme.labelSmall?.copyWith(
                color: context.theme.colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        LinearProgressIndicator(
          value: progress,
          backgroundColor:
              context.theme.colorScheme.outline.withValues(alpha: 0.2),
          valueColor: AlwaysStoppedAnimation<Color>(
            context.theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
