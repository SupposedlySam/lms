import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lms/core/extensions.dart';

class SocialTestimonialCard extends StatelessWidget {
  const SocialTestimonialCard({
    super.key,
    required this.authorAvatarUrl,
    required this.authorName,
    required this.authorHandle,
    required this.testimonial,
  });

  final String authorAvatarUrl;
  final String authorName;
  final String authorHandle;
  final String testimonial;

  @override
  Widget build(BuildContext context) {
    var author = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(authorAvatarUrl),
        ),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(authorName),
            Text(authorHandle),
          ],
        ),
        Spacer(),
        Icon(FontAwesomeIcons.twitter, size: 20),
      ],
    );
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 320),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(16),
        color: context.theme.colorScheme.surface,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 48.0, horizontal: 32.0),
          child: Column(
            children: [
              author,
              SizedBox(height: 48),
              Text(testimonial),
            ],
          ),
        ),
      ),
    );
  }
}
