import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/my_url_button.dart';
import '../../constants/variables.dart';
import '../../core/constants/imageassets.dart';

class MyTools extends StatefulWidget {
  const MyTools({Key? key}) : super(key: key);

  @override
  State<MyTools> createState() => _MyToolsState();
}

class _MyToolsState extends State<MyTools> {

  List EmployeeTools = [];

  Future readDataEmployeeTools() async {
    var url = "http://10.4.1.208/myphp/mylinks/url_employeetools.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        EmployeeTools.addAll(resbody);
      });
    }
  }

  getDataEmployeeTools() async {
    await readDataEmployeeTools();
  }

  @override
  void initState() {
    getDataEmployeeTools();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Employee tools",
      child: InkWell(
        onTap: () {
          Get.defaultDialog(
            buttonColor: Colors.red,
            textCancel: "Close".tr,
            cancelTextColor: Colors.red,
            onCancel: () {
              Get.previousRoute;
            },
            title: "Tools".tr,
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
                itemCount: EmployeeTools.length,
                itemBuilder: (BuildContext context, int index){
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildUrlLaunchButton(
                            '${EmployeeTools[index]['title']}', '${EmployeeTools[index]['myurl']}'),
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
                  AppImageAsset.tools,
                ),
              ),
            )),),
    );
  }
}
