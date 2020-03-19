import 'author.dart';

class Photos {
  String thumb;
  String icon;
  String createdAt;
  String albumId;
  String cover;
  String id;
  String prevPhoto;
  String albumUrl;
  String image;
  String alt;
  String albumTitle;
  String nextPhoto;
  String subjectId;
  String desc;
  int photosCount;
  int commentsCount;
  int recsCount;
  int position;
  Author author;

  static Photos fromMap(Map<String, dynamic> map) {
    Photos photos = Photos();
    photos.thumb = map['thumb'];
    photos.icon = map['icon'];
    photos.createdAt = map['created_at'];
    photos.albumId = map['album_id'];
    photos.cover = map['cover'];
    photos.id = map['id'];
    photos.prevPhoto = map['prev_photo'];
    photos.albumUrl = map['album_url'];
    photos.image = map['image'];
    photos.alt = map['alt'];
    photos.albumTitle = map['album_title'];
    photos.nextPhoto = map['next_photo'];
    photos.subjectId = map['subject_id'];
    photos.desc = map['desc'];
    photos.photosCount = map['photos_count'];
    photos.commentsCount = map['comments_count'];
    photos.recsCount = map['recs_count'];
    photos.position = map['position'];
    photos.author =
    map['author'] == null ? null : Author.fromMap(map['author']);
    return photos;
  }

  static List<Photos> fromMapList(dynamic mapList) {
    List<Photos> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  @override
  String toString() {
    return 'Photos{thumb: $thumb, icon: $icon, created_at: $createdAt, album_id: $albumId, cover: $cover, id: $id, prev_photo: $prevPhoto, album_url: $albumUrl, image: $image, alt: $alt, album_title: $albumTitle, next_photo: $nextPhoto, subject_id: $subjectId, desc: $desc, photos_count: $photosCount, comments_count: $commentsCount, recs_count: $recsCount, position: $position, author: $author}';
  }
}
