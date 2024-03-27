import 'dart:convert';
import 'package:hovering/hovering.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../constants/my_url_button.dart';
import '../../constants/variables.dart';

class NoServiceNew extends StatefulWidget {
  const NoServiceNew({Key? key}) : super(key: key);

  @override
  State<NoServiceNew> createState() => _NoServiceNewState();
}

class _NoServiceNewState extends State<NoServiceNew> {
//-----------------------------------------------

  List noServiceBefore = [];

  Future readDataBefore() async {
    var url = "http://10.4.1.208/myphp/mydata/noServiceBeforecheck.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noServiceBefore.addAll(resBody);
      });
    }
  }

  getDataBefore() async {
    await readDataBefore();
  }

// 2.1 -------------------------------------------------------

  List noBeforeCheckcompanies = [];

  Future readDataBeforeCheckCompanies() async {
    var url = "http://10.4.1.208/myphp/newNoServiceBeforeCheck/companies.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noBeforeCheckcompanies.addAll(resBody);
      });
    }
  }

  getDataBeforeCheckCompanies() async {
    await readDataBeforeCheckCompanies();
  }

  List noBeforeCheckDisconnected = [];

  Future readDataBeforeCheckDisconnected() async {
    var url =
        "http://10.4.1.208/myphp/newNoServiceBeforeCheck/disconnected.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noBeforeCheckDisconnected.addAll(resBody);
      });
    }
  }

  getDataBeforeCheckDisconnected() async {
    await readDataBeforeCheckDisconnected();
  }

  List noBeforeCheckVipAgent = [];

  Future readDataBeforeCheckVipAgent() async {
    var url = "http://10.4.1.208/myphp/newNoServiceBeforeCheck/vip.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noBeforeCheckVipAgent.addAll(resBody);
      });
    }
  }

  getDataBeforeCheckVipAgent() async {
    await readDataBeforeCheckVipAgent();
  }

