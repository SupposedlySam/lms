import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  Size get sizeOf => MediaQuery.sizeOf(this);
}

extension ListStringX on List<String> {
  static const String unorderedListItem = "\u2022 ";

  Iterable<Widget> toParagraphs(double spacing) {
    return expand((paragraph) => [Text(paragraph), SizedBox(height: spacing)]);
  }

  Iterable<Widget> toUnorderedBullets(double spacing) {
    return expand((text) =>
        [Text('$unorderedListItem $text'), SizedBox(height: spacing)]);
  }
}
