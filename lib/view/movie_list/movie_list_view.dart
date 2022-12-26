import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_movies_flutter/generated/l10n.dart';
import 'package:top_movies_flutter/index.dart';

import 'movie_card.dart';

class MovieListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieListBloc, MovieListState>(
      builder: (context, state) => AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: state.map(
          initial: (state) => const SizedBox(),
          loading: (state) => ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          emptyList: (state) => Text(S.of(context).emptyList),
          loaded: (state) => ListView.builder(
            key: const Key('topMoviesListView'),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) => ItemCard(
              movie: state.movies[index],
            ),
            itemCount: state.movies.length,
          ),
          error: (state) => ErrorScreen(),
        ),
      ),
    );
  }
}
