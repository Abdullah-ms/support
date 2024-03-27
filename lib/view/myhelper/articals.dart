import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants/my_url_button.dart';
import '../../constants/variables.dart';
import '../../core/constants/imageassets.dart';
import '../../core/functions/url_LaunchInBrowserView.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  List articles = [];

  Future readDataArticles() async {
    var url = "http://10.4.1.208/myphp/mydata/articles.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        articles.addAll(resbody);
      });
    }
  }

  getDataArticles() async {
    await readDataArticles();
  }

  @override
  void initState() {
    getDataArticles();
    super.initState();
  }

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Articles",
      child: InkWell(
        onTap: () {
          Get.defaultDialog(
            buttonColor: Colors.red,
            textCancel: "Close".tr,
            cancelTextColor: Colors.red,
            onCancel: () {
              Get.previousRoute;
            },
            title: "Articles".tr,
            content: Expanded(
              child: Container(
                height: screenHeight,
                width: screenWidth,
                margin: const EdgeInsets.all(3),
                padding: EdgeInsets.all(borderpadding),
                decoration: BoxDecoration(
                  color: lightbackground,
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: lighttextandtitle, width: borderwidth),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                        itemCount: articles.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            color: index % 2 == 0
                                ? expandlistcolor1
                                : expandlistcolor2,
                            child: ExpansionTile(
                              // key: PageStorageKey(index),
                              title: SelectableText(
                                showCursor: true,
                                cursorColor: Colors.redAccent,
                                onTap: () {
                                  Clipboard.setData(ClipboardData(
                                    text: "${articles[index]['title']}",
                                  ));
                                },
                                "${articles[index]['title']}",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(color: lightbodycolor),
                              ),
                              initiallyExpanded: isExpanded,
                              onExpansionChanged: (bool expanding) {
                                setState(() {});
                              },
                              children: <Widget>[
                                Text("${articles[index]['content']}",
                                    style: TextStyle(color: lightbodycolor),
                                    textDirection: TextDirection.rtl),
                                TextButton(
                                  onPressed: () {
                                    launchInBrowserView("${articles[index]['myurl']}");
                                  },
                                  child: const Text(
                                    "للمزيد ...",
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          );
                        })),
              ),
            ),
            backgroundColor: lightdialogbackground,
            titleStyle: TextStyle(color: helpertitleTextColor),
          );
        },
        child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(0), // Border radius
              child: ClipOval(
                child: Image.asset(
                  AppImageAsset.articles,
                ),
              ),
            )),
      ),
    );
  }
}
