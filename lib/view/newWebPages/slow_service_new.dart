import 'dart:core';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import '../../constants/my_url_button.dart';
import '../../constants/variables.dart';

class SlowServiceNew extends StatefulWidget {
  const SlowServiceNew({Key? key}) : super(key: key);

  @override
  State<SlowServiceNew> createState() => _SlowServiceNewState();
}

class _SlowServiceNewState extends State<SlowServiceNew> {
  List slowBeforeCheckcompanies = [];

  Future readDataBeforeCheckCompanies() async {
    var url = "http://10.4.1.208/myphp/newSlowServiceBeforeCheck/companies.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowBeforeCheckcompanies.addAll(resBody);
      });
    }
  }

  getDataBeforeCheckCompanies() async {
    await readDataBeforeCheckCompanies();
  }

  List slowBeforeCheckDisconnected = [];

  Future readDataBeforeCheckDisconnected() async {
    var url =
        "http://10.4.1.208/myphp/newSlowServiceBeforeCheck/disconnected.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowBeforeCheckDisconnected.addAll(resBody);
      });
    }
  }

  getDataBeforeCheckDisconnected() async {
    await readDataBeforeCheckDisconnected();
  }

  List slowBeforeCheckVipAgent = [];

  Future readDataBeforeCheckVipAgent() async {
    var url = "http://10.4.1.208/myphp/newSlowServiceBeforeCheck/vip.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowBeforeCheckVipAgent.addAll(resBody);
      });
    }
  }

  getDataBeforeCheckVipAgent() async {
    await readDataBeforeCheckVipAgent();
  }

// --------------------------------------------------------------

  List slowCheckListHigh = [];

  Future readDataCheckListHigh() async {
    var url = "http://10.4.1.208/myphp/newSlowServiceChecklist/highimpact.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowCheckListHigh.addAll(resBody);
      });
    }
  }

  getDataCheckListHigh() async {
    await readDataCheckListHigh();
  }

  List slowCheckListNoHigh = [];

  Future readDataCheckListNoHigh() async {
    var url =
        "http://10.4.1.208/myphp/newSlowServiceChecklist/nohighimpact.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowCheckListNoHigh.addAll(resBody);
      });
    }
  }

  getDataCheckListNoHigh() async {
    await readDataCheckListNoHigh();
  }

// -------------------------------------------------------

  List slowPingToBridgeBaghdad = [];

  Future readDataPingToBridgeBaghdad() async {
    var url = "http://10.4.1.208/myphp/newSlowServicePingToBridge/baghdad.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowPingToBridgeBaghdad.addAll(resBody);
      });
    }
  }

  getDataPingToBridgeBaghdad() async {
    await readDataPingToBridgeBaghdad();
  }

  List slowPingToBridgeGovernorates = [];

  Future readDataPingToBridgeGovernorates() async {
    var url =
        "http://10.4.1.208/myphp/newSlowServicePingToBridge/governorates.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowPingToBridgeGovernorates.addAll(resBody);
      });
    }
  }

  getDataPingToBridgeGovernorates() async {
    await readDataPingToBridgeGovernorates();
  }

// -----------------------------------------------------------

  List slowCheckFiberLinkBridge = [];

  Future readDataCheckFiberLinkBridge() async {
    var url = "http://10.4.1.208/myphp/mydata/slowCheckfiberlinkbridge.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowCheckFiberLinkBridge.addAll(resBody);
      });
    }
  }

  getDataCheckFiberLinkBridge() async {
    await readDataCheckFiberLinkBridge();
  }

// 5.1 -------------------------------------------------------
  List slowCheckFiberLinkBridgeNew = [];

  Future readDataCheckFiberLinkBridgeNew() async {
    var url =
        "http://10.4.1.208/myphp/newSlowServiceCheckfiberlinkbridge/checkfiber.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowCheckFiberLinkBridgeNew.addAll(resBody);
      });
    }
  }

  getDataCheckFiberLinkBridgeNew() async {
    await readDataCheckFiberLinkBridgeNew();
  }

