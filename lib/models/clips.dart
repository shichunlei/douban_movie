class Clips {
  String medium;
  String title;
  String subjectId;
  String alt;
  String small;
  String resourceUrl;
  String id;

  static Clips fromMap(Map<String, dynamic> map) {
    Clips clipsListBean = Clips();
    clipsListBean.medium = map['medium'];
    clipsListBean.title = map['title'];
    clipsListBean.subjectId = map['subject_id'];
    clipsListBean.alt = map['alt'];
    clipsListBean.small = map['small'];
    clipsListBean.resourceUrl = map['resource_url'];
    clipsListBean.id = map['id'];
    return clipsListBean;
  }

  static List<Clips> fromMapList(dynamic mapList) {
    List<Clips> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  @override
  String toString() {
    return 'Clips{medium: $medium, title: $title, subject_id: $subjectId, alt: $alt, small: $small, resource_url: $resourceUrl, id: $id}';
  }
}
