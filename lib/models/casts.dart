import 'avatars.dart';
class Casts {
  String nameEn;
  String name;
  String alt;
  String id;
  Avatars avatars;

  static Casts fromMap(Map<String, dynamic> map) {
    Casts castsListBean = Casts();
    castsListBean.nameEn = map['name_en'];
    castsListBean.name = map['name'];
    castsListBean.alt = map['alt'];
    castsListBean.id = map['id'];
    castsListBean.avatars =
    map['avatars'] == null ? null : Avatars.fromMap(map['avatars']);
    return castsListBean;
  }

  static List<Casts> fromMapList(dynamic mapList) {
    List<Casts> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  @override
  String toString() {
    return '{name_en: $nameEn, name: $name, alt: $alt, id: $id, avatars: $avatars}';
  }
}