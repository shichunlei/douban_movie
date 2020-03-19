import 'rating.dart';

import 'author.dart';

class Reviews {
  String createdAt;
  String title;
  String updatedAt;
  String shareUrl;
  String summary;
  String content;
  String alt;
  String id;
  String subjectId;
  int usefulCount;
  int uselessCount;
  int commentsCount;
  Author author;
  Rating rating;

  static Reviews fromMap(Map<String, dynamic> map) {
    Reviews reviews = new Reviews();
    reviews.createdAt = map['created_at'];
    reviews.title = map['title'];
    reviews.updatedAt = map['updated_at'];
    reviews.shareUrl = map['share_url'];
    reviews.summary = map['summary'];
    reviews.content = map['content'];
    reviews.alt = map['alt'];
    reviews.id = map['id'];
    reviews.subjectId = map['subject_id'];
    reviews.usefulCount = map['useful_count'];
    reviews.uselessCount = map['useless_count'];
    reviews.commentsCount = map['comments_count'];
    reviews.author =
        map['author'] == null ? null : Author.fromMap(map['author']);
    reviews.rating =
        map['rating'] == null ? null : Rating.fromMap(map['rating']);
    return reviews;
  }

  static List<Reviews> fromMapList(dynamic mapList) {
    List<Reviews> list = new List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}
