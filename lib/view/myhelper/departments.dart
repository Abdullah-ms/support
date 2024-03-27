import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/my_url_button.dart';
import '../../constants/variables.dart';
import '../../core/constants/imageassets.dart';

class Depts extends StatefulWidget {
  const Depts({Key? key}) : super(key: key);

  @override
  State<Depts> createState() => _DeptsState();
}

class _DeptsState extends State<Depts> {
  List deptsTitles = [];

  Future readDataDeptsTitles() async {
    var url = "http://10.4.1.208/myphp/learning/depts.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        deptsTitles.addAll(resbody);
      });
    }
  }

  getDeptsTitles() async {
    await readDataDeptsTitles();
  }

  @override
  void initState() {
    getDeptsTitles();
    getDeptsSales();
    getDeptsAccess();
    getDeptsnoc();
    getDeptsSupport();
    getDeptsFOC();
    super.initState();
  }

//--------------
  List deptsSales = [];

  Future readDataDeptsSales() async {
    var url = "http://10.4.1.208/myphp/newDepts/sales.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        deptsSales.addAll(resbody);
      });
    }
  }

  getDeptsSales() async {
    await readDataDeptsSales();
  }

//--------------
  List deptsAccess = [];

  Future readDataDeptsAccess() async {
    var url = "http://10.4.1.208/myphp/newDepts/access.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        deptsAccess.addAll(resbody);
      });
    }
  }

  getDeptsAccess() async {
    await readDataDeptsAccess();
  }

//--------------
  List deptsnoc = [];

  Future readDataDeptsnoc() async {
    var url = "http://10.4.1.208/myphp/newDepts/noc.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        deptsnoc.addAll(resbody);
      });
    }
  }

  getDeptsnoc() async {
    await readDataDeptsnoc();
  }

//--------------

  List deptsSupport = [];

  Future readDataDeptsSupport() async {
    var url = "http://10.4.1.208/myphp/newDepts/support.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        deptsSupport.addAll(resbody);
      });
    }
  }

  getDeptsSupport() async {
    await readDataDeptsSupport();
  }

//--------------

  List deptsFOC = [];

  Future readDataDeptsFOC() async {
    var url = "http://10.4.1.208/myphp/newDepts/foc.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        deptsFOC.addAll(resbody);
      });
    }
  }

  getDeptsFOC() async {
    await readDataDeptsFOC();
  }

