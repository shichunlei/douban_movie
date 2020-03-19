import 'package:douban_movie/models/movie.dart';
import 'package:douban_movie/utils/utils.dart';
import 'package:douban_movie/widgets/bouncing_view.dart';
import 'package:douban_movie/widgets/image_load_view.dart';
import 'package:flutter/material.dart';

import '../../config.dart';
import '../../res/styles.dart';

class ItemSoonView extends StatefulWidget {
  final Movie movie;
  final VoidCallback onTap;

  ItemSoonView(this.movie, {Key key, this.onTap}) : super(key: key);

  @override
  createState() => _ItemSoonViewState();
}

class _ItemSoonViewState extends State<ItemSoonView>
    with AutomaticKeepAliveClientMixin<ItemSoonView> {
  @override
  bool get wantKeepAlive => true;

  Color cardBackgroundColor = Color(0xff35374c);

  @override
  void initState() {
    super.initState();

    getBackgroundColor();
  }

  void getBackgroundColor() async {
    cardBackgroundColor =
        await Utils.getImageDominantColor(widget.movie?.images?.small);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    String desc = '';
    widget.movie.genres.map((genre) {
      desc += genre;
      desc += ' ';
    }).toList();

    return BouncingView(
      child: Card(
        color: cardBackgroundColor,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: new Container(
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: <
                Widget>[
              /// 电影主图
              ImageLoadView(widget.movie?.images?.medium,
                  height: 180, width: 120),
              Gaps.hGap8,

              /// 右侧部分
              Expanded(
                child: Column(

                    /// 垂直居上
                    mainAxisAlignment: MainAxisAlignment.start,

                    /// 水平居左
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      /// 中文名
                      Text(
                        widget.movie?.title,
                        style: TextStyles.textWhiteBold22,
                      ),
                      Gaps.vGap8,

                      /// 上映信息
                      Text(
                        desc,
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                      Gaps.vGap8,

                      /// 演员
                      Wrap(
                          spacing: 5.0,
                          children: widget.movie.casts.map((cast) {
                            return ImageLoadView(
                              cast?.avatars?.small ?? Config.douBanDefaultImage,
                              width: 44.0,
                              height: 44.0,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(22.0)),
                            );
                          }).toList()),
                      Gaps.vGap8,

                      /// 中国大陆上映日期
                      Container(
                          child: Text(
                              '${widget.movie?.mainlandPubDate?.split('-')[1]}月${widget.movie?.mainlandPubDate?.split('-')[2]}日上映',
                              style: TextStyles.textWhite22)),

                      /// 想看
                      RaisedButton(
                        color: Color(0x2affffff),
                        onPressed: () {},
                        elevation: 0,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.favorite,
                                  color: Colors.white, size: 18),
                              Gaps.hGap4,
                              Text('想看', style: TextStyle(color: Colors.white))
                            ]),
                      )
                    ]),
              ),
            ]),
          ),
        ),
      ),
      onPressed: widget.onTap,
    );
  }
}