// --------------------------------------------------------------

  List noCheckList = [];

  Future readDataCheckList() async {
    var url = "http://10.4.1.208/myphp/newNoService/checklist.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noCheckList.addAll(resBody);
      });
    }
  }

  getDataCheckList() async {
    await readDataCheckList();
  }

  //--------------------------------------

  List noInaccessible = [];

  Future readDataInaccessible() async {
    var url = "http://10.4.1.208/myphp/newNoService/inaccessible.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noInaccessible.addAll(resBody);
      });
    }
  }

  getDataCheckListInaccessible() async {
    await readDataInaccessible();
  }

  //--------------------------------------

  List noMasterProblems = [];

  Future readDataMasterProblems() async {
    var url = "http://10.4.1.208/myphp/mydata/noMasterproblems.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noMasterProblems.addAll(resBody);
      });
    }
  }

  getDataMasterProblems() async {
    await readDataMasterProblems();
  }

  List noMasterProblemsrep = [];

  Future readDataMasterProblemsRep() async {
    var url = "http://10.4.1.208/myphp/newNoServiceMasterproblems/repeater.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noMasterProblemsrep.addAll(resBody);
      });
    }
  }

  getDataMasterProblemsRep() async {
    await readDataMasterProblemsRep();
  }

  List noMasterProblemsSub = [];

  Future readDataMasterProblemsSub() async {
    var url =
        "http://10.4.1.208/myphp/newNoServiceMasterproblems/subrepeater.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noMasterProblemsSub.addAll(resBody);
      });
    }
  }

  getDataMasterProblemsSub() async {
    await readDataMasterProblemsSub();
  }

  //-----------------------

  List noPingToBridge = [];

  Future readDataPingToBridge() async {
    var url = "http://10.4.1.208/myphp/mydata/noPingtobridge.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noPingToBridge.addAll(resBody);
      });
    }
  }

  getDataPingToBridge() async {
    await readDataPingToBridge();
  }

  List noPingToBridgeRep = [];

  Future readDataPingToBridgeRep() async {
    var url = "http://10.4.1.208/myphp/newNoServicePingToBridge/repeater.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noPingToBridgeRep.addAll(resBody);
      });
    }
  }

  getDataPingToBridgeRep() async {
    await readDataPingToBridgeRep();
  }

  List noPingToBridgeSubFiber = [];

  Future readDataPingToBridgeSubFiber() async {
    var url = "http://10.4.1.208/myphp/newNoServicePingToBridge/subfiber.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noPingToBridgeSubFiber.addAll(resBody);
      });
    }
  }

  getDataPingToBridgeSubFiber() async {
    await readDataPingToBridgeSubFiber();
  }

  List noPingToBridgeSubWireless = [];

  Future readDataPingToBridgeSubWireless() async {
    var url =
        "http://10.4.1.208/myphp/newNoServicePingToBridge/subwireless.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noPingToBridgeSubWireless.addAll(resBody);
      });
    }
  }

  getDataPingToBridgeSubWireless() async {
    await readDataPingToBridgeSubWireless();
  }

  //---------------------------

  List noUserCannotConnect = [];

  Future readDataUserCannotConnect() async {
    var url = "http://10.4.1.208/myphp/newNoService/cannotconnect.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noUserCannotConnect.addAll(resBody);
      });
    }
  }

  getDataUserCannotConnect() async {
    await readDataUserCannotConnect();
  }

  //-----------------------

  List noUserOnline = [];

  Future readDataUserOnline() async {
    var url = "http://10.4.1.208/myphp/newNoService/onlineuser.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noUserOnline.addAll(resBody);
      });
    }
  }

  getDataUserOnline() async {
    await readDataUserOnline();
  }

  //-----------------------

  List noBackupNewFiber = [];

  Future readDataBackupNewFiber() async {
    var url = "http://10.4.1.208/myphp/mydata/noBackupnewfiber.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noBackupNewFiber.addAll(resBody);
      });
    }
  }

  getDataBackupNewFiber() async {
    await readDataBackupNewFiber();
  }

  //-----------------------

  List noBackupBackup = [];

  Future readDataBackupBackup() async {
    var url = "http://10.4.1.208/myphp/newNoServiceBackupLink/backup.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noBackupBackup.addAll(resBody);
      });
    }
  }

  getDataBackupBackup() async {
    await readDataBackupBackup();
  }

  //-----------------------

  List noNewFiberNewFiber = [];

  Future readDataNewFiberNewFiber() async {
    var url = "http://10.4.1.208/myphp/newNoServiceBackupLink/newfiber.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noNewFiberNewFiber.addAll(resBody);
      });
    }
  }

  getDataNewFiberNewFiber() async {
    await readDataNewFiberNewFiber();
  }

  //-----------------------

  List noVirtual = [];

  Future readDataVirtual() async {
    var url = "http://10.4.1.208/myphp/newNoService/virtual.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noVirtual.addAll(resBody);
      });
    }
  }

  getDataVirtual() async {
    await readDataVirtual();
  }

  //-----------------------

  List noMaintenance = [];

  Future readDataMaintenance() async {
    var url = "http://10.4.1.208/myphp/newNoService/maintenance.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        noMaintenance.addAll(resBody);
      });
    }
  }

  getDataMaintenance() async {
    await readDataMaintenance();
  }

  //-----------------------

  @override
  void initState() {
    getDataBefore();
    getDataBeforeCheckCompanies();
    getDataBeforeCheckDisconnected();
    getDataBeforeCheckVipAgent();
    getDataCheckList();
    getDataCheckListInaccessible();
    getDataMasterProblems();
    getDataMasterProblemsRep();
    getDataMasterProblemsSub();
    getDataPingToBridge();
    getDataPingToBridgeRep();
    getDataPingToBridgeSubFiber();
    getDataPingToBridgeSubWireless();
    getDataUserCannotConnect();
    getDataUserOnline();
    getDataBackupNewFiber();
    getDataBackupBackup();
    getDataNewFiberNewFiber();
    getDataVirtual();
    getDataMaintenance();
    super.initState();
  }

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.defaultDialog(
          buttonColor: Colors.red,
          textCancel: "Close".tr,
          cancelTextColor: Colors.red,
          onCancel: () {
            Get.previousRoute;
          },
          title: "No Service".tr,
          content: Container(
            margin: EdgeInsets.all(3),
            padding: EdgeInsets.all(borderpadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: lighttextandtitle, width: borderwidth),
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
                      title: "Before Check".tr,
                      content: Container(
                        height: dialoghieght,
                        width: dialogwidth,
                        margin: const EdgeInsets.all(3),
                        padding: EdgeInsets.all(borderpadding),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: lighttextandtitle, width: borderwidth),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton.icon(
                              onPressed: () {
                                Get.defaultDialog(
                                  buttonColor: Colors.blue,
                                  textCancel: "Back".tr,
                                  cancelTextColor: Colors.blue,
                                  onCancel: () {
                                    Get.previousRoute;
                                  },
                                  title: "${noServiceBefore[0]['title']}",
                                  content: Expanded(
                                    child: Container(
                                      height: screenHeight,
                                      width: screenWidth,
                                      margin: const EdgeInsets.all(3),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: lighttextandtitle,
                                            width: borderwidth),
                                      ),
                                      child: ListView.builder(
                                          itemCount: noBeforeCheckcompanies.length,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              color: index % 2 == 0
                                                  ? expandlistcolor1
                                                  : expandlistcolor2,
                                              child: ExpansionTile(
                                                leading: Tooltip(
                                                  message: "copy to clipboard",
                                                  child: IconButton(
                                                      onPressed: () {
                                                        Clipboard.setData(
                                                            ClipboardData(
                                                              text: "${noBeforeCheckcompanies[index]['title']}\n\n" +
                                                                  "${noBeforeCheckcompanies[index]['content']}",
                                                            ));
                                                      },
                                                      icon: Icon(Icons.copy,
                                                          color: Colors.grey)),
                                                ),
                                                expandedCrossAxisAlignment:
                                                CrossAxisAlignment.end,
                                                // key: PageStorageKey(index),
                                                title: SelectableText(
                                                  showCursor: true,
                                                  cursorColor: Colors.redAccent,
                                                  onTap: () {
                                                    Clipboard.setData(ClipboardData(
                                                      text:
                                                      "${noBeforeCheckcompanies[index]['title']}",
                                                    ));
                                                  },
                                                  "${noBeforeCheckcompanies[index]['title']}",
                                                  textDirection: TextDirection.rtl,
                                                  style: TextStyle(
                                                      color: lightbodycolor),
                                                ),
                                                initiallyExpanded: isExpanded,
                                                onExpansionChanged:
                                                    (bool expanding) {
                                                  setState(() {});
                                                },
                                                children: <Widget>[
                                                  SelectableText(
                                                    showCursor: true,
                                                    cursorColor: Colors.redAccent,
                                                    onTap: () {
                                                      Clipboard.setData(
                                                          ClipboardData(
                                                            text:
                                                            "${noBeforeCheckcompanies[index]['content']}",
                                                          ));
                                                    },
                                                    "${noBeforeCheckcompanies[index]['content']}",
                                                    textDirection:
                                                    TextDirection.rtl,
                                                    style: TextStyle(
                                                        color: lightbodycolor),
                                                  ),
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
                                size: iconsize,
                                color: lightsubiconcolor,
                              ),
                              label: Text(
                                '${noServiceBefore[0]['title']}',
                                style: TextStyle(fontSize: textsize),
                              ),
                              style: textbuttonStyle,
                            ),
                            TextButton.icon(
                              onPressed: () {
                                Get.defaultDialog(
                                  buttonColor: Colors.blue,
                                  textCancel: "Back".tr,
                                  cancelTextColor: Colors.blue,
                                  onCancel: () {
                                    Get.previousRoute;
                                  },
                                  title: "${noServiceBefore[1]['title']}",
                                  content: Expanded(
                                    child: Container(
                                      height: screenHeight,
                                      width: screenWidth,
                                      margin: const EdgeInsets.all(3),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: lighttextandtitle,
                                            width: borderwidth),
                                      ),
                                      child: ListView.builder(
                                          itemCount: noBeforeCheckVipAgent.length,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              color: index % 2 == 0
                                                  ? expandlistcolor1
                                                  : expandlistcolor2,
                                              child: ExpansionTile(
                                                leading: Tooltip(
                                                  message: "copy to clipboard",
                                                  child: IconButton(
                                                      onPressed: () {
                                                        Clipboard.setData(
                                                            ClipboardData(
                                                              text: "${noBeforeCheckVipAgent[index]['title']}\n\n" +
                                                                  "${noBeforeCheckVipAgent[index]['content']}",
                                                            ));
                                                      },
                                                      icon: Icon(Icons.copy,
                                                          color: Colors.grey)),
                                                ),
                                                expandedCrossAxisAlignment:
                                                CrossAxisAlignment.end,
                                                // key: PageStorageKey(index),
                                                title: SelectableText(
                                                  showCursor: true,
                                                  cursorColor: Colors.redAccent,
                                                  onTap: () {
                                                    Clipboard.setData(ClipboardData(
                                                      text:
                                                      "${noBeforeCheckVipAgent[index]['title']}",
                                                    ));
                                                  },
                                                  "${noBeforeCheckVipAgent[index]['title']}",
                                                  textDirection: TextDirection.rtl,
                                                  style: TextStyle(
                                                      color: lightbodycolor),
                                                ),
                                                initiallyExpanded: isExpanded,
                                                onExpansionChanged:
                                                    (bool expanding) {
                                                  setState(() {});
                                                },
                                                children: <Widget>[
                                                  SelectableText(
                                                    showCursor: true,
                                                    cursorColor: Colors.redAccent,
                                                    onTap: () {
                                                      Clipboard.setData(
                                                          ClipboardData(
                                                            text:
                                                            "${noBeforeCheckVipAgent[index]['content']}",
                                                          ));
                                                    },
                                                    "${noBeforeCheckVipAgent[index]['content']}",
                                                    textDirection:
                                                    TextDirection.rtl,
                                                    style: TextStyle(
                                                        color: lightbodycolor),
                                                  ),
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
                                size: iconsize,
                                color: lightsubiconcolor,
                              ),
                              label: Text(
                                '${noServiceBefore[1]['title']}',
                                style: TextStyle(fontSize: textsize),
                              ),
                              style: textbuttonStyle,
                            ),
                            TextButton.icon(
                              onPressed: () {
                                Get.defaultDialog(
                                  buttonColor: Colors.blue,
                                  textCancel: "Back".tr,
                                  cancelTextColor: Colors.blue,
                                  onCancel: () {
                                    Get.previousRoute;
                                  },
                                  title: "${noServiceBefore[2]['title']}",
                                  content: Expanded(
                                    child: Container(
                                      height: screenHeight,
                                      width: screenWidth,
                                      margin: const EdgeInsets.all(3),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: lighttextandtitle,
                                            width: borderwidth),
                                      ),
                                      child: ListView.builder(
                                          itemCount:
                                          noBeforeCheckDisconnected.length,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              color: index % 2 == 0
                                                  ? expandlistcolor1
                                                  : expandlistcolor2,
                                              child: ExpansionTile(
                                                leading: Tooltip(
                                                  message: "copy to clipboard",
                                                  child: IconButton(
                                                      onPressed: () {
                                                        Clipboard.setData(
                                                            ClipboardData(
                                                              text: "${noBeforeCheckDisconnected[index]['title']}\n\n" +
                                                                  "${noBeforeCheckDisconnected[index]['content']}",
                                                            ));
                                                      },
                                                      icon: Icon(Icons.copy,
                                                          color: Colors.grey)),
                                                ),
                                                expandedCrossAxisAlignment:
                                                CrossAxisAlignment.end,
                                                // key: PageStorageKey(index),
                                                title: SelectableText(
                                                  showCursor: true,
                                                  cursorColor: Colors.redAccent,
                                                  onTap: () {
                                                    Clipboard.setData(ClipboardData(
                                                      text:
                                                      "${noBeforeCheckDisconnected[index]['title']}",
                                                    ));
                                                  },
                                                  "${noBeforeCheckDisconnected[index]['title']}",
                                                  textDirection: TextDirection.rtl,
                                                  style: TextStyle(
                                                      color: lightbodycolor),
                                                ),
                                                initiallyExpanded: isExpanded,
                                                onExpansionChanged:
                                                    (bool expanding) {
                                                  setState(() {});
                                                },
                                                children: <Widget>[
                                                  SelectableText(
                                                    showCursor: true,
                                                    cursorColor: Colors.redAccent,
                                                    onTap: () {
                                                      Clipboard.setData(
                                                          ClipboardData(
                                                            text:
                                                            "${noBeforeCheckDisconnected[index]['content']}",
                                                          ));
                                                    },
                                                    "${noBeforeCheckDisconnected[index]['content']}",
                                                    textDirection:
                                                    TextDirection.rtl,
                                                    style: TextStyle(
                                                        color: lightbodycolor),
                                                  ),
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
                                size: iconsize,
                                color: lightsubiconcolor,
                              ),
                              label: Text(
                                '${noServiceBefore[2]['title']}',
                                style: TextStyle(fontSize: textsize),
                              ),
                              style: textbuttonStyle,
                            ),
                          ],
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
                    'Before Check'.tr,
                    style: TextStyle(fontSize: textsize),
                  ),
                  style: textbuttonStyle,
                ),
                TextButton.icon(
                  onPressed: () {
                    Get.defaultDialog(
                      buttonColor: Colors.blue,
                      textCancel: "Back".tr,
                      cancelTextColor: Colors.blue,
                      onCancel: () {
                        Get.previousRoute;
                      },
                      title: "Check List",
                      content: Expanded(
                        child: Container(
                          height: screenHeight,
                          width: screenWidth,
                          margin: const EdgeInsets.all(3),
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: lighttextandtitle, width: borderwidth),
                          ),
                          child: ListView.builder(
                              itemCount: noCheckList.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  color: index % 2 == 0
                                      ? expandlistcolor1
                                      : expandlistcolor2,
                                  child: ExpansionTile(
                                    leading: Tooltip(
                                      message: "copy to clipboard",
                                      child: IconButton(
                                          onPressed: () {
                                            Clipboard.setData(ClipboardData(
                                              text: "${noCheckList[index]['title']}\n\n" +
                                                  "${noCheckList[index]['content']}",
                                            ));
                                          },
                                          icon:
                                          Icon(Icons.copy, color: Colors.grey)),
                                    ),
                                    expandedCrossAxisAlignment:
                                    CrossAxisAlignment.end,
                                    // key: PageStorageKey(index),
                                    title: SelectableText(
                                      showCursor: true,
                                      cursorColor: Colors.redAccent,
                                      onTap: () {
                                        Clipboard.setData(ClipboardData(
                                          text: "${noCheckList[index]['title']}",
                                        ));
                                      },
                                      "${noCheckList[index]['title']}",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(color: lightbodycolor),
                                    ),
                                    initiallyExpanded: isExpanded,
                                    onExpansionChanged: (bool expanding) {
                                      setState(() {});
                                    },
                                    children: <Widget>[
                                      SelectableText(
                                        showCursor: true,
                                        cursorColor: Colors.redAccent,
                                        onTap: () {
                                          Clipboard.setData(ClipboardData(
                                            text:
                                            "${noCheckList[index]['content']}",
                                          ));
                                        },
                                        "${noCheckList[index]['content']}",
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: lightbodycolor),
                                      ),
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
                    color: lightsubiconcolor,
                  ),
                  label: Text(
                    'Check List',
                    style: TextStyle(fontSize: textsize),
                  ),
                  style: textbuttonStyle,
                ),
                TextButton.icon(
                  onPressed: () {
                    Get.defaultDialog(
                      buttonColor: Colors.blue,
                      textCancel: "Back".tr,
                      cancelTextColor: Colors.blue,
                      onCancel: () {
                        Get.previousRoute;
                      },
                      title: "Inaccessible (Gateway)",
                      content: Expanded(
                        child: Container(
                          height: screenHeight,
                          width: screenWidth,
                          margin: const EdgeInsets.all(3),
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: lighttextandtitle, width: borderwidth),
                          ),
                          child: ListView.builder(
                              itemCount: noInaccessible.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  color: index % 2 == 0
                                      ? expandlistcolor1
                                      : expandlistcolor2,
                                  child: ExpansionTile(
                                    leading: Tooltip(
                                      message: "copy to clipboard",
                                      child: IconButton(
                                          onPressed: () {
                                            Clipboard.setData(ClipboardData(
                                              text: "${noInaccessible[index]['title']}\n\n" +
                                                  "${noInaccessible[index]['content']}",
                                            ));
                                          },
                                          icon:
                                          Icon(Icons.copy, color: Colors.grey)),
                                    ),
                                    expandedCrossAxisAlignment:
                                    CrossAxisAlignment.end,
                                    // key: PageStorageKey(index),
                                    title: SelectableText(
                                      showCursor: true,
                                      cursorColor: Colors.redAccent,
                                      onTap: () {
                                        Clipboard.setData(ClipboardData(
                                          text: "${noInaccessible[index]['title']}",
                                        ));
                                      },
                                      "${noInaccessible[index]['title']}",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(color: lightbodycolor),
                                    ),
                                    initiallyExpanded: isExpanded,
                                    onExpansionChanged: (bool expanding) {
                                      setState(() {});
                                    },
                                    children: <Widget>[
                                      SelectableText(
                                        showCursor: true,
                                        cursorColor: Colors.redAccent,
                                        onTap: () {
                                          Clipboard.setData(ClipboardData(
                                            text:
                                            "${noInaccessible[index]['content']}",
                                          ));
                                        },
                                        "${noInaccessible[index]['content']}",
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: lightbodycolor),
                                      ),
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
                    color: lightsubiconcolor,
                  ),
                  label: Text(
                    'Inaccessible (Gateway)',
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
                      title: "Master Problems".tr,
                      content: Container(
                        height: dialoghieght,
                        width: dialogwidth,
                        margin: const EdgeInsets.all(3),
                        padding: EdgeInsets.all(borderpadding),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: lighttextandtitle, width: borderwidth),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton.icon(
                              onPressed: () {
                                Get.defaultDialog(
                                  buttonColor: Colors.blue,
                                  textCancel: "Back".tr,
                                  cancelTextColor: Colors.blue,
                                  onCancel: () {
                                    Get.previousRoute;
                                  },
                                  title: "${noMasterProblems[0]['title']}",
                                  content: Expanded(
                                    child: Container(
                                      height: screenHeight,
                                      width: screenWidth,
                                      margin: const EdgeInsets.all(3),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: lighttextandtitle,
                                            width: borderwidth),
                                      ),
                                      child: ListView.builder(
                                          itemCount: noMasterProblemsrep.length,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              color: index % 2 == 0
                                                  ? expandlistcolor1
                                                  : expandlistcolor2,
                                              child: ExpansionTile(
                                                leading: Tooltip(
                                                  message: "copy to clipboard",
                                                  child: IconButton(
                                                      onPressed: () {
                                                        Clipboard.setData(
                                                            ClipboardData(
                                                              text: "${noMasterProblemsrep[index]['title']}\n\n" +
                                                                  "${noMasterProblemsrep[index]['content']}",
                                                            ));
                                                      },
                                                      icon: Icon(Icons.copy,
                                                          color: Colors.grey)),
                                                ),
                                                expandedCrossAxisAlignment:
                                                CrossAxisAlignment.end,
                                                // key: PageStorageKey(index),
                                                title: SelectableText(
                                                  showCursor: true,
                                                  cursorColor: Colors.redAccent,
                                                  onTap: () {
                                                    Clipboard.setData(ClipboardData(
                                                      text:
                                                      "${noMasterProblemsrep[index]['title']}",
                                                    ));
                                                  },
                                                  "${noMasterProblemsrep[index]['title']}",
                                                  textDirection: TextDirection.rtl,
                                                  style: TextStyle(
                                                      color: lightbodycolor),
                                                ),
                                                initiallyExpanded: isExpanded,
                                                onExpansionChanged:
                                                    (bool expanding) {
                                                  setState(() {});
                                                },
                                                children: <Widget>[
                                                  SelectableText(
                                                    showCursor: true,
                                                    cursorColor: Colors.redAccent,
                                                    onTap: () {
                                                      Clipboard.setData(
                                                          ClipboardData(
                                                            text:
                                                            "${noMasterProblemsrep[index]['content']}",
                                                          ));
                                                    },
                                                    "${noMasterProblemsrep[index]['content']}",
                                                    textDirection:
                                                    TextDirection.rtl,
                                                    style: TextStyle(
                                                        color: lightbodycolor),
                                                  ),
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
                                size: iconsize,
                                color: lightsubiconcolor,
                              ),
                              label: Text(
                                '${noMasterProblems[0]['title']}',
                                style: TextStyle(fontSize: textsize),
                              ),
                              style: textbuttonStyle,
                            ),
                            TextButton.icon(
                              onPressed: () {
                                Get.defaultDialog(
                                  buttonColor: Colors.blue,
                                  textCancel: "Back".tr,
                                  cancelTextColor: Colors.blue,
                                  onCancel: () {
                                    Get.previousRoute;
                                  },
                                  title: "${noMasterProblems[1]['title']}",
                                  content: Expanded(
                                    child: Container(
                                      height: screenHeight,
                                      width: screenWidth,
                                      margin: const EdgeInsets.all(3),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: lighttextandtitle,
                                            width: borderwidth),
                                      ),
                                      child: ListView.builder(
                                          itemCount: noMasterProblemsSub.length,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              color: index % 2 == 0
                                                  ? expandlistcolor1
                                                  : expandlistcolor2,
                                              child: ExpansionTile(
                                                leading: Tooltip(
                                                  message: "copy to clipboard",
                                                  child: IconButton(
                                                      onPressed: () {
                                                        Clipboard.setData(
                                                            ClipboardData(
                                                              text: "${noMasterProblemsSub[index]['title']}\n\n" +
                                                                  "${noMasterProblemsSub[index]['content']}",
                                                            ));
                                                      },
                                                      icon: Icon(Icons.copy,
                                                          color: Colors.grey)),
                                                ),
                                                expandedCrossAxisAlignment:
                                                CrossAxisAlignment.end,
                                                // key: PageStorageKey(index),
                                                title: SelectableText(
                                                  showCursor: true,
                                                  cursorColor: Colors.redAccent,
                                                  onTap: () {
                                                    Clipboard.setData(ClipboardData(
                                                      text:
                                                      "${noMasterProblemsSub[index]['title']}",
                                                    ));
                                                  },
                                                  "${noMasterProblemsSub[index]['title']}",
                                                  textDirection: TextDirection.rtl,
                                                  style: TextStyle(
                                                      color: lightbodycolor),
                                                ),
                                                initiallyExpanded: isExpanded,
                                                onExpansionChanged:
                                                    (bool expanding) {
                                                  setState(() {});
                                                },
                                                children: <Widget>[
                                                  SelectableText(
                                                    showCursor: true,
                                                    cursorColor: Colors.redAccent,
                                                    onTap: () {
                                                      Clipboard.setData(
                                                          ClipboardData(
                                                            text:
                                                            "${noMasterProblemsSub[index]['content']}",
                                                          ));
                                                    },
                                                    "${noMasterProblemsSub[index]['content']}",
                                                    textDirection:
                                                    TextDirection.rtl,
                                                    style: TextStyle(
                                                        color: lightbodycolor),
                                                  ),
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
                                size: iconsize,
                                color: lightsubiconcolor,
                              ),
                              label: Text(
                                '${noMasterProblems[1]['title']}',
                                style: TextStyle(fontSize: textsize),
                              ),
                              style: textbuttonStyle,
                            ),
                          ],
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
                    'Master Problems'.tr,
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
                      title: "Ping To Bridge".tr,
                      content: Container(
                        height: dialoghieght,
                        width: dialogwidth,
                        margin: const EdgeInsets.all(3),
                        padding: EdgeInsets.all(borderpadding),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: lighttextandtitle, width: borderwidth),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton.icon(
                              onPressed: () {
                                Get.defaultDialog(
                                  buttonColor: Colors.blue,
                                  textCancel: "Back".tr,
                                  cancelTextColor: Colors.blue,
                                  onCancel: () {
                                    Get.previousRoute;
                                  },
                                  title: "${noPingToBridge[0]['title']}",
                                  content: Expanded(
                                    child: Container(
                                      height: screenHeight,
                                      width: screenWidth,
                                      margin: const EdgeInsets.all(3),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: lighttextandtitle,
                                            width: borderwidth),
                                      ),
                                      child: ListView.builder(
                                          itemCount: noPingToBridgeRep.length,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              color: index % 2 == 0
                                                  ? expandlistcolor1
                                                  : expandlistcolor2,
                                              child: ExpansionTile(
                                                leading: Tooltip(
                                                  message: "copy to clipboard",
                                                  child: IconButton(
                                                      onPressed: () {
                                                        Clipboard.setData(
                                                            ClipboardData(
                                                              text: "${noPingToBridgeRep[index]['title']}\n\n" +
                                                                  "${noPingToBridgeRep[index]['content']}",
                                                            ));
                                                      },
                                                      icon: Icon(Icons.copy,
                                                          color: Colors.grey)),
                                                ),
                                                expandedCrossAxisAlignment:
                                                CrossAxisAlignment.end,
                                                // key: PageStorageKey(index),
                                                title: SelectableText(
                                                  showCursor: true,
                                                  cursorColor: Colors.redAccent,
                                                  onTap: () {
                                                    Clipboard.setData(ClipboardData(
                                                      text:
                                                      "${noPingToBridgeRep[index]['title']}",
                                                    ));
                                                  },
                                                  "${noPingToBridgeRep[index]['title']}",
                                                  textDirection: TextDirection.rtl,
                                                  style: TextStyle(
                                                      color: lightbodycolor),
                                                ),
                                                initiallyExpanded: isExpanded,
                                                onExpansionChanged:
                                                    (bool expanding) {
                                                  setState(() {});
                                                },
                                                children: <Widget>[
                                                  SelectableText(
                                                    showCursor: true,
                                                    cursorColor: Colors.redAccent,
                                                    onTap: () {
                                                      Clipboard.setData(
                                                          ClipboardData(
                                                            text:
                                                            "${noPingToBridgeRep[index]['content']}",
                                                          ));
                                                    },
                                                    "${noPingToBridgeRep[index]['content']}",
                                                    textDirection:
                                                    TextDirection.rtl,
                                                    style: TextStyle(
                                                        color: lightbodycolor),
                                                  ),
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
                                size: iconsize,
                                color: lightsubiconcolor,
                              ),
                              label: Text(
                                '${noPingToBridge[0]['title']}',
                                style: TextStyle(fontSize: textsize),
                              ),
                              style: textbuttonStyle,
                            ),
                            TextButton.icon(
                              onPressed: () {
                                Get.defaultDialog(
                                  buttonColor: Colors.blue,
                                  textCancel: "Back".tr,
                                  cancelTextColor: Colors.blue,
                                  onCancel: () {
                                    Get.previousRoute;
                                  },
                                  title: "${noPingToBridge[1]['title']}",
                                  content: Expanded(
                                    child: Container(
                                      height: screenHeight,
                                      width: screenWidth,
                                      margin: const EdgeInsets.all(3),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: lighttextandtitle,
                                            width: borderwidth),
                                      ),
                                      child: ListView.builder(
                                          itemCount: noPingToBridgeSubFiber.length,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              color: index % 2 == 0
                                                  ? expandlistcolor1
                                                  : expandlistcolor2,
                                              child: ExpansionTile(
                                                leading: Tooltip(
                                                  message: "copy to clipboard",
                                                  child: IconButton(
                                                      onPressed: () {
                                                        Clipboard.setData(
                                                            ClipboardData(
                                                              text: "${noPingToBridgeSubFiber[index]['title']}\n\n" +
                                                                  "${noPingToBridgeSubFiber[index]['content']}",
                                                            ));
                                                      },
                                                      icon: Icon(Icons.copy,
                                                          color: Colors.grey)),
                                                ),
                                                expandedCrossAxisAlignment:
                                                CrossAxisAlignment.end,
                                                // key: PageStorageKey(index),
                                                title: SelectableText(
                                                  showCursor: true,
                                                  cursorColor: Colors.redAccent,
                                                  onTap: () {
                                                    Clipboard.setData(ClipboardData(
                                                      text:
                                                      "${noPingToBridgeSubFiber[index]['title']}",
                                                    ));
                                                  },
                                                  "${noPingToBridgeSubFiber[index]['title']}",
                                                  textDirection: TextDirection.rtl,
                                                  style: TextStyle(
                                                      color: lightbodycolor),
                                                ),
                                                initiallyExpanded: isExpanded,
                                                onExpansionChanged:
                                                    (bool expanding) {
                                                  setState(() {});
                                                },
                                                children: <Widget>[
                                                  SelectableText(
                                                    showCursor: true,
                                                    cursorColor: Colors.redAccent,
                                                    onTap: () {
                                                      Clipboard.setData(
                                                          ClipboardData(
                                                            text:
                                                            "${noPingToBridgeSubFiber[index]['content']}",
                                                          ));
                                                    },
                                                    "${noPingToBridgeSubFiber[index]['content']}",
                                                    textDirection:
                                                    TextDirection.rtl,
                                                    style: TextStyle(
                                                        color: lightbodycolor),
                                                  ),
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
                                size: iconsize,
                                color: lightsubiconcolor,
                              ),
                              label: Text(
                                '${noPingToBridge[1]['title']}',
                                style: TextStyle(fontSize: textsize),
                              ),
                              style: textbuttonStyle,
                            ),
                            TextButton.icon(
                              onPressed: () {
                                Get.defaultDialog(
                                  buttonColor: Colors.blue,
                                  textCancel: "Back".tr,
                                  cancelTextColor: Colors.blue,
                                  onCancel: () {
                                    Get.previousRoute;
                                  },
                                  title: "${noPingToBridge[2]['title']}",
                                  content: Expanded(
                                    child: Container(
                                      height: screenHeight,
                                      width: screenWidth,
                                      margin: const EdgeInsets.all(3),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: lighttextandtitle,
                                            width: borderwidth),
                                      ),
                                      child: ListView.builder(
                                          itemCount:
                                          noPingToBridgeSubWireless.length,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              color: index % 2 == 0
                                                  ? expandlistcolor1
                                                  : expandlistcolor2,
                                              child: ExpansionTile(
                                                leading: Tooltip(
                                                  message: "copy to clipboard",
                                                  child: IconButton(
                                                      onPressed: () {
                                                        Clipboard.setData(
                                                            ClipboardData(
                                                              text: "${noPingToBridgeSubWireless[index]['title']}\n\n" +
                                                                  "${noPingToBridgeSubWireless[index]['content']}",
                                                            ));
                                                      },
                                                      icon: Icon(Icons.copy,
                                                          color: Colors.grey)),
                                                ),
                                                expandedCrossAxisAlignment:
                                                CrossAxisAlignment.end,
                                                // key: PageStorageKey(index),
                                                title: SelectableText(
                                                  showCursor: true,
                                                  cursorColor: Colors.redAccent,
                                                  onTap: () {
                                                    Clipboard.setData(ClipboardData(
                                                      text:
                                                      "${noPingToBridgeSubWireless[index]['title']}",
                                                    ));
                                                  },
                                                  "${noPingToBridgeSubWireless[index]['title']}",
                                                  textDirection: TextDirection.rtl,
                                                  style: TextStyle(
                                                      color: lightbodycolor),
                                                ),
                                                initiallyExpanded: isExpanded,
                                                onExpansionChanged:
                                                    (bool expanding) {
                                                  setState(() {});
                                                },
                                                children: <Widget>[
                                                  SelectableText(
                                                    showCursor: true,
                                                    cursorColor: Colors.redAccent,
                                                    onTap: () {
                                                      Clipboard.setData(
                                                          ClipboardData(
                                                            text:
                                                            "${noPingToBridgeSubWireless[index]['content']}",
                                                          ));
                                                    },
                                                    "${noPingToBridgeSubWireless[index]['content']}",
                                                    textDirection:
                                                    TextDirection.rtl,
                                                    style: TextStyle(
                                                        color: lightbodycolor),
                                                  ),
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
                                size: iconsize,
                                color: lightsubiconcolor,
                              ),
                              label: Text(
                                '${noPingToBridge[2]['title']}',
                                style: TextStyle(fontSize: textsize),
                              ),
                              style: textbuttonStyle,
                            ),
                          ],
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
                    'Ping To Bridge'.tr,
                    style: TextStyle(fontSize: textsize),
                  ),
                  style: textbuttonStyle,
                ),
                TextButton.icon(
                  onPressed: () {
                    Get.defaultDialog(
                      buttonColor: Colors.blue,
                      textCancel: "Back".tr,
                      cancelTextColor: Colors.blue,
                      onCancel: () {
                        Get.previousRoute;
                      },
                      title: "User Can't Connect",
                      content: Expanded(
                        child: Container(
                          height: screenHeight,
                          width: screenWidth,
                          margin: const EdgeInsets.all(3),
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: lighttextandtitle, width: borderwidth),
                          ),
                          child: ListView.builder(
                              itemCount: noUserCannotConnect.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  color: index % 2 == 0
                                      ? expandlistcolor1
                                      : expandlistcolor2,
                                  child: ExpansionTile(
                                    leading: Tooltip(
                                      message: "copy to clipboard",
                                      child: IconButton(
                                          onPressed: () {
                                            Clipboard.setData(ClipboardData(
                                              text: "${noUserCannotConnect[index]['title']}\n\n" +
                                                  "${noUserCannotConnect[index]['content']}",
                                            ));
                                          },
                                          icon:
                                          Icon(Icons.copy, color: Colors.grey)),
                                    ),
                                    expandedCrossAxisAlignment:
                                    CrossAxisAlignment.end,
                                    // key: PageStorageKey(index),
                                    title: SelectableText(
                                      showCursor: true,
                                      cursorColor: Colors.redAccent,
                                      onTap: () {
                                        Clipboard.setData(ClipboardData(
                                          text:
                                          "${noUserCannotConnect[index]['title']}",
                                        ));
                                      },
                                      "${noUserCannotConnect[index]['title']}",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(color: lightbodycolor),
                                    ),
                                    initiallyExpanded: isExpanded,
                                    onExpansionChanged: (bool expanding) {
                                      setState(() {});
                                    },
                                    children: <Widget>[
                                      SelectableText(
                                        showCursor: true,
                                        cursorColor: Colors.redAccent,
                                        onTap: () {
                                          Clipboard.setData(ClipboardData(
                                            text:
                                            "${noUserCannotConnect[index]['content']}",
                                          ));
                                        },
                                        "${noUserCannotConnect[index]['content']}",
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: lightbodycolor),
                                      ),
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
                    color: lightsubiconcolor,
                  ),
                  label: Text(
                    "User Can't Connect",
                    style: TextStyle(fontSize: textsize),
                  ),
                  style: textbuttonStyle,
                ),
                TextButton.icon(
                  onPressed: () {
                    Get.defaultDialog(
                      buttonColor: Colors.blue,
                      textCancel: "Back".tr,
                      cancelTextColor: Colors.blue,
                      onCancel: () {
                        Get.previousRoute;
                      },
                      title: "Online User - No Service",
                      content: Expanded(
                        child: Container(
                          height: screenHeight,
                          width: screenWidth,
                          margin: const EdgeInsets.all(3),
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: lighttextandtitle, width: borderwidth),
                          ),
                          child: ListView.builder(
                              itemCount: noUserOnline.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  color: index % 2 == 0
                                      ? expandlistcolor1
                                      : expandlistcolor2,
                                  child: ExpansionTile(
                                    leading: Tooltip(
                                      message: "copy to clipboard",
                                      child: IconButton(
                                          onPressed: () {
                                            Clipboard.setData(ClipboardData(
                                              text: "${noUserOnline[index]['title']}\n\n" +
                                                  "${noUserOnline[index]['content']}",
                                            ));
                                          },
                                          icon:
                                          Icon(Icons.copy, color: Colors.grey)),
                                    ),
                                    expandedCrossAxisAlignment:
                                    CrossAxisAlignment.end,
                                    // key: PageStorageKey(index),
                                    title: SelectableText(
                                      showCursor: true,
                                      cursorColor: Colors.redAccent,
                                      onTap: () {
                                        Clipboard.setData(ClipboardData(
                                          text: "${noUserOnline[index]['title']}",
                                        ));
                                      },
                                      "${noUserOnline[index]['title']}",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(color: lightbodycolor),
                                    ),
                                    initiallyExpanded: isExpanded,
                                    onExpansionChanged: (bool expanding) {
                                      setState(() {});
                                    },
                                    children: <Widget>[
                                      SelectableText(
                                        showCursor: true,
                                        cursorColor: Colors.redAccent,
                                        onTap: () {
                                          Clipboard.setData(ClipboardData(
                                            text:
                                            "${noUserOnline[index]['content']}",
                                          ));
                                        },
                                        "${noUserOnline[index]['content']}",
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: lightbodycolor),
                                      ),
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
                    color: lightsubiconcolor,
                  ),
                  label: Text(
                    'Online User - No Service',
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
                      title: "Backup Link / New Fiber Link".tr,
                      content: Container(
                        height: dialoghieght,
                        width: dialogwidth,
                        margin: const EdgeInsets.all(3),
                        padding: EdgeInsets.all(borderpadding),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: lighttextandtitle, width: borderwidth),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton.icon(
                              onPressed: () {
                                Get.defaultDialog(
                                  buttonColor: Colors.blue,
                                  textCancel: "Back".tr,
                                  cancelTextColor: Colors.blue,
                                  onCancel: () {
                                    Get.previousRoute;
                                  },
                                  title: "${noBackupNewFiber[0]['title']}",
                                  content: Expanded(
                                    child: Container(
                                      height: screenHeight,
                                      width: screenWidth,
                                      margin: const EdgeInsets.all(3),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: lighttextandtitle,
                                            width: borderwidth),
                                      ),
                                      child: ListView.builder(
                                          itemCount: noBackupBackup.length,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              color: index % 2 == 0
                                                  ? expandlistcolor1
                                                  : expandlistcolor2,
                                              child: ExpansionTile(
                                                leading: Tooltip(
                                                  message: "copy to clipboard",
                                                  child: IconButton(
                                                      onPressed: () {
                                                        Clipboard.setData(
                                                            ClipboardData(
                                                              text: "${noBackupBackup[index]['title']}\n\n" +
                                                                  "${noBackupBackup[index]['content']}",
                                                            ));
                                                      },
                                                      icon: Icon(Icons.copy,
                                                          color: Colors.grey)),
                                                ),
                                                expandedCrossAxisAlignment:
                                                CrossAxisAlignment.end,
                                                // key: PageStorageKey(index),
                                                title: SelectableText(
                                                  showCursor: true,
                                                  cursorColor: Colors.redAccent,
                                                  onTap: () {
                                                    Clipboard.setData(ClipboardData(
                                                      text:
                                                      "${noBackupBackup[index]['title']}",
                                                    ));
                                                  },
                                                  "${noBackupBackup[index]['title']}",
                                                  textDirection: TextDirection.rtl,
                                                  style: TextStyle(
                                                      color: lightbodycolor),
                                                ),
                                                initiallyExpanded: isExpanded,
                                                onExpansionChanged:
                                                    (bool expanding) {
                                                  setState(() {});
                                                },
                                                children: <Widget>[
                                                  SelectableText(
                                                    showCursor: true,
                                                    cursorColor: Colors.redAccent,
                                                    onTap: () {
                                                      Clipboard.setData(
                                                          ClipboardData(
                                                            text:
                                                            "${noBackupBackup[index]['content']}",
                                                          ));
                                                    },
                                                    "${noBackupBackup[index]['content']}",
                                                    textDirection:
                                                    TextDirection.rtl,
                                                    style: TextStyle(
                                                        color: lightbodycolor),
                                                  ),
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
                                size: iconsize,
                                color: lightsubiconcolor,
                              ),
                              label: Text(
                                '${noBackupNewFiber[0]['title']}',
                                style: TextStyle(fontSize: textsize),
                              ),
                              style: textbuttonStyle,
                            ),
                            TextButton.icon(
                              onPressed: () {
                                Get.defaultDialog(
                                  buttonColor: Colors.blue,
                                  textCancel: "Back".tr,
                                  cancelTextColor: Colors.blue,
                                  onCancel: () {
                                    Get.previousRoute;
                                  },
                                  title: "${noBackupNewFiber[1]['title']}",
                                  content: Expanded(
                                    child: Container(
                                      height: screenHeight,
                                      width: screenWidth,
                                      margin: const EdgeInsets.all(3),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: lighttextandtitle,
                                            width: borderwidth),
                                      ),
                                      child: ListView.builder(
                                          itemCount: noNewFiberNewFiber.length,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              color: index % 2 == 0
                                                  ? expandlistcolor1
                                                  : expandlistcolor2,
                                              child: ExpansionTile(
                                                leading: Tooltip(
                                                  message: "copy to clipboard",
                                                  child: IconButton(
                                                      onPressed: () {
                                                        Clipboard.setData(
                                                            ClipboardData(
                                                              text: "${noNewFiberNewFiber[index]['title']}\n\n" +
                                                                  "${noNewFiberNewFiber[index]['content']}",
                                                            ));
                                                      },
                                                      icon: Icon(Icons.copy,
                                                          color: Colors.grey)),
                                                ),
                                                expandedCrossAxisAlignment:
                                                CrossAxisAlignment.end,
                                                // key: PageStorageKey(index),
                                                title: SelectableText(
                                                  showCursor: true,
                                                  cursorColor: Colors.redAccent,
                                                  onTap: () {
                                                    Clipboard.setData(ClipboardData(
                                                      text:
                                                      "${noNewFiberNewFiber[index]['title']}",
                                                    ));
                                                  },
                                                  "${noNewFiberNewFiber[index]['title']}",
                                                  textDirection: TextDirection.rtl,
                                                  style: TextStyle(
                                                      color: lightbodycolor),
                                                ),
                                                initiallyExpanded: isExpanded,
                                                onExpansionChanged:
                                                    (bool expanding) {
                                                  setState(() {});
                                                },
                                                children: <Widget>[
                                                  SelectableText(
                                                    showCursor: true,
                                                    cursorColor: Colors.redAccent,
                                                    onTap: () {
                                                      Clipboard.setData(
                                                          ClipboardData(
                                                            text:
                                                            "${noNewFiberNewFiber[index]['content']}",
                                                          ));
                                                    },
                                                    "${noNewFiberNewFiber[index]['content']}",
                                                    textDirection:
                                                    TextDirection.rtl,
                                                    style: TextStyle(
                                                        color: lightbodycolor),
                                                  ),
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
                                size: iconsize,
                                color: lightsubiconcolor,
                              ),
                              label: Text(
                                '${noBackupNewFiber[1]['title']}',
                                style: TextStyle(fontSize: textsize),
                              ),
                              style: textbuttonStyle,
                            ),
                          ],
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
                    'Backup Link / New Fiber Link'.tr,
                    style: TextStyle(fontSize: textsize),
                  ),
                  style: textbuttonStyle,
                ),
                TextButton.icon(
                  onPressed: () {
                    Get.defaultDialog(
                      buttonColor: Colors.blue,
                      textCancel: "Back".tr,
                      cancelTextColor: Colors.blue,
                      onCancel: () {
                        Get.previousRoute;
                      },
                      title: "Virtual Affiliate",
                      content: Expanded(
                        child: Container(
                          height: screenHeight,
                          width: screenWidth,
                          margin: const EdgeInsets.all(3),
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: lighttextandtitle, width: borderwidth),
                          ),
                          child: ListView.builder(
                              itemCount: noVirtual.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  color: index % 2 == 0
                                      ? expandlistcolor1
                                      : expandlistcolor2,
                                  child: ExpansionTile(
                                    leading: Tooltip(
                                      message: "copy to clipboard",
                                      child: IconButton(
                                          onPressed: () {
                                            Clipboard.setData(ClipboardData(
                                              text: "${noVirtual[index]['title']}\n\n" +
                                                  "${noVirtual[index]['content']}",
                                            ));
                                          },
                                          icon:
                                          Icon(Icons.copy, color: Colors.grey)),
                                    ),
                                    expandedCrossAxisAlignment:
                                    CrossAxisAlignment.end,
                                    // key: PageStorageKey(index),
                                    title: SelectableText(
                                      showCursor: true,
                                      cursorColor: Colors.redAccent,
                                      onTap: () {
                                        Clipboard.setData(ClipboardData(
                                          text: "${noVirtual[index]['title']}",
                                        ));
                                      },
                                      "${noVirtual[index]['title']}",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(color: lightbodycolor),
                                    ),
                                    initiallyExpanded: isExpanded,
                                    onExpansionChanged: (bool expanding) {
                                      setState(() {});
                                    },
                                    children: <Widget>[
                                      SelectableText(
                                        showCursor: true,
                                        cursorColor: Colors.redAccent,
                                        onTap: () {
                                          Clipboard.setData(ClipboardData(
                                            text: "${noVirtual[index]['content']}",
                                          ));
                                        },
                                        "${noVirtual[index]['content']}",
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: lightbodycolor),
                                      ),
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
                    color: lightsubiconcolor,
                  ),
                  label: Text(
                    'Virtual Affiliate',
                    style: TextStyle(fontSize: textsize),
                  ),
                  style: textbuttonStyle,
                ),
                TextButton.icon(
                  onPressed: () {
                    Get.defaultDialog(
                      buttonColor: Colors.blue,
                      textCancel: "Back".tr,
                      cancelTextColor: Colors.blue,
                      onCancel: () {
                        Get.previousRoute;
                      },
                      title: "Point Maintenance",
                      content: Expanded(
                        child: Container(
                          height: screenHeight,
                          width: screenWidth,
                          margin: const EdgeInsets.all(3),
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: lighttextandtitle, width: borderwidth),
                          ),
                          child: ListView.builder(
                              itemCount: noMaintenance.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  color: index % 2 == 0
                                      ? expandlistcolor1
                                      : expandlistcolor2,
                                  child: ExpansionTile(
                                    leading: Tooltip(
                                      message: "copy to clipboard",
                                      child: IconButton(
                                          onPressed: () {
                                            Clipboard.setData(ClipboardData(
                                              text: "${noMaintenance[index]['title']}\n\n" +
                                                  "${noMaintenance[index]['content']}",
                                            ));
                                          },
                                          icon:
                                          Icon(Icons.copy, color: Colors.grey)),
                                    ),
                                    expandedCrossAxisAlignment:
                                    CrossAxisAlignment.end,
                                    // key: PageStorageKey(index),
                                    title: SelectableText(
                                      showCursor: true,
                                      cursorColor: Colors.redAccent,
                                      onTap: () {
                                        Clipboard.setData(ClipboardData(
                                          text: "${noMaintenance[index]['title']}",
                                        ));
                                      },
                                      "${noMaintenance[index]['title']}",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(color: lightbodycolor),
                                    ),
                                    initiallyExpanded: isExpanded,
                                    onExpansionChanged: (bool expanding) {
                                      setState(() {});
                                    },
                                    children: <Widget>[
                                      SelectableText(
                                        showCursor: true,
                                        cursorColor: Colors.redAccent,
                                        onTap: () {
                                          Clipboard.setData(ClipboardData(
                                            text:
                                            "${noMaintenance[index]['content']}",
                                          ));
                                        },
                                        "${noMaintenance[index]['content']}",
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: lightbodycolor),
                                      ),
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
                    color: lightsubiconcolor,
                  ),
                  label: Text(
                    'Point Maintenance',
                    style: TextStyle(fontSize: textsize),
                  ),
                  style: textbuttonStyle,
                ),
              ],
            ),
          ),
          backgroundColor: lightdialogbackground,
          titleStyle: TextStyle(color: lightbodycolor),
        );
      },
      child:
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [

        HoverCrossFadeWidget(
          duration: Duration(milliseconds: 100),
          secondChild: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(92, 84, 112, 1),
                borderRadius: BorderRadius.circular(30),
                shape: BoxShape.rectangle),
            width: 200,
            height: 200,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Color.fromRGBO(92, 84, 112, 1),
                    child: ImageIcon(
                      AssetImage("assets/images/titleNoService.png"),
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Divider(color: Colors.white,),
                  Text(
                    'No Service',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          firstChild: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(92, 84, 112, 1),
                borderRadius: BorderRadius.circular(30),
                shape: BoxShape.rectangle),
            width: 230,
            height: 200,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Color.fromRGBO(92, 84, 112, 1),
                    child: ImageIcon(
                      AssetImage("assets/images/titleNoService.png"),
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Divider(color: Colors.white,),
                  Text(
                    'No Service',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );


  }
}