//--------------

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Departments",
      child: InkWell(
        onTap: () {
          Get.defaultDialog(
            buttonColor: Colors.red,
            textCancel: "Close".tr,
            cancelTextColor: Colors.red,
            onCancel: () {
              Get.previousRoute;
            },
            title: "Departments".tr,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        Get.defaultDialog(
                          buttonColor: Colors.red,
                          textCancel: "Close".tr,
                          cancelTextColor: Colors.red,
                          onCancel: () {
                            Get.previousRoute;
                          },
                          title: "${deptsTitles[0]['title']}".tr,
                          content: Expanded(
                            child: Container(
                              height: screenHeight,
                              width: screenWidth,
                              margin: const EdgeInsets.all(3),
                              padding: EdgeInsets.all(borderpadding),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: lighttextandtitle,
                                    width: borderwidth),
                              ),
                              child: ListView.builder(
                                  itemCount: deptsSales.length,
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
                                              text:
                                                  "${deptsSales[index]['title']}",
                                            ));
                                          },
                                          "${deptsSales[index]['title']}",
                                          textDirection: TextDirection.rtl,
                                          style:
                                              TextStyle(color: lightbodycolor),
                                        ),
                                        initiallyExpanded: isExpanded,
                                        onExpansionChanged: (bool expanding) {
                                          setState(() {});
                                        },
                                        children: <Widget>[
                                          Text(
                                              "${deptsSales[index]['content']}",
                                              style: TextStyle(
                                                  color: lightbodycolor),
                                              textDirection: TextDirection.rtl),
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ),
                          backgroundColor: lightdialogbackground,
                          titleStyle: TextStyle(color: lightbodycolor),
                        );
                      },
                      icon: Icon(
                        Icons.new_label_rounded,
                        size: cascadeiconsize,
                        color: iconcolor,
                      ),
                      label: Text(
                        '${deptsTitles[0]['title']}',
                        style: TextStyle(fontSize: textsize),
                      ),
                      style: textbuttonStyle,
                    ),
                    TextButton.icon(
                      onPressed: () {
                        Get.defaultDialog(
                          buttonColor: Colors.red,
                          textCancel: "Close".tr,
                          cancelTextColor: Colors.red,
                          onCancel: () {
                            Get.previousRoute;
                          },
                          title: "${deptsTitles[1]['title']}".tr,
                          content: Expanded(
                            child: Container(
                              height: screenHeight,
                              width: screenWidth,
                              margin: const EdgeInsets.all(3),
                              padding: EdgeInsets.all(borderpadding),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: lighttextandtitle,
                                    width: borderwidth),
                              ),
                              child: ListView.builder(
                                  itemCount: deptsAccess.length,
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
                                              text:
                                                  "${deptsAccess[index]['title']}",
                                            ));
                                          },
                                          "${deptsAccess[index]['title']}",
                                          textDirection: TextDirection.rtl,
                                          style:
                                              TextStyle(color: lightbodycolor),
                                        ),
                                        initiallyExpanded: isExpanded,
                                        onExpansionChanged: (bool expanding) {
                                          setState(() {});
                                        },
                                        children: <Widget>[
                                          Text(
                                              "${deptsAccess[index]['content']}",
                                              style: TextStyle(
                                                  color: lightbodycolor),
                                              textDirection: TextDirection.rtl),
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ),
                          backgroundColor: lightdialogbackground,
                          titleStyle: TextStyle(color: lightbodycolor),
                        );
                      },
                      icon: Icon(
                        Icons.new_label_rounded,
                        size: cascadeiconsize,
                        color: iconcolor,
                      ),
                      label: Text(
                        '${deptsTitles[1]['title']}'.tr,
                        style: TextStyle(fontSize: textsize),
                      ),
                      style: textbuttonStyle,
                    ),
                    TextButton.icon(
                      onPressed: () {
                        Get.defaultDialog(
                          buttonColor: Colors.red,
                          textCancel: "Close".tr,
                          cancelTextColor: Colors.red,
                          onCancel: () {
                            Get.previousRoute;
                          },
                          title: "${deptsTitles[2]['title']}".tr,
                          content: Expanded(
                            child: Container(
                              height: screenHeight,
                              width: screenWidth,
                              margin: const EdgeInsets.all(3),
                              padding: EdgeInsets.all(borderpadding),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: lighttextandtitle,
                                    width: borderwidth),
                              ),
                              child: ListView.builder(
                                  itemCount: deptsnoc.length,
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
                                              text:
                                                  "${deptsnoc[index]['title']}",
                                            ));
                                          },
                                          "${deptsnoc[index]['title']}",
                                          textDirection: TextDirection.rtl,
                                          style:
                                              TextStyle(color: lightbodycolor),
                                        ),
                                        initiallyExpanded: isExpanded,
                                        onExpansionChanged: (bool expanding) {
                                          setState(() {});
                                        },
                                        children: <Widget>[
                                          Text("${deptsnoc[index]['content']}",
                                              style: TextStyle(
                                                  color: lightbodycolor),
                                              textDirection: TextDirection.rtl),
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ),
                          backgroundColor: lightdialogbackground,
                          titleStyle: TextStyle(color: lightbodycolor),
                        );
                      },
                      icon: Icon(
                        Icons.new_label_rounded,
                        size: cascadeiconsize,
                        color: iconcolor,
                      ),
                      label: Text(
                        '${deptsTitles[2]['title']}'.tr,
                        style: TextStyle(fontSize: textsize),
                      ),
                      style: textbuttonStyle,
                    ),
                    TextButton.icon(
                      onPressed: () {
                        Get.defaultDialog(
                          buttonColor: Colors.red,
                          textCancel: "Close".tr,
                          cancelTextColor: Colors.red,
                          onCancel: () {
                            Get.previousRoute;
                          },
                          title: "${deptsTitles[3]['title']}".tr,
                          content: Expanded(
                            child: Container(
                              height: screenHeight,
                              width: screenWidth,
                              margin: const EdgeInsets.all(3),
                              padding: EdgeInsets.all(borderpadding),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: lighttextandtitle,
                                    width: borderwidth),
                              ),
                              child: ListView.builder(
                                  itemCount: deptsSupport.length,
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
                                              text:
                                                  "${deptsSupport[index]['title']}",
                                            ));
                                          },
                                          "${deptsSupport[index]['title']}",
                                          textDirection: TextDirection.rtl,
                                          style:
                                              TextStyle(color: lightbodycolor),
                                        ),
                                        initiallyExpanded: isExpanded,
                                        onExpansionChanged: (bool expanding) {
                                          setState(() {});
                                        },
                                        children: <Widget>[
                                          Text(
                                              "${deptsSupport[index]['content']}",
                                              style: TextStyle(
                                                  color: lightbodycolor),
                                              textDirection: TextDirection.rtl),
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ),
                          backgroundColor: lightdialogbackground,
                          titleStyle: TextStyle(color: lightbodycolor),
                        );
                      },
                      icon: Icon(
                        Icons.new_label_rounded,
                        size: cascadeiconsize,
                        color: iconcolor,
                      ),
                      label: Text(
                        '${deptsTitles[3]['title']}'.tr,
                        style: TextStyle(fontSize: textsize),
                      ),
                      style: textbuttonStyle,
                    ),
                    TextButton.icon(
                      onPressed: () {
                        Get.defaultDialog(
                          buttonColor: Colors.red,
                          textCancel: "Close".tr,
                          cancelTextColor: Colors.red,
                          onCancel: () {
                            Get.previousRoute;
                          },
                          title: "${deptsTitles[4]['title']}".tr,
                          content: Expanded(
                            child: Container(
                              height: screenHeight,
                              width: screenWidth,
                              margin: const EdgeInsets.all(3),
                              padding: EdgeInsets.all(borderpadding),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: lighttextandtitle,
                                    width: borderwidth),
                              ),
                              child: ListView.builder(
                                  itemCount: deptsFOC.length,
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
                                              text:
                                                  "${deptsFOC[index]['title']}",
                                            ));
                                          },
                                          "${deptsFOC[index]['title']}",
                                          textDirection: TextDirection.rtl,
                                          style:
                                              TextStyle(color: lightbodycolor),
                                        ),
                                        initiallyExpanded: isExpanded,
                                        onExpansionChanged: (bool expanding) {
                                          setState(() {});
                                        },
                                        children: <Widget>[
                                          Text("${deptsFOC[index]['content']}",
                                              style: TextStyle(
                                                  color: lightbodycolor),
                                              textDirection: TextDirection.rtl),
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ),
                          backgroundColor: lightdialogbackground,
                          titleStyle: TextStyle(color: lightbodycolor),
                        );
                      },
                      icon: Icon(
                        Icons.new_label_rounded,
                        size: cascadeiconsize,
                        color: iconcolor,
                      ),
                      label: Text(
                        '${deptsTitles[4]['title']}'.tr,
                        style: TextStyle(fontSize: textsize),
                      ),
                      style: textbuttonStyle,
                    ),
                  ],
                )),
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
                  AppImageAsset.depts,
                ),
              ),
            )),
      ),
    );
  }
}
