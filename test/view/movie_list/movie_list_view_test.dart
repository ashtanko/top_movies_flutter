import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:top_movies_flutter/generated/l10n.dart';
import 'package:top_movies_flutter/index.dart';

import '../../helpers/data.dart';

class MockMovieListBloc extends MockBloc<MovieListEvent, MovieListState>
    implements MovieListBloc {}

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
          child: MovieListView(),
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

  group('Movie List View Tests', () {
    testWidgets(
        'renders SizedBox '
        'when movie list state is initial', (tester) async {
      when(() => movieListBloc.state).thenReturn(const InitialMovieListState());

      await tester.pumpList(movieListBloc);
      await tester.pump();

      expect(find.byType(SizedBox), findsOneWidget);
    });

    testWidgets(
        'renders CircularProgressIndicator '
        'when movie list state is loading', (tester) async {
      when(() => movieListBloc.state).thenReturn(const LoadingMovieListState());

      await tester.pumpList(movieListBloc);
      await tester.pump();

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets(
        'renders empty list text '
        'when movie list state is success but with 0 items', (tester) async {
      when(() => movieListBloc.state).thenReturn(const EmptyMovieListState());
      await tester.pumpList(movieListBloc);
      await tester.pumpAndSettle();

      expect(find.text('Empty list'), findsOneWidget);
    });

    testWidgets('renders 1 item', (tester) async {
      when(() => movieListBloc.state).thenReturn(
        LoadedMovieListState(
          movies: [
            mockMovies.first,
          ],
        ),
      );
      await tester.pumpList(movieListBloc);
      // https://stackoverflow.com/questions/67186472/error-pumpandsettle-timed-out-maybe-due-to-riverpod
      for (var i = 0; i < 5; i++) {
        await tester.pump(const Duration(seconds: 1));
      }

      expect(find.byType(MovieListItem), findsNWidgets(1));
    });

    testWidgets('renders item with icons', (tester) async {
      when(() => movieListBloc.state)
          .thenReturn(LoadedMovieListState(movies: [mockMovies.first]));
      await tester.pumpList(movieListBloc);
      for (var i = 0; i < 5; i++) {
        await tester.pump(const Duration(seconds: 1));
      }

      expect(find.byType(MovieListItem), findsNWidgets(1));
      expect(find.byType(Icon), findsNWidgets(2));
      expect(find.byType(IconButton), findsNWidgets(2));
    });

    testWidgets('renders error text', (tester) async {
      when(() => movieListBloc.state).thenReturn(const ErrorMovieListState());
      await tester.pumpList(movieListBloc);
      await tester.pumpAndSettle();

      expect(find.text('Error'), findsOneWidget);
    });
  });
}
