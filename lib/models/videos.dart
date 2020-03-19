class Videos {
  String sampleLink;
  String videoId;
  bool needPay;
  Source source;

  static Videos fromMap(Map<String, dynamic> map) {
    Videos videosListBean = Videos();
    videosListBean.sampleLink = map['sample_link'];
    videosListBean.videoId = map['video_id'];
    videosListBean.needPay = map['need_pay'];
    videosListBean.source = Source.fromMap(map['source']);
    return videosListBean;
  }

  static List<Videos> fromMapList(dynamic mapList) {
    List<Videos> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class Source {
  String literal;
  String pic;
  String name;

  static Source fromMap(Map<String, dynamic> map) {
    Source sourceBean = Source();
    sourceBean.literal = map['literal'];
    sourceBean.pic = map['pic'];
    sourceBean.name = map['name'];
    return sourceBean;
  }

  static List<Source> fromMapList(dynamic mapList) {
    List<Source> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  @override
  String toString() {
    return 'SourceBean{literal: $literal, pic: $pic, name: $name}';
  }
}
