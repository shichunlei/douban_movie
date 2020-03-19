import 'package:douban_movie/utils/route_util.dart';
import 'package:douban_movie/utils/toast.dart';
import 'package:douban_movie/utils/utils.dart';
import 'package:douban_movie/widgets/image_load_view.dart';
import 'package:douban_movie/widgets/update_dialog.dart';
import 'package:flutter/material.dart';

import '../setting.dart';

class MenuView extends StatelessWidget {
  MenuView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            header(),
            Divider(),
            ListTile(
                title: Text("联系人"),
                leading: Icon(Icons.supervisor_account),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.of(context).pop();
                }),
            Divider(),
            ListTile(
                title: Text('更新'),
                leading: Icon(Icons.update),
                trailing: Icon(Icons.chevron_right),
                onTap: () async {
                  Navigator.of(context).pop();
                  if (Utils.isAndroid) {
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) => UpdateDialog(
                            url: '', savePath: "/storage/emulated/0/app.apk"));
                  } else {
                    Toast.show(context, "去AppStore下载！");
                  }
                }),
            Divider(),
            ListTile(
                title: Text('退出'),
                leading: Icon(Icons.exit_to_app),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.of(context).pop();
                }),
            Divider(),
            ListTile(
                title: Text('设置'),
                leading: Icon(Icons.settings),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.of(context).pop();
                  pushNewPage(context, SettingPage());
                }),
            Divider(),
          ],
        ),
      ),
    );
  }

  Widget header() {
    return UserAccountsDrawerHeader(
      /// 姓名
      accountName: Text('XXXXXXXXXXX'),

      /// 邮箱
      accountEmail: Text('XXXX@qq.com'),

      /// 用户头像
      currentAccountPicture: InkWell(
          child: Hero(
            child: ImageLoadView(
                'http://pic4.zhimg.com/50/v2-236c74303ee2e7da84cab2b21b8ef30b_hd.jpg',
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                width: 80,
                height: 80),
            tag: 'user_avatar',
          ),
          onTap: () {}),
      otherAccountsPictures: <Widget>[
        GestureDetector(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://wx1.sinaimg.cn/bmiddle/0060lm7Tgy1g2qrft0upcj30u01hcwpa.jpg"),
            ),
            onTap: () {}),
        GestureDetector(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://wx1.sinaimg.cn/bmiddle/0060lm7Tgy1g2qrf51edvj30u01hbgse.jpg"),
            ),
            onTap: () {})
      ],

      /// 装饰器 header区域的decoration，通常用来设置背景颜色或者背景图片
      decoration: BoxDecoration(
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(.2), BlendMode.multiply),
            image: NetworkImage(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584594091547&di=1fccc11cced69b52f948ecc0290e2080&imgtype=0&src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20190705%2F22%2F1562336046-jrqNFuLhRx.jpg"),
            fit: BoxFit.cover),
      ),
    );
  }
}
