import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants/my_url_button.dart';
import '../../constants/variables.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../core/constants/imageassets.dart';
import '../../core/functions/url_LaunchInBrowserView.dart';



class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {


  List notifications = [];

  Future ReadDatanotifications() async {
    var url = "http://10.4.1.208/myphp/mydata/notification.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        notifications.addAll(resbody);
      });
    }
  }

  getDatanotifications() async {
    await ReadDatanotifications();
  }

  @override
  void initState() {
    getDatanotifications();
    super.initState();
  }

//--------------

  bool isExpanded = false;


  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Notifications",
      child: InkWell(
          onTap: () {
            Get.defaultDialog(
              buttonColor: Colors.red,
              textCancel: "Close".tr,
              cancelTextColor: Colors.red,
              onCancel: () {
                Get.previousRoute;
              },
              title: "Notifications",
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
                  child:
                  ListView.builder(
                      itemCount: notifications.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          color: index % 2 == 0 ? expandlistcolor1 : expandlistcolor2,
                          child: ExpansionTile(
                            // key: PageStorageKey(index),
                            title: SelectableText(
                              showCursor: true,
                              cursorColor: Colors.redAccent,
                              onTap: () {
                                Clipboard.setData( ClipboardData(
                                  text: "${notifications[index]['title']}",
                                ));
                              },
                              "${notifications[index]['title']}",
                              textDirection: TextDirection.rtl,
                              style: TextStyle(color: lightbodycolor),
                            ),
                            initiallyExpanded: isExpanded,
                            onExpansionChanged: (bool expanding) {
                              setState(() {
                              });
                            },
                            children: <Widget>[
                              Text("${notifications[index]['content']}" , style: TextStyle(color: lightbodycolor), textDirection: TextDirection.rtl  ),
                              TextButton(onPressed: (){
                                launchInBrowserView('${notifications[index]['myurl']}');
                              }, child: const Text(" Notification Link 🔗" ,style: TextStyle(color: Colors.red , fontSize: 18),) , ),
                            ],
                          ),
                        );
                      })
                ),
              ),
              backgroundColor: lightdialogbackground,
              titleStyle: TextStyle(color: helpertitleTextColor),
            );
          },
          child:  CircleAvatar(
              radius: 25,
              backgroundColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(0), // Border radius
                child: ClipOval(
                  child: Image.asset(
                    AppImageAsset.notification,
                  ),
                ),
              )),),
    );
  }
}
