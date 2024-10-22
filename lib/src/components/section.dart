import 'package:flutter/material.dart';
import 'package:lms/core/extensions.dart';

enum SectionType { text, unorderedBullets }

class Section extends StatelessWidget {
  static const String unorderedListItem = "\u2022 ";

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: context.textTheme.headlineLarge),
        ...switch (type) {
          SectionType.text => _toParagraphs(),
          SectionType.unorderedBullets => _toUnorderedBullets(),
          _ => _toParagraphs(),
        }
      ],
    );
  }

  Iterable<Widget> _toParagraphs() {
    return content
        .expand((paragraph) => [Text(paragraph), SizedBox(height: 24)]);
  }

  Iterable<Widget> _toUnorderedBullets() {
    return content.expand(
        (text) => [Text('$unorderedListItem $text'), SizedBox(height: 4)]);
  }
}
