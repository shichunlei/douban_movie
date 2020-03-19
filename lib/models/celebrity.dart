import 'avatars.dart';
import 'movie.dart';
import 'photos.dart';

class Celebrity {
  String website;
  String mobileUrl;
  String name;
  String nameEn;
  String gender;
  String summary;
  String birthday;
  String alt;
  String bornPlace;
  String constellation;
  String id;
  Avatars avatars;
  List<String> aka;
  List<String> akaEn;
  List<String> professions;
  List<Photos> photos;
  List<Movie> subjects;

  static Celebrity fromMap(Map<String, dynamic> map) {
    Celebrity celebrity = Celebrity();
    celebrity.website = map['website'];
    celebrity.mobileUrl = map['mobile_url'];
    celebrity.name = map['name'];
    celebrity.nameEn = map['name_en'];
    celebrity.gender = map['gender'];
    celebrity.summary = map['summary'];
    celebrity.birthday = map['birthday'];
    celebrity.alt = map['alt'];
    celebrity.bornPlace = map['born_place'];
    celebrity.constellation = map['constellation'];
    celebrity.id = map['id'];
    celebrity.avatars =
        map['avatars'] == null ? null : Avatars.fromMap(map['avatars']);
    celebrity.photos =
        map['photos'] == null ? [] : Photos.fromMapList(map['photos']);
    celebrity.subjects =
        map['subjects'] == null ? [] : Movie.fromMapList(map['subjects']);

    List<dynamic> aka = map['aka'] == null ? [] : map['aka'];
    celebrity.aka = List();
    celebrity.aka.addAll(aka.map((o) => o.toString()));

    List<dynamic> akaEn = map['aka_en'] == null ? [] : map['aka_en'];
    celebrity.akaEn = List();
    celebrity.akaEn.addAll(akaEn.map((o) => o.toString()));

    List<dynamic> professions =
        map['professions'] == null ? [] : map['professions'];
    celebrity.professions = List();
    celebrity.professions.addAll(professions.map((o) => o.toString()));

    return celebrity;
  }

  static List<Celebrity> fromMapList(dynamic mapList) {
    List<Celebrity> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  @override
  String toString() {
    return '{website: $website, mobile_url: $mobileUrl, name: $name, name_en: $nameEn, gender: $gender, summary: $summary, birthday: $birthday, alt: $alt, born_place: $bornPlace, constellation: $constellation, id: $id, avatars: $avatars, aka: $aka, aka_en: $akaEn, professions: $professions, photos: $photos}';
  }
}
