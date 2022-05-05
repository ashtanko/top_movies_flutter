import 'package:flutter/material.dart';
import 'package:top_movies_flutter/index.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({Key? key, required this.message, this.onTap})
      : super(key: key);

  final Email message;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return message.isFavorite
        ? AppIcons.attachmentFavoriteActive
        : AppIcons.attachmentFavorite;
  }
}
