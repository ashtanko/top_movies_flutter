import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:top_movies_flutter/generated/l10n.dart';
import 'package:top_movies_flutter/index.dart';

import 'movie_list_view_test.dart';

extension on WidgetTester {
  Future<void> pumpList(MovieListBloc bloc) {
    return pumpWidget(
      MaterialApp(
        localizationsDelegates: [
          const AppLocalizationDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        locale: const Locale('en'),
        home: BlocProvider.value(
          value: bloc,
          child: const MovieListScreen(),
        ),
      ),
    );
  }
}

void main() {
  late MovieListBloc movieListBloc;

  setUp(() {
    movieListBloc = MockMovieListBloc();
  });

  group('Movie List Screen Tests', () {
    testWidgets('renders Movies title', (tester) async {
      when(() => movieListBloc.state).thenReturn(const InitialMovieListState());
      await tester.pumpList(movieListBloc);
      await tester.pump();

      expect(find.text('Movies'), findsOneWidget);
    });
  });
}
