import 'package:flutter/material.dart';
import 'package:top_movies_flutter/index.dart';

class MovieItemDialogCell<T> extends StatelessWidget {
  const MovieItemDialogCell({
    Key? key,
    required this.title,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String title;
  final T groupValue, value;
  final ValueChanged<T> onChanged;

  bool get _isChecked => groupValue == value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          children: [
            Icon(
              _isChecked ? AppIcons.iconCheck : null,
              size: IconSizes.themeDialogIconSize,
              color: _isChecked ? Colors.green : null,
            ),
            Separator.spacer(Space.large),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
