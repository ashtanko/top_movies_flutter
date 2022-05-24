import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:top_movies_flutter/domain/entity/movie.dart';
import 'package:top_movies_flutter/index.dart';

class MovieListItem extends StatelessWidget {
  const MovieListItem({
    Key? key,
    required this.movie,
    this.onTap,
  }) : super(key: key);

  final Movie movie;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: GestureDetector(
        onLongPress: () async {
          await HapticFeedback.mediumImpact();
        },
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Paddings.minimum,
              horizontal: Paddings.minimum,
            ),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: Stack(
                    children: [
                      Container(
                        height: 140,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          elevation: 0,
                          color: Colors.black26,
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl: movie.croppedImage(3),
                            placeholder: (context, url) => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            errorWidget: (context, url, error) =>
                                const SizedBox(),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 0,
                            color: Colors.black26,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 6,
                                right: 6,
                                top: 2,
                                bottom: 2,
                              ),
                              child: Text(
                                movie.imDbRating ?? '',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Separator.spacer(),
                Expanded(
                  flex: 9,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: Separator.spaceChildren(
                        space: Space.superSmall,
                        children: [
                          Text(
                            movie.year ?? '',
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: FontSizes.subtitle2,
                                    ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Text(
                            movie.fullTitle ?? '',
                            style:
                                Theme.of(context).textTheme.headline1?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: FontSizes.subtitle1,
                                    ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                          ),
                          Text(
                            movie.crew ?? '',
                            style:
                                Theme.of(context).textTheme.bodyText2?.copyWith(
                                      fontSize: FontSizes.subtitle2,
                                    ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Container(
                    height: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            // TODO Handle more click
                          },
                          icon: Icon(AppIcons.more),
                        ),
                        IconButton(
                          onPressed: () {
                            // TODO Handle bookmark click
                          },
                          icon: const Icon(AppIcons.bookmark),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
