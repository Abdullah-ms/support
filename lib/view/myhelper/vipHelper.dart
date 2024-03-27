import 'dart:convert';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants/my_url_button.dart';
import '../../constants/variables.dart';
import '../../core/constants/imageassets.dart';


class HelperVIP extends StatefulWidget {
  const HelperVIP({Key? key}) : super(key: key);

  @override
  State<HelperVIP> createState() => _HelperVIPState();
}

class _HelperVIPState extends State<HelperVIP> {


  List learnVIP = [];

  Future readDatalearnVIP() async {
    var url = "http://10.4.1.208/myphp/learning/vip.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        learnVIP.addAll(resbody);
      });
    }
  }

  getDatalearnVIP() async {
    await readDatalearnVIP();
  }

  @override
  void initState() {
    getDatalearnVIP();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "VIP",
      child: InkWell(
          onTap: ()  {
            Get.defaultDialog(
              buttonColor: Colors.red,
              textCancel: "Close".tr,
              cancelTextColor: Colors.red,
              onCancel: () {
                Get.previousRoute;
              },
              title: "VIP".tr,
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
                  itemCount: learnVIP.length,
                  itemBuilder: (BuildContext context, int index){
                    return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildUrlLaunchButton(
                              '${learnVIP[index]['title']}', '${learnVIP[index]['myurl']}'),
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
                  AppImageAsset.vipSheet,
                ),
              ),
            )),
      ),
    );
  }
}