//-------------------------------------------------------

  List slowWirelessAndDirectPointsRepeater = [];

  Future readDataWirelessAndDirectPointsRepeater() async {
    var url =
        "http://10.4.1.208/myphp/newSlowServiceWirelessanddirect/repeater.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowWirelessAndDirectPointsRepeater.addAll(resBody);
      });
    }
  }

  getDataWirelessAndDirectPointsRepeater() async {
    await readDataWirelessAndDirectPointsRepeater();
  }

  List slowWirelessAndDirectPointsSub = [];

  Future readDataWirelessAndDirectPointsSub() async {
    var url =
        "http://10.4.1.208/myphp/newSlowServiceWirelessanddirect/subrepeater.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowWirelessAndDirectPointsSub.addAll(resBody);
      });
    }
  }

  getDataWirelessAndDirectPointsSub() async {
    await readDataWirelessAndDirectPointsSub();
  }

//-------------------------------------------------------

  List slowMasterProblemsRep = [];

  Future readDataMasterProblemsRep() async {
    var url =
        "http://10.4.1.208/myphp/newSlowServiceMasterproblems/repeater.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowMasterProblemsRep.addAll(resBody);
      });
    }
  }

  getDataMasterProblemsRep() async {
    await readDataMasterProblemsRep();
  }

  List slowMasterProblemsSub = [];

  Future readDataMasterProblemsSub() async {
    var url =
        "http://10.4.1.208/myphp/newSlowServiceMasterproblems/subrepeater.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowMasterProblemsSub.addAll(resBody);
      });
    }
  }

  getDataMasterProblemsSub() async {
    await readDataMasterProblemsSub();
  }

  List slowMasterProblemsTwoSlaves = [];

  Future readDataMasterProblemsTwoSlaves() async {
    var url =
        "http://10.4.1.208/myphp/newSlowServiceMasterproblems/twoslaves.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowMasterProblemsTwoSlaves.addAll(resBody);
      });
    }
  }

  getDataMasterProblemsTwoSlaves() async {
    await readDataMasterProblemsTwoSlaves();
  }

  List slowMasterProblemsMove = [];

  Future readDataMasterProblemsMove() async {
    var url = "http://10.4.1.208/myphp/newSlowServiceMasterproblems/move.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowMasterProblemsMove.addAll(resBody);
      });
    }
  }

  getDataMasterProblemsMove() async {
    await readDataMasterProblemsMove();
  }

  List slowMasterProblemsHighTraffic = [];

  Future readDataMasterProblemsHighTraffic() async {
    var url =
        "http://10.4.1.208/myphp/newSlowServiceMasterproblems/hightraffic.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowMasterProblemsHighTraffic.addAll(resBody);
      });
    }
  }

  getDataMasterProblemsHighTraffic() async {
    await readDataMasterProblemsHighTraffic();
  }

// -------------------------------------------------------

  List slowCustomerServiceSlave = [];

  Future readDataCustomerServiceSlave() async {
    var url = "http://10.4.1.208/myphp/newSlowServiceCustomerservice/slave.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowCustomerServiceSlave.addAll(resBody);
      });
    }
  }

  getDataCustomerServiceSlave() async {
    await readDataCustomerServiceSlave();
  }

  List slowCustomerServiceHub = [];

  Future readDataCustomerServiceHub() async {
    var url = "http://10.4.1.208/myphp/newSlowServiceCustomerservice/hub.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowCustomerServiceHub.addAll(resBody);
      });
    }
  }

  getDataCustomerServiceHub() async {
    await readDataCustomerServiceHub();
  }

  List slowCustomerServiceSector = [];

  Future readDataCustomerServiceSector() async {
    var url =
        "http://10.4.1.208/myphp/newSlowServiceCustomerservice/sector.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowCustomerServiceSector.addAll(resBody);
      });
    }
  }

  getDataCustomerServiceSector() async {
    await readDataCustomerServiceSector();
  }

  List slowCustomerServiceP2p = [];

  Future readDataCustomerServiceP2p() async {
    var url = "http://10.4.1.208/myphp/newSlowServiceCustomerservice/p2p.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowCustomerServiceP2p.addAll(resBody);
      });
    }
  }

  getDataCustomerServiceP2p() async {
    await readDataCustomerServiceP2p();
  }

  List slowCustomerServiceTri = [];

  Future readDataCustomerServiceTri() async {
    var url =
        "http://10.4.1.208/myphp/newSlowServiceCustomerservice/triangle.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowCustomerServiceTri.addAll(resBody);
      });
    }
  }

  getDataCustomerServiceTri() async {
    await readDataCustomerServiceTri();
  }

