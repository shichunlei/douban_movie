import 'package:douban_movie/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text('设置')),
      body: Container(
        child: Column(
          children: [
            ExpansionTile(
              leading: Icon(Icons.color_lens),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("主题"),
                  Container(
                      color: Color(Provider.of<ThemeProvider>(context).theme),
                      height: 15,
                      width: 15)
                ],
              ),
              children: _itemColors(),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _itemColors() {
    var value = Provider.of<ThemeProvider>(context);

    List<Widget> _colors = [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Wrap(
              spacing: 5,
              runSpacing: 5,
              children: Colors.primaries.map((color) {
                return Material(
                  color: color,
                  child: InkWell(
                    onTap: () => value.setTheme(color.value),
                    child: Container(
                      width: 40,
                      height: 40,
                      child: value.theme == color.value
                          ? Icon(Icons.done)
                          : SizedBox(),
                    ),
                  ),
                );
              }).toList()))
    ];
    return _colors;
  }
}
