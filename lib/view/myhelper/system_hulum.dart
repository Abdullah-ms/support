import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/my_url_button.dart';
import '../../constants/variables.dart';
import '../../core/constants/imageassets.dart';

class HSystem extends StatefulWidget {
  const HSystem({Key? key}) : super(key: key);

  @override
  State<HSystem> createState() => _HSystemState();
}

class _HSystemState extends State<HSystem> {

  List hSystem = [];

  Future readDatahSystem() async {
    var url = "http://10.4.1.208/myphp/mylinks/url_customerservice.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        hSystem.addAll(resbody);
      });
    }
  }

  getDatahSystem() async {
    await readDatahSystem();
  }


  @override
  void initState() {
    getDatahSystem();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Hulum_system",
      child: InkWell(
        onTap: () {
          Get.defaultDialog(
            buttonColor: Colors.red,
            textCancel: "Close".tr,
            cancelTextColor: Colors.red,
            onCancel: () {
              Get.previousRoute;
            },
            title: "H_system".tr,
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
                itemCount: hSystem.length,
                itemBuilder: (BuildContext context, int index){
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildUrlLaunchButton(
                            '${hSystem[index]['title']}', '${hSystem[index]['myurl']}'),
                      ]);
                },
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
                  AppImageAsset.system,
                ),
              ),
            )),),
    );
  }
}
