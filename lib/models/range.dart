import 'cover.dart';
import 'movie.dart';

class RangesData {
  CoverBean cover;
  List<RangesBean> ranges;

  static RangesData fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    RangesData data = RangesData();
    data.cover = map['cover'] != null ? CoverBean.fromMap(map['cover']) : null;
    data.ranges = List()
      ..addAll((map['ranges'] as List ?? []).map((o) => RangesBean.fromMap(o)));
    return data;
  }

  Map toJson() => {
        "cover": cover,
        "ranges": ranges,
      };
}

/// info : {"id":591,"background_img":"https://img3.doubanio.com/view/activity_page/raw/public/p2950.jpg","description":"　　多少理想主义者背负着别人的嘲讽往前走，而大他们十倍百倍的人一心想看他们笑话，多少人收到打击后一蹶不振，而只有他们十分之一百分之一的人可以触底反弹，这部电影他蒸馏你的热血，让你血气冲上大脑，然后水从眼里流出来，告诉你要成为这样的人。","left":false,"title":"2017评分最高的外语电影","subject":{"rating":{"average":9,"max":10,"min":0,"details":{"1":0.002013006781351064,"2":0.0030906547952579077,"3":0.049426210341008865,"4":0.295458656701272,"5":0.6500114713811102}},"original_title":"Dangal","playable":true,"is_released":true,"subtype":"movie","id":"26387939","title":"摔跤吧！爸爸","rating_count":906604,"primary_color_light":"a57947","primary_color_dark":"7f5d36","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2457983084.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2457983084.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2457983084.jpg"}}}
/// subjects : [{"id":"26387939","is_released":true,"playable":true,"rating_count":906602,"title":"摔跤吧！爸爸","rating":{"average":9,"max":10,"min":0,"details":{"1":0.002013011222123931,"2":0.0030906616133650707,"3":0.04942631937719087,"4":0.29545930849479707,"5":0.6500106992925231}},"original_title":"Dangal","subtype":"movie","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2457983084.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2457983084.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2457983084.jpg"}},{"id":"26799731","is_released":true,"playable":false,"rating_count":350637,"title":"请以你的名字呼唤我","rating":{"average":8.8,"max":10,"min":0,"details":{"1":0.004697165444605104,"2":0.01127947136212094,"3":0.09679811314835571,"4":0.3322866668377838,"5":0.5549385832071344}},"original_title":"Call Me by Your Name","subtype":"movie","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2505525050.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2505525050.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2505525050.jpg"}},{"id":"26580232","is_released":true,"playable":true,"rating_count":675647,"title":"看不见的客人","rating":{"average":8.8,"max":10,"min":0,"details":{"1":0.001039004095333806,"2":0.0034603868588182884,"3":0.06568222755373739,"4":0.3725288501243993,"5":0.5572895313677112}},"original_title":"Contratiempo","subtype":"movie","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2498971355.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2498971355.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2498971355.jpg"}},{"id":"25980443","is_released":true,"playable":true,"rating_count":307038,"title":"海边的曼彻斯特","rating":{"average":8.6,"max":10,"min":0,"details":{"1":0.0027749008266077816,"2":0.010024817774998534,"3":0.11025996782157257,"4":0.4154404340830777,"5":0.46149987949374344}},"original_title":"Manchester by the Sea","subtype":"movie","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2496940327.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2496940327.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2496940327.jpg"}},{"id":"10512661","is_released":true,"playable":true,"rating_count":298885,"title":"银翼杀手2049","rating":{"average":8.3,"max":10,"min":0,"details":{"1":0.012058149455476187,"2":0.027385114676213258,"3":0.17098884186225471,"4":0.4046941131204309,"5":0.3848737808856249}},"original_title":"Blade Runner 2049","subtype":"movie","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2501864539.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2501864539.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2501864539.jpg"}},{"id":"26761416","is_released":true,"playable":true,"rating_count":232637,"title":"至暗时刻","rating":{"average":8.6,"max":10,"min":0,"details":{"1":0.0021492711821421355,"2":0.006275871851855036,"3":0.09724592390720306,"4":0.43787961502254585,"5":0.4564493180362539}},"original_title":"Darkest Hour","subtype":"movie","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2504277551.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2504277551.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2504277551.jpg"}},{"id":"26607693","is_released":true,"playable":true,"rating_count":480306,"title":"敦刻尔克","rating":{"average":8.4,"max":10,"min":0,"details":{"1":0.007963673158361545,"2":0.014130575091712366,"3":0.13491191032383523,"4":0.43677155813169105,"5":0.4062222832943998}},"original_title":"Dunkirk","subtype":"movie","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2494950714.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2494950714.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2494950714.jpg"}},{"id":"25934014","is_released":true,"playable":true,"rating_count":522887,"title":"爱乐之城","rating":{"average":8.4,"max":10,"min":0,"details":{"1":0.007814307871490398,"2":0.02148074058066083,"3":0.15218967004343195,"4":0.3808547544689388,"5":0.43766052703547803}},"original_title":"La La Land","subtype":"movie","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2395517414.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2395517414.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2395517414.jpg"}},{"id":"26844922","is_released":true,"playable":true,"rating_count":62585,"title":"杰出公民","rating":{"average":8.4,"max":10,"min":0,"details":{"1":0.003403371414875769,"2":0.011184788687385157,"3":0.13263561556283454,"4":0.49166733242789806,"5":0.36110889190700646}},"original_title":"El ciudadano ilustre","subtype":"movie","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2441383861.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2441383861.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2441383861.jpg"}},{"id":"27024903","is_released":true,"playable":true,"rating_count":494897,"title":"天才枪手","rating":{"average":8.2,"max":10,"min":0,"details":{"1":0.0029299025857905787,"2":0.009739400319662476,"3":0.14098085056082377,"4":0.5157760099576275,"5":0.3305738365760956}},"original_title":"ฉลาดเกมส์โกง","subtype":"movie","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2501863104.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2501863104.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2501863104.jpg"}}]

class RangesBean {
  CoverBean info;
  List<Movie> subjects;

  static RangesBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    RangesBean rangesBean = RangesBean();
    rangesBean.info =
        map['info'] != null ? CoverBean.fromMap(map['info']) : null;
    rangesBean.subjects = List()
      ..addAll((map['subjects'] as List ?? []).map((o) => Movie.fromMap(o)));
    return rangesBean;
  }

  Map toJson() => {
        "info": info,
        "subjects": subjects,
      };
}
