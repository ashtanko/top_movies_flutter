import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_movies_flutter/generated/l10n.dart';
import 'package:top_movies_flutter/index.dart';

class MovieListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieListBloc, MovieListState>(
      builder: (context, state) => AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: state.map(
          initial: (state) => const SizedBox(),
          loading: (state) => const Center(child: CircularProgressIndicator()),
          emptyList: (state) => Text(S.of(context).emptyList),
          loaded: (state) => ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) => MovieListItem(
              movie: state.movies[index],
              onTap: () {
                print('click');
              },
            ),
            itemCount: state.movies.length,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                color: Colors.black12,
                height: 1,
                thickness: 1,
              );
            },
          ),
          error: (state) => ErrorScreen(),
        ),
      ),
    );
  }
}
