import 'movie.dart';

/// title : "热门"
/// subjects : [{"rate":"6.2","cover_x":1200,"title":"银河补习班","url":"https://movie.douban.com/subject/30282387/","playable":true,"cover":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561542089.jpg","id":"30282387","cover_y":1694,"is_new":false},{"rate":"7.7","cover_x":3543,"title":"安娜","url":"https://movie.douban.com/subject/27166976/","playable":false,"cover":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2553320254.jpg","id":"27166976","cover_y":4724,"is_new":false},{"rate":"6.6","cover_x":510,"title":"我的天使","url":"https://movie.douban.com/subject/30141343/","playable":false,"cover":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565435561.jpg","id":"30141343","cover_y":755,"is_new":true}]

class MovieTag {
  String tip;
  String title;
  List<Movie> subjects;
  bool hasMore;

  static MovieTag fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    MovieTag categoryBean = MovieTag();
    categoryBean.tip = map['tip'];
    categoryBean.title = map['title'];
    categoryBean.hasMore = map['has_more'];
    categoryBean.subjects = List()
      ..addAll((map['subjects'] as List ?? []).map((o) => Movie.fromMap(o)));
    return categoryBean;
  }

  Map toJson() => {
        "title": title,
        "tip": tip,
        "has_more": hasMore,
        "subjects": subjects,
      };
}
