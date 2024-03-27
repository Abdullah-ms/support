import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/variables.dart';
import '../../core/constants/imageassets.dart';
import '../../core/functions/url_LaunchInBrowserView.dart';

class Recent extends StatefulWidget {
  const Recent({Key? key}) : super(key: key);

  @override
  State<Recent> createState() => _RecentState();
}

class _RecentState extends State<Recent> {

  List recent = [];

  Future recentData() async {
    var url = "http://10.4.1.208/myphp/mylinks/announcements_recent.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        recent.addAll(resBody);
      });
      return resBody;
    }
  }

  getRecentData() async {
    await recentData();
  }

  @override
  void initState() {
    getRecentData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Latest content",
      child: InkWell(
        onTap: () {
          Get.defaultDialog(
            buttonColor: Colors.red,
            textCancel: "Close".tr,
            cancelTextColor: Colors.red,
            onCancel: () {
              Get.previousRoute;
            },
            title: "Latest content".tr,
            content: Container(
              height: dialoghieght,
              width: dialogwidth,
              margin: const EdgeInsets.all(3),
              padding: EdgeInsets.all(borderpadding),
              decoration: BoxDecoration(
                color: lightbackground,
                borderRadius: BorderRadius.circular(10),
                border:
                Border.all(color: lighttextandtitle, width: borderwidth),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: recent.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton.icon(
                          onPressed: () {
                            launchInBrowserView("${recent[index]['myurl']}");
                          },
                          label: Text(
                            "${recent[index]['title']}",
                            style: TextStyle(fontSize: textsize),
                          ),
                          icon: Icon(
                            Icons.label_important_outline_rounded,
                            size: iconsize,
                            color: iconcolor,
                          ),
                          style: textbuttonStyle,
                        ),
                      ]);
                },
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
                  AppImageAsset.recent,
                ),
              ),
            )),
      ),
    );
  }
}
