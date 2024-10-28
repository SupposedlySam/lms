import 'package:flutter/material.dart';
import 'package:lms/core/extensions.dart';

enum SectionType { text, unorderedBullets }

class Section extends StatelessWidget {
  const Section({
    required this.title,
    required this.content,
    SectionType? type,
    super.key,
  }) : type = type ?? SectionType.text;

  final String title;
  final List<String> content;
  final SectionType? type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: context.textTheme.headlineLarge),
          ...switch (type) {
            SectionType.text => content.toParagraphs(24),
            SectionType.unorderedBullets => content.toUnorderedBullets(4),
            _ => content.toParagraphs(24),
          }
        ],
      ),
    );
  }
}
