import 'package:douban_movie/models/reviews.dart';
import 'package:douban_movie/widgets/smooth_star_rating.dart';
import 'package:flutter/material.dart';

import '../../res/styles.dart';

class ItemComment extends StatelessWidget {
  final Reviews comment;
  final Color background;

  const ItemComment({
    Key key,
    this.comment,
    this.background = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(comment.author.avatar),
                radius: 16.0,
              ),
              Gaps.hGap10,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    comment.author.name,
                    style: TextStyles.textWhiteBold14,
                  ),
                  Gaps.vGap3,
                  Row(
                    children: <Widget>[
                      SmoothStarRating(
                        rating: comment.rating.value == 0
                            ? 0.0
                            : comment.rating.value,
                        size: 20,
                        allowHalfRating: false,
                      ),
                      Gaps.hGap10,
                      Text(
                        comment.createdAt,
                        style: TextStyles.textWhiteBold12,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Gaps.vGap8,
          Text(
            comment.content,
            style: TextStyles.textWhite14,
          ),
          Gaps.vGap8,
          Row(
            children: <Widget>[
              Icon(
                Icons.thumb_up,
                color: Colors.white,
                size: 12,
              ),
              Gaps.hGap5,
              Text(
                '${comment.usefulCount}',
                style: TextStyles.textStyle(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
