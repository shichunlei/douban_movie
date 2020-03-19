import 'package:douban_movie/api/api_service.dart';
import 'package:douban_movie/models/movie.dart';
import 'package:douban_movie/utils/route_util.dart';
import 'package:douban_movie/widgets/bouncing_view.dart';
import 'package:douban_movie/widgets/image_load_view.dart';
import 'package:flutter/material.dart';
import '../../config.dart';
import '../index.dart';

class ItemClassifyTag extends StatefulWidget {
  final String tag;

  ItemClassifyTag({Key key, this.tag}) : super(key: key);

  @override
  createState() => _ItemClassifyTagState();
}

class _ItemClassifyTagState extends State<ItemClassifyTag>
    with AutomaticKeepAliveClientMixin<ItemClassifyTag> {
  String cover = Config.backgroundImage;

  @override
  void initState() {
    super.initState();

    searchMovieByTag(widget.tag);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BouncingView(
      child: Stack(
        children: <Widget>[
          ImageLoadView(
            cover,
            width: double.infinity,
            height: double.infinity,
            borderRadius: BorderRadius.circular(3.0),
          ),
          Opacity(
            opacity: 0.5,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(3))),
            ),
          ),
          Center(
            child: Text(
              widget.tag,
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ],
      ),
      onPressed: () => pushNewPage(context, MovieTagListView(widget.tag)),
    );
  }

  void searchMovieByTag(String tag) async {
    List<Movie> movies =
        await ApiService.getSearchListByTag(tag, page: 0, limit: 1);

    if (movies != null && movies.isNotEmpty) {
      setState(() {
        cover = movies?.first?.images?.small.toString();
        print(cover);
      });
    }
  }

  @override
  bool get wantKeepAlive => true;
}
