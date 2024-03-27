import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/my_url_button.dart';
import '../../constants/variables.dart';
import '../../core/constants/imageassets.dart';

class Monitoring extends StatefulWidget {
  const Monitoring({Key? key}) : super(key: key);

  @override
  State<Monitoring> createState() => _MonitoringState();
}

class _MonitoringState extends State<Monitoring> {

  List monitoring = [];

  Future readDataMonitor() async {
    var url = "http://10.4.1.208/myphp/mylinks/url_monitor.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        monitoring.addAll(resbody);
      });
    }
  }

  getDataMonitor() async {
    await readDataMonitor();
  }
  @override
  void initState() {
    getDataMonitor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Monitoring System",
      child: InkWell(
        onTap: () {
          Get.defaultDialog(
            buttonColor: Colors.red,
            textCancel: "Close".tr,
            cancelTextColor: Colors.red,
            onCancel: () {
              Get.previousRoute;
            },
            title: "Monitoring System".tr,
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
                itemCount: monitoring.length,
                itemBuilder: (BuildContext context, int index){
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildUrlLaunchButton(
                            '${monitoring[index]['title']}', '${monitoring[index]['myurl']}'),
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
                  AppImageAsset.monitoring,
                ),
              ),
            )),),
    );
  }
}
