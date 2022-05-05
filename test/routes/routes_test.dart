import 'package:flutter/material.dart';
import 'package:top_movies_flutter/index.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Routes Tests', () {
    group('generateRoute', () {
      test('returns settings route', () {
        final expected = Settings.routeName;
        final route = Routes.generateRoute(
          const RouteSettings(name: Settings.routeName),
        );
        expect(route.settings.name, expected);
      });

      test('returns email list screen route', () {
        final expected = EmailListScreen.routeName;
        final route = Routes.generateRoute(
          const RouteSettings(name: EmailListScreen.routeName),
        );
        expect(route.settings.name, expected);
      });

      test('returns error screen route', () {
        final expected = 'unknown';
        final route = Routes.generateRoute(
          const RouteSettings(name: 'unknown'),
        );
        expect(route.settings.name, expected);
      });
    });
  });
}
