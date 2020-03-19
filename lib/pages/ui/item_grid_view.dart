import 'package:douban_movie/models/movie.dart';
import 'package:douban_movie/utils/route_util.dart';
import 'package:douban_movie/widgets/bouncing_view.dart';
import 'package:douban_movie/widgets/image_load_view.dart';
import 'package:flutter/material.dart';

import '../index.dart';

class ItemGridView extends StatelessWidget {
  final List<Movie> movies;

  ItemGridView({Key key, this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(6.0),

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        childAspectRatio: 270 / 383,
      ),
      shrinkWrap: true,
      primary: false,

      itemBuilder: (context, index) {
        return BouncingView(
          //点击事件
          onPressed: () => pushNewPage(context, MovieDetail(movies[index].id)),
          child: ImageLoadView(movies[index].images.medium.toString()),
        );
      },

      /// 表示网格的单元格总数。
      itemCount: movies.length,
    );
  }
}
