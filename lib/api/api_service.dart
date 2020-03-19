import 'package:douban_movie/models/base_result.dart';
import 'package:douban_movie/models/celebrity.dart';
import 'package:douban_movie/models/movie.dart';
import 'package:douban_movie/models/photos.dart';
import 'package:douban_movie/models/range.dart';
import 'package:douban_movie/models/reviews.dart';
import 'package:douban_movie/utils/http_utils.dart';

import 'api_url.dart';

class ApiService {
  /// 豆瓣电影首页数据
  static Future<MovieHomeData> getMovieHomeData({String city}) async {
    BaseResult result =
        await HttpUtils().request(ApiUrl.MOVIE_HOME_URL, data: {'city': city});

    if (result.code == '0') {
      return MovieHomeData.fromMap(result.data);
    } else {
      return null;
    }
  }

  /// 豆瓣电影年度榜单
  ///
  /// [year] 年份
  ///
  static Future<RangesData> getMovieRanges(int year) async {
    BaseResult result =
        await HttpUtils().request(ApiUrl.MOVIE_RANGE_URL, data: {'year': year});

    if (result.code == '0') {
      return RangesData.fromMap(result.data);
    } else {
      return null;
    }
  }

  /// 获取正在热映电影
  static Future<List<Movie>> getNowPlayingList(
      {String city, int page = 1, int limit = 20}) async {
    BaseResult result = await HttpUtils().request(ApiUrl.MOVIE_LIST_URL,
        data: {'city': city, 'page': page, 'limit': limit});

    if (result.code == '0') {
      return List()
        ..addAll((result.data as List ?? []).map((o) => Movie.fromMap(o)));
    } else {
      return [];
    }
  }

  /// 获取即将上映电影
  static Future<List<Movie>> getComingList(
      {int page = 1, int limit = 20}) async {
    BaseResult result = await HttpUtils()
        .request(ApiUrl.MOVIE_SOON_URL, data: {"page": page, 'limit': limit});

    if (result.code == '0') {
      return List()
        ..addAll((result.data as List ?? []).map((o) => Movie.fromMap(o)));
    } else {
      return [];
    }
  }

  /// 获取排行榜电影
  static Future<List<Movie>> getRankingList(String url,
      {int start = 0, int count = 20}) async {
    BaseResult result = await HttpUtils().request(url, data: null);

    if (result.code == '0') {
      return List()
        ..addAll((result.data as List ?? []).map((o) => Movie.fromMap(o)));
    } else {
      return [];
    }
  }

  /// 获取 top250 榜单
  static Future<List<Movie>> getTop250List(
      {int page = 1, int limit = 20}) async {
    BaseResult result = await HttpUtils()
        .request(ApiUrl.MOVIE_TOP250_URL, data: {'page': page, 'limit': limit});

    if (result.code == '0') {
      return List()
        ..addAll((result.data as List ?? []).map((o) => Movie.fromMap(o)));
    } else {
      return [];
    }
  }

  /// 根据标签搜索
  static Future<List<Movie>> getSearchListByTag(String tag,
      {int page = 1, int limit = 20, String type = "movie"}) async {
    BaseResult result = await HttpUtils().request(
        ApiUrl.MOVIE_SEARCH_BY_TAG_URL,
        data: {'tag': tag, 'page': page, 'limit': limit, 'type': type});

    if (result.code == '0') {
      return List()
        ..addAll((result.data as List ?? []).map((o) => Movie.fromMap(o)));
    } else {
      return [];
    }
  }

  /// 找电影
  static Future<List<Movie>> getFilterList(
      {int page: 1,
      String range: "1,10",
      bool playable: false,
      bool unwatched: false,
      String yearRange,
      String countries,
      String genres,
      String sort,
      String type,
      String feature}) async {
    BaseResult result =
        await HttpUtils().request(ApiUrl.MOVIE_FILTER_URL, data: {
      'page': page,
      'playable': playable ? 1 : null,
      "range": range,
      "unwatched": unwatched ? 1 : null,
      "year_range": yearRange,
      "countries": countries,
      "genres": genres,
      "sort": sort,
      "type": type,
      "feature": feature
    });

    if (result.code == '0') {
      return List()
        ..addAll((result.data as List ?? []).map((o) => Movie.fromMap(o)));
    } else {
      return [];
    }
  }

  /// 获取电影详情
  static Future<Movie> getMovieDetail(String id) async {
    BaseResult result =
        await HttpUtils().request(ApiUrl.MOVIE_DETAIL_URL, data: {'id': id});
    if (result.code == '0') {
      return Movie.fromMap(result.data);
    } else {
      return null;
    }
  }

  /// 影人详细信息
  static Future<Celebrity> getActorDetail(String actorId) async {
    BaseResult result = await HttpUtils()
        .request(ApiUrl.MOVIE_CELEBRITY_URL, data: {'id': actorId});
    if (result.code == '0') {
      return Celebrity.fromMap(result.data);
    } else {
      return null;
    }
  }

  /// 剧照
  static Future<List<Photos>> getPhotos(String type, String id,
      {int page = 1, int limit = 20}) async {
    BaseResult result = await HttpUtils().request(ApiUrl.MOVIE_PHOTOS_URL,
        data: {'page': page, 'limit': limit, 'type': type, 'id': id});

    if (result.code == '0') {
      return List()
        ..addAll((result.data as List ?? []).map((o) => Photos.fromMap(o)));
    } else {
      return [];
    }
  }

  /// 影人作品
  static Future<List<Movie>> getActorMovies(String actorId,
      {int start = 1, int count = 20}) async {
    BaseResult result = await HttpUtils().request(
        ApiUrl.MOVIE_CELEBRITY_WORKS_URL,
        data: {'page': start, 'limit': count, 'id': actorId});

    if (result.code == '0') {
      return List()
        ..addAll((result.data as List ?? []).map((o) => Movie.fromMap(o)));
    } else {
      return [];
    }
  }

  /// 短评
  static Future<List<Reviews>> getComments(String id,
      {int page = 1, int limit = 20}) async {
    BaseResult result = await HttpUtils().request(ApiUrl.MOVIE_COMMENTS_URL,
        data: {'page': page, 'limit': limit, 'id': id});

    if (result.code == '0') {
      return List()
        ..addAll((result.data as List ?? []).map((o) => Reviews.fromMap(o)));
    } else {
      return [];
    }
  }

  /// 影评
  static Future<List<Reviews>> getReviews(String id,
      {int page = 1, int limit = 20}) async {
    BaseResult result = await HttpUtils().request(ApiUrl.MOVIE_REVIEWS_URL,
        data: {'page': page, 'limit': limit, 'id': id});

    if (result.code == '0') {
      return List()
        ..addAll((result.data as List ?? []).map((o) => Reviews.fromMap(o)));
    } else {
      return [];
    }
  }
}
