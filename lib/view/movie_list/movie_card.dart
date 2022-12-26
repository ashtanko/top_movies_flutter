import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:top_movies_flutter/domain/entity/movie.dart';

final TextStyle kHeading6 = GoogleFonts.poppins(
  fontSize: 19,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.15,
);

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.movie,
  }) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () async {
        await HapticFeedback.mediumImpact();
      },
      child: Card(
        shadowColor: Colors.transparent,
        child: InkWell(
          onTap: () {
            // TODO
          },
          child: Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: movie.croppedImage(0),
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title ?? '-',
                      overflow: TextOverflow.ellipsis,
                      style: kHeading6,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 2.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Text(movie.releaseDate!.split('-')[0]),
                        ),
                        const SizedBox(width: 16.0),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18.0,
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          (movie.voteAverage! / 2).toStringAsFixed(1),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      movie.overview ?? '-',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