// -------------------------------------------------------

  List slowWirelessLinkMimosa = [];

  Future readDataWirelessLinkMimosa() async {
    var url = "http://10.4.1.208/myphp/newSlowServiceWirelesslink/mimosa.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowWirelessLinkMimosa.addAll(resBody);
      });
    }
  }

  getDataWirelessLinkMimosa() async {
    await readDataWirelessLinkMimosa();
  }

  List slowWirelessLinkMikrotik = [];

  Future readDataWirelessLinkMikrotik() async {
    var url = "http://10.4.1.208/myphp/newSlowServiceWirelesslink/mikrotik.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowWirelessLinkMikrotik.addAll(resBody);
      });
    }
  }

  getDataWirelessLinkMikrotik() async {
    await readDataWirelessLinkMikrotik();
  }

  List slowWirelessLinkFullband = [];

  Future readDataWirelessLinkFullband() async {
    var url = "http://10.4.1.208/myphp/newSlowServiceWirelesslink/fullband.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        slowWirelessLinkFullband.addAll(resBody);
      });
    }
  }

  getDataWirelessLinkFullband() async {
    await readDataWirelessLinkFullband();
  }

//
  //---------------------------------------

  List checkByScript = [];

  Future readDataCheckByScript() async {
    var url = "http://10.4.1.208/myphp/newSlowService/script.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        checkByScript.addAll(resBody);
      });
    }
  }

  getDataCheckByScript() async {
    await readDataCheckByScript();
  }

  List loop = [];

  Future readDataLoop() async {
    var url = "http://10.4.1.208/myphp/newSlowService/loop.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        loop.addAll(resBody);
      });
    }
  }

  getDataLoop() async {
    await readDataLoop();
  }

  List routeThis = [];

  Future readDataRouteThis() async {
    var url = "http://10.4.1.208/myphp/newSlowService/routethis.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        routeThis.addAll(resBody);
      });
    }
  }

  getDataRouteThis() async {
    await readDataRouteThis();
  }

  List anydesk = [];

  Future readDataAnydesk() async {
    var url = "http://10.4.1.208/myphp/newSlowService/anydesk.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        anydesk.addAll(resBody);
      });
    }
  }

  getDataAnydesk() async {
    await readDataAnydesk();
  }

  List anotherProblems = [];

  Future readDataAnotherProblems() async {
    var url = "http://10.4.1.208/myphp/newSlowService/anotherproblems.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        anotherProblems.addAll(resBody);
      });
    }
  }

  getDataAnotherProblems() async {
    await readDataAnotherProblems();
  }

  @override
  void initState() {
    getDataBeforeCheckCompanies();
    getDataBeforeCheckDisconnected();
    getDataBeforeCheckVipAgent();
    getDataCheckListHigh();
    getDataCheckListNoHigh();
    getDataPingToBridgeBaghdad();
    getDataPingToBridgeGovernorates();
    getDataCheckFiberLinkBridge();
    getDataCheckFiberLinkBridgeNew();
    getDataWirelessAndDirectPointsRepeater();
    getDataWirelessAndDirectPointsSub();
    getDataMasterProblemsRep();
    getDataMasterProblemsSub();
    getDataMasterProblemsTwoSlaves();
    getDataMasterProblemsMove();
    getDataMasterProblemsHighTraffic();
    getDataCustomerServiceSlave();
    getDataCustomerServiceHub();
    getDataCustomerServiceSector();
    getDataCustomerServiceP2p();
    getDataCustomerServiceTri();
    getDataWirelessLinkMimosa();
    getDataWirelessLinkMikrotik();
    getDataWirelessLinkFullband();
    getDataCheckByScript();
    getDataLoop();
    getDataRouteThis();
    getDataAnydesk();
    getDataAnotherProblems();
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
          title: "Slow Service".tr,
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
                                  title: "Companies",
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
                                          slowBeforeCheckcompanies.length,
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
                                                              text: "${slowBeforeCheckcompanies[index]['title']}\n\n" +
                                                                  "${slowBeforeCheckcompanies[index]['content']}",
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
                                                      "${slowBeforeCheckcompanies[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowBeforeCheckcompanies[index]['title']}",
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
                                                            "${slowBeforeCheckcompanies[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowBeforeCheckcompanies[index]['content']}",
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
                                'Companies',
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
                                  title: "Disconnected Call",
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
                                          slowBeforeCheckDisconnected.length,
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
                                                              text: "${slowBeforeCheckDisconnected[index]['title']}\n\n" +
                                                                  "${slowBeforeCheckDisconnected[index]['content']}",
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
                                                      "${slowBeforeCheckDisconnected[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowBeforeCheckDisconnected[index]['title']}",
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
                                                            "${slowBeforeCheckDisconnected[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowBeforeCheckDisconnected[index]['content']}",
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
                                'Disconnected Call',
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
                                  title: "VIP Agent",
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
                                          itemCount: slowBeforeCheckVipAgent.length,
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
                                                              text: "${slowBeforeCheckVipAgent[index]['title']}\n\n" +
                                                                  "${slowBeforeCheckVipAgent[index]['content']}",
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
                                                      "${slowBeforeCheckVipAgent[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowBeforeCheckVipAgent[index]['title']}",
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
                                                            "${slowBeforeCheckVipAgent[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowBeforeCheckVipAgent[index]['content']}",
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
                                'VIP Agent',
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
                      buttonColor: Colors.red,
                      textCancel: "Close".tr,
                      cancelTextColor: Colors.red,
                      onCancel: () {
                        Get.previousRoute;
                      },
                      title: "Check List".tr,
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
                                  title: "High Impact",
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
                                          itemCount: slowCheckListHigh.length,
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
                                                              text: "${slowCheckListHigh[index]['title']}\n\n" +
                                                                  "${slowCheckListHigh[index]['content']}",
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
                                                      "${slowCheckListHigh[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowCheckListHigh[index]['title']}",
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
                                                            "${slowCheckListHigh[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowCheckListHigh[index]['content']}",
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
                                'High Impact',
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
                                  title: "No High Impact",
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
                                          itemCount: slowCheckListNoHigh.length,
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
                                                              text: "${slowCheckListNoHigh[index]['title']}\n\n" +
                                                                  "${slowCheckListNoHigh[index]['content']}",
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
                                                      "${slowCheckListNoHigh[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowCheckListNoHigh[index]['title']}",
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
                                                            "${slowCheckListNoHigh[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowCheckListNoHigh[index]['content']}",
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
                                'No High Impact',
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
                    'Check List'.tr,
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
                                  title: "Fiber Bridge (Baghdad)",
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
                                          itemCount: slowPingToBridgeBaghdad.length,
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
                                                              text: "${slowPingToBridgeBaghdad[index]['title']}\n\n" +
                                                                  "${slowPingToBridgeBaghdad[index]['content']}",
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
                                                      "${slowPingToBridgeBaghdad[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowPingToBridgeBaghdad[index]['title']}",
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
                                                            "${slowPingToBridgeBaghdad[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowPingToBridgeBaghdad[index]['content']}",
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
                                'Fiber Bridge (Baghdad)',
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
                                  title: "Fiber Bridge (Other Governorates)",
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
                                          slowPingToBridgeGovernorates.length,
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
                                                              text: "${slowPingToBridgeGovernorates[index]['title']}\n\n" +
                                                                  "${slowPingToBridgeGovernorates[index]['content']}",
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
                                                      "${slowPingToBridgeGovernorates[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowPingToBridgeGovernorates[index]['title']}",
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
                                                            "${slowPingToBridgeGovernorates[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowPingToBridgeGovernorates[index]['content']}",
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
                                'Fiber Bridge (Other Governorates)',
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
                      title: "Check Fiber Link Bridge",
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
                              itemCount: slowCheckFiberLinkBridgeNew.length,
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
                                              text: "${slowCheckFiberLinkBridgeNew[index]['title']}\n\n" +
                                                  "${slowCheckFiberLinkBridgeNew[index]['content']}",
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
                                          "${slowCheckFiberLinkBridgeNew[index]['title']}",
                                        ));
                                      },
                                      "${slowCheckFiberLinkBridgeNew[index]['title']}",
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
                                            "${slowCheckFiberLinkBridgeNew[index]['content']}",
                                          ));
                                        },
                                        "${slowCheckFiberLinkBridgeNew[index]['content']}",
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
                    'Check Fiber Link Bridge',
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
                      title: "Wireless and Direct Points".tr,
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
                                  title: "point on repeater",
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
                                          slowWirelessAndDirectPointsRepeater
                                              .length,
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
                                                              text: "${slowWirelessAndDirectPointsRepeater[index]['title']}\n\n" +
                                                                  "${slowWirelessAndDirectPointsRepeater[index]['content']}",
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
                                                      "${slowWirelessAndDirectPointsRepeater[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowWirelessAndDirectPointsRepeater[index]['title']}",
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
                                                            "${slowWirelessAndDirectPointsRepeater[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowWirelessAndDirectPointsRepeater[index]['content']}",
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
                                'point on repeater',
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
                                  title: "point on sub_repeater",
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
                                          slowWirelessAndDirectPointsSub.length,
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
                                                              text: "${slowWirelessAndDirectPointsSub[index]['title']}\n\n" +
                                                                  "${slowWirelessAndDirectPointsSub[index]['content']}",
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
                                                      "${slowWirelessAndDirectPointsSub[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowWirelessAndDirectPointsSub[index]['title']}",
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
                                                            "${slowWirelessAndDirectPointsSub[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowWirelessAndDirectPointsSub[index]['content']}",
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
                                'point on sub_repeater',
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
                    'Wireless and Direct Points'.tr,
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
                                  title: "Master on repeater",
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
                                          itemCount: slowMasterProblemsRep.length,
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
                                                              text: "${slowMasterProblemsRep[index]['title']}\n\n" +
                                                                  "${slowMasterProblemsRep[index]['content']}",
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
                                                      "${slowMasterProblemsRep[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowMasterProblemsRep[index]['title']}",
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
                                                            "${slowMasterProblemsRep[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowMasterProblemsRep[index]['content']}",
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
                                'Master on repeater',
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
                                  title: "Master on sub_repeater",
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
                                          itemCount: slowMasterProblemsSub.length,
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
                                                              text: "${slowMasterProblemsSub[index]['title']}\n\n" +
                                                                  "${slowMasterProblemsSub[index]['content']}",
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
                                                      "${slowMasterProblemsSub[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowMasterProblemsSub[index]['title']}",
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
                                                            "${slowMasterProblemsSub[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowMasterProblemsSub[index]['content']}",
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
                                'Master on sub_repeater',
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
                                  title: "Two slaves on single master",
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
                                          slowMasterProblemsTwoSlaves.length,
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
                                                              text: "${slowMasterProblemsTwoSlaves[index]['title']}\n\n" +
                                                                  "${slowMasterProblemsTwoSlaves[index]['content']}",
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
                                                      "${slowMasterProblemsTwoSlaves[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowMasterProblemsTwoSlaves[index]['title']}",
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
                                                            "${slowMasterProblemsTwoSlaves[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowMasterProblemsTwoSlaves[index]['content']}",
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
                                'Two slaves on single master',
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
                                  title: "Master Move",
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
                                          itemCount: slowMasterProblemsMove.length,
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
                                                              text: "${slowMasterProblemsMove[index]['title']}\n\n" +
                                                                  "${slowMasterProblemsMove[index]['content']}",
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
                                                      "${slowMasterProblemsMove[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowMasterProblemsMove[index]['title']}",
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
                                                            "${slowMasterProblemsMove[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowMasterProblemsMove[index]['content']}",
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
                                'Master Move',
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
                                  title: "Higher traffic sensors",
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
                                          slowMasterProblemsHighTraffic.length,
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
                                                              text: "${slowMasterProblemsHighTraffic[index]['title']}\n\n" +
                                                                  "${slowMasterProblemsHighTraffic[index]['content']}",
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
                                                      "${slowMasterProblemsHighTraffic[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowMasterProblemsHighTraffic[index]['title']}",
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
                                                            "${slowMasterProblemsHighTraffic[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowMasterProblemsHighTraffic[index]['content']}",
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
                                'Higher traffic sensors',
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
                      title: "Customer Service Problems".tr,
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
                                  title: "Slave problems",
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
                                          slowCustomerServiceSlave.length,
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
                                                              text: "${slowCustomerServiceSlave[index]['title']}\n\n" +
                                                                  "${slowCustomerServiceSlave[index]['content']}",
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
                                                      "${slowCustomerServiceSlave[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowCustomerServiceSlave[index]['title']}",
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
                                                            "${slowCustomerServiceSlave[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowCustomerServiceSlave[index]['content']}",
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
                                'Slave problems',
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
                                  title: "Hub problems",
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
                                          itemCount: slowCustomerServiceHub.length,
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
                                                              text: "${slowCustomerServiceHub[index]['title']}\n\n" +
                                                                  "${slowCustomerServiceHub[index]['content']}",
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
                                                      "${slowCustomerServiceHub[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowCustomerServiceHub[index]['title']}",
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
                                                            "${slowCustomerServiceHub[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowCustomerServiceHub[index]['content']}",
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
                                'Hub problems',
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
                                  title: "Sector problems",
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
                                          slowCustomerServiceSector.length,
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
                                                              text: "${slowCustomerServiceSector[index]['title']}\n\n" +
                                                                  "${slowCustomerServiceSector[index]['content']}",
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
                                                      "${slowCustomerServiceSector[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowCustomerServiceSector[index]['title']}",
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
                                                            "${slowCustomerServiceSector[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowCustomerServiceSector[index]['content']}",
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
                                'Sector problems',
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
                                  title: "P2P problems",
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
                                          itemCount: slowCustomerServiceP2p.length,
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
                                                              text: "${slowCustomerServiceP2p[index]['title']}\n\n" +
                                                                  "${slowCustomerServiceP2p[index]['content']}",
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
                                                      "${slowCustomerServiceP2p[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowCustomerServiceP2p[index]['title']}",
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
                                                            "${slowCustomerServiceP2p[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowCustomerServiceP2p[index]['content']}",
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
                                'P2P problems',
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
                                  title: "Caution Triangle",
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
                                          itemCount: slowCustomerServiceTri.length,
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
                                                              text: "${slowCustomerServiceTri[index]['title']}\n\n" +
                                                                  "${slowCustomerServiceTri[index]['content']}",
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
                                                      "${slowCustomerServiceTri[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowCustomerServiceTri[index]['title']}",
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
                                                  RichText(
                                                    text: TextSpan(
                                                      style: TextStyle(
                                                          color: lightbodycolor),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                            text:
                                                            "${slowCustomerServiceTri[index]['content']}\n\n"),
                                                        TextSpan(
                                                            text:
                                                            'User Connections Check!\n\n',
                                                            style: const TextStyle(
                                                                color: Colors.blue),
                                                            recognizer:
                                                            TapGestureRecognizer()
                                                              ..onTap = () {
                                                                _launchURL() async {
                                                                  var url =
                                                                      'http://10.4.20.5/index';
                                                                  if (await canLaunch(
                                                                      url)) {
                                                                    await launch(
                                                                        url);
                                                                  } else {
                                                                    throw 'Could not launch $url';
                                                                  }
                                                                }

                                                                _launchURL();
                                                              }),
                                                      ],
                                                    ),
                                                    textDirection:
                                                    TextDirection.rtl,
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
                                'Caution Triangle',
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
                    'Customer Service Problems'.tr,
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
                      title: "Wireless Link Check".tr,
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
                                  title: "Mimosa or airfiber link",
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
                                          itemCount: slowWirelessLinkMimosa.length,
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
                                                              text: "${slowWirelessLinkMimosa[index]['title']}\n\n" +
                                                                  "${slowWirelessLinkMimosa[index]['content']}",
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
                                                      "${slowWirelessLinkMimosa[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowWirelessLinkMimosa[index]['title']}",
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
                                                            "${slowWirelessLinkMimosa[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowWirelessLinkMimosa[index]['content']}",
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
                                'Mimosa or airfiber link',
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
                                  title: "Mikrotik link",
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
                                          slowWirelessLinkMikrotik.length,
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
                                                              text: "${slowWirelessLinkMikrotik[index]['title']}\n\n" +
                                                                  "${slowWirelessLinkMikrotik[index]['content']}",
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
                                                      "${slowWirelessLinkMikrotik[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowWirelessLinkMikrotik[index]['title']}",
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
                                                            "${slowWirelessLinkMikrotik[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowWirelessLinkMikrotik[index]['content']}",
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
                                'Mikrotik link',
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
                                  title: "Full band",
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
                                          slowWirelessLinkFullband.length,
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
                                                              text: "${slowWirelessLinkFullband[index]['title']}\n\n" +
                                                                  "${slowWirelessLinkFullband[index]['content']}",
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
                                                      "${slowWirelessLinkFullband[index]['title']}",
                                                    ));
                                                  },
                                                  "${slowWirelessLinkFullband[index]['title']}",
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
                                                            "${slowWirelessLinkFullband[index]['content']}",
                                                          ));
                                                    },
                                                    "${slowWirelessLinkFullband[index]['content']}",
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
                                'Full band',
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
                    'Wireless Link Check'.tr,
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
                      title: "Check By Script",
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
                              itemCount: checkByScript.length,
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
                                              text: "${checkByScript[index]['title']}\n\n" +
                                                  "${checkByScript[index]['content']}",
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
                                          text: "${checkByScript[index]['title']}",
                                        ));
                                      },
                                      "${checkByScript[index]['title']}",
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
                                            "${checkByScript[index]['content']}",
                                          ));
                                        },
                                        "${checkByScript[index]['content']}",
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
                    'Check By Script',
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
                      title: "Loop",
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
                              itemCount: loop.length,
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
                                              text: "${loop[index]['title']}\n\n" +
                                                  "${loop[index]['content']}",
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
                                          text: "${loop[index]['title']}",
                                        ));
                                      },
                                      "${loop[index]['title']}",
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
                                            text: "${loop[index]['content']}",
                                          ));
                                        },
                                        "${loop[index]['content']}",
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
                    'Loop',
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
                      title: "Check By RouteThis",
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
                              itemCount: routeThis.length,
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
                                              text: "${routeThis[index]['title']}\n\n" +
                                                  "${routeThis[index]['content']}",
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
                                          text: "${routeThis[index]['title']}",
                                        ));
                                      },
                                      "${routeThis[index]['title']}",
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
                                            text: "${routeThis[index]['content']}",
                                          ));
                                        },
                                        "${routeThis[index]['content']}",
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
                    'Check By RouteThis',
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
                      title: "Check By AnyDesk",
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
                              itemCount: anydesk.length,
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
                                              text:
                                              "${anydesk[index]['title']}\n\n" +
                                                  "${anydesk[index]['content']}",
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
                                          text: "${anydesk[index]['title']}",
                                        ));
                                      },
                                      "${anydesk[index]['title']}",
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
                                            text: "${anydesk[index]['content']}",
                                          ));
                                        },
                                        "${anydesk[index]['content']}",
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
                    'Check By AnyDesk',
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
                      title: "Another Problems",
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
                              itemCount: anotherProblems.length,
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
                                              text: "${anotherProblems[index]['title']}\n\n" +
                                                  "${anotherProblems[index]['content']}",
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
                                          "${anotherProblems[index]['title']}",
                                        ));
                                      },
                                      "${anotherProblems[index]['title']}",
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
                                            "${anotherProblems[index]['content']}",
                                          ));
                                        },
                                        "${anotherProblems[index]['content']}",
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
                    'Another Problems',
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
                color: Color.fromRGBO(7, 102, 173, 1),
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
                    color:  Color.fromRGBO(7, 102, 173, 1),
                    child: ImageIcon(
                      AssetImage("assets/images/titleSlow.png"),
                      size: 50,
                      color: Colors.white ,
                    ),
                  ),
                  Divider(color: Colors.white),
                  Text(
                    'Slow Service',
                    style: TextStyle(
                        color: Colors.white , // Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          firstChild: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(7, 102, 173, 1),
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
                    color: Color.fromRGBO(7, 102, 173, 1),
                    child: ImageIcon(
                      AssetImage("assets/images/titleSlow.png"),
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Divider(color: Colors.white,),
                  Text(
                    'Slow Service',
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
