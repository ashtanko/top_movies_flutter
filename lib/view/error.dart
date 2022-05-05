import 'package:flutter/material.dart';
import 'package:top_movies_flutter/generated/l10n.dart';

class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(S.of(context).error);
  }
}
