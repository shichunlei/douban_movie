import 'movie.dart';

/// background_img : "https://img9.doubanio.com/view/activity_page/raw/public/p2826.jpg"
/// title_img : "https://img9.doubanio.com/view/activity_page/raw/public/p2096.jpg"
/// video : "//sv1.doubanio.com/201910171814/c0be034fd7ef82197259daeb66c2d882/2017/mp4ie_annual_4.mp4"
/// title : "豆瓣2017年度电影榜单"
/// year : 2017

class CoverBean {
  String backgroundImg;
  String mobileBackgroundImg;
  String titleImg;
  String video;
  String title;
  int year;

  String primaryColorLight;
  String primaryColorDark;

  int id;
  Movie subject;

  static CoverBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    CoverBean coverBean = CoverBean();
    coverBean.backgroundImg = map['background_img'];
    coverBean.mobileBackgroundImg = map['mobile_background_img'];
    coverBean.titleImg = map['title_img'];
    coverBean.video = map['video'];
    coverBean.title = map['title'];
    coverBean.primaryColorLight = map['primary_color_light'];
    coverBean.primaryColorDark = map['primary_color_dark'];
    coverBean.year = map['year'];
    coverBean.id = map['id'];
    coverBean.subject =
        map['subject'] != null ? Movie.fromMap(map['subject']) : null;
    return coverBean;
  }

  Map toJson() => {
        "background_img": backgroundImg,
        "title_img": titleImg,
        "video": video,
        "title": title,
        "year": year,
        "id": id,
        "subject": subject,
      };
}
