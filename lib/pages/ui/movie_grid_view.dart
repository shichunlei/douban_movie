import 'package:douban_movie/models/movie.dart';
import 'package:douban_movie/utils/route_util.dart';
import 'package:douban_movie/utils/utils.dart';
import 'package:douban_movie/widgets/bouncing_view.dart';
import 'package:douban_movie/widgets/image_load_view.dart';
import 'package:douban_movie/widgets/smooth_star_rating.dart';
import 'package:flutter/material.dart';

import '../index.dart';

class MovieGridView extends StatelessWidget {
  final Movie movie;
  final Color textColor;

  MovieGridView(this.movie, {Key key, this.textColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = (Utils.width - 6 * 2 - 5 * 2) / 3;
    double height = width * 383 / 270;

    return BouncingView(
      child: Container(
          width: width,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ImageLoadView(movie.images.medium.toString(),
                    fit: BoxFit.cover, height: height),
                SizedBox(height: 5),
                Text(movie.title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: textColor),
                    maxLines: 1),
                SizedBox(height: 3),
                SmoothStarRating(
                    rating: movie.rating.average / 2.0,
                    size: 18,
                    allowHalfRating: false,
                    color: Colors.deepOrange)
              ])),
      onPressed: () => pushNewPage(context, MovieDetail(movie.id)),
    );
  }
}
