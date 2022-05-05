import 'package:flutter/material.dart';
import 'package:top_movies_flutter/constants/index.dart';
import 'package:top_movies_flutter/generated/colors.gen.dart';

class BottomSheetDialogIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: UiSize.bottomSheetTopIconWidth,
      height: UiSize.bottomSheetTopIconHeight,
      child: Card(
        shadowColor: Colors.transparent,
        color: ColorName.bottomSheetTopIconColor, //Center
      ), //Card
    );
  }
}
