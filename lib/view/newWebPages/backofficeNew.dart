import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';
import 'package:http/http.dart' as http;
import '../../constants/my_url_button.dart';
import '../../constants/variables.dart';

class BackOfficeNew extends StatefulWidget {
  const BackOfficeNew({Key? key}) : super(key: key);

  @override
  State<BackOfficeNew> createState() => _BackOfficeNewState();
}

class _BackOfficeNewState extends State<BackOfficeNew> {
  @override
  void initState() {
    getBackofficeAnswer();
    getBackofficeCommunication();
    getBackofficeTicket();
    getBackofficeTunnel();
    getBackofficeLoadBalance();
    getBackofficeEnding();
    super.initState();
  }

//--------------
  List backofficeAnswer = [];

  Future readBackofficeAnswer() async {
    var url = "http://10.4.1.208/myphp/newBackOffice/answer.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        backofficeAnswer.addAll(resbody);
      });
    }
  }

  getBackofficeAnswer() async {
    await readBackofficeAnswer();
  }

//--------------
  List backofficeCommunication = [];

  Future readDataBackofficeCommunication() async {
    var url = "http://10.4.1.208/myphp/newBackOffice/communication.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        backofficeCommunication.addAll(resbody);
      });
    }
  }

  getBackofficeCommunication() async {
    await readDataBackofficeCommunication();
  }

//--------------
  List backofficeTicket = [];

  Future readDataBackofficeTicket() async {
    var url = "http://10.4.1.208/myphp/newBackOffice/ticket.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        backofficeTicket.addAll(resbody);
      });
    }
  }

  getBackofficeTicket() async {
    await readDataBackofficeTicket();
  }

//--------------
  List backofficeTunnel = [];

  Future readDataBackofficeTunnel() async {
    var url = "http://10.4.1.208/myphp/newBackOffice/tunnel.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        backofficeTunnel.addAll(resbody);
      });
    }
  }

  getBackofficeTunnel() async {
    await readDataBackofficeTunnel();
  }

//--------------
  List backofficeLoadBalance = [];

  Future readDataBackofficeLoadBalance() async {
    var url = "http://10.4.1.208/myphp/newBackOffice/loadBalance.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        backofficeLoadBalance.addAll(resbody);
      });
    }
  }

  getBackofficeLoadBalance() async {
    await readDataBackofficeLoadBalance();
  }

//--------------
  List backofficeEnding = [];

  Future readDataBackofficeEnding() async {
    var url = "http://10.4.1.208/myphp/newBackOffice/ending.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        backofficeEnding.addAll(resbody);
      });
    }
  }

  getBackofficeEnding() async {
    await readDataBackofficeEnding();
  }

//--------------

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
          title: "Support BackOffice".tr,
          content: Container(
            margin: EdgeInsets.all(3),
            padding: EdgeInsets.all(borderpadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: lighttextandtitle, width: borderwidth),
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
                      title: "Answer The Call/Ticket".tr,
                      content: Expanded(
                        child: Container(
                          height: screenHeight,
                          width: screenWidth,
                          margin: const EdgeInsets.all(3),
                          padding: EdgeInsets.all(borderpadding),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: lighttextandtitle, width: borderwidth),
                          ),
                          child: ListView.builder(
                              itemCount: backofficeAnswer.length,
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
                                              text: "${backofficeAnswer[index]['title']}\n\n" +
                                                  "${backofficeAnswer[index]['content']}",
                                            ));
                                          },
                                          icon: Icon(
                                            Icons.copy,
                                            color: Colors.grey,
                                          )),
                                    ),
                                    // key: PageStorageKey(index),
                                    title: SelectableText(
                                      showCursor: true,
                                      cursorColor: Colors.redAccent,
                                      onTap: () {
                                        Clipboard.setData(ClipboardData(
                                          text:
                                              "${backofficeAnswer[index]['title']}",
                                        ));
                                      },
                                      "${backofficeAnswer[index]['title']}",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(color: lightbodycolor),
                                    ),
                                    initiallyExpanded: isExpanded,
                                    onExpansionChanged: (bool expanding) {
                                      setState(() {});
                                    },
                                    children: <Widget>[
                                      Text(
                                          "${backofficeAnswer[index]['content']}",
                                          style:
                                              TextStyle(color: lightbodycolor),
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
                    'Answer The Call/Ticket'.tr,
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
                      title: "Communication Skills".tr,
                      content: Expanded(
                        child: Container(
                          height: screenHeight,
                          width: screenWidth,
                          margin: const EdgeInsets.all(3),
                          padding: EdgeInsets.all(borderpadding),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: lighttextandtitle, width: borderwidth),
                          ),
                          child: ListView.builder(
                              itemCount: backofficeCommunication.length,
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
                                              text: "${backofficeCommunication[index]['title']}\n\n" +
                                                  "${backofficeCommunication[index]['content']}",
                                            ));
                                          },
                                          icon: Icon(
                                            Icons.copy,
                                            color: Colors.grey,
                                          )),
                                    ),
                                    // key: PageStorageKey(index),
                                    title: SelectableText(
                                      showCursor: true,
                                      cursorColor: Colors.redAccent,
                                      onTap: () {
                                        Clipboard.setData(ClipboardData(
                                          text:
                                              "${backofficeCommunication[index]['title']}",
                                        ));
                                      },
                                      "${backofficeCommunication[index]['title']}",
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
                                                "${backofficeCommunication[index]['content']}",
                                          ));
                                        },
                                        "${backofficeCommunication[index]['content']}",
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
                    color: iconcolor,
                  ),
                  label: Text(
                    'Communication Skills'.tr,
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
                      title: "Ticket".tr,
                      content: Expanded(
                        child: Container(
                          height: screenHeight,
                          width: screenWidth,
                          margin: const EdgeInsets.all(3),
                          padding: EdgeInsets.all(borderpadding),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: lighttextandtitle, width: borderwidth),
                          ),
                          child: ListView.builder(
                              itemCount: backofficeTicket.length,
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
                                              text: "${backofficeTicket[index]['title']}\n\n" +
                                                  "${backofficeTicket[index]['content']}",
                                            ));
                                          },
                                          icon: Icon(
                                            Icons.copy,
                                            color: Colors.grey,
                                          )),
                                    ),
                                    // key: PageStorageKey(index),
                                    title: SelectableText(
                                      showCursor: true,
                                      cursorColor: Colors.redAccent,
                                      onTap: () {
                                        Clipboard.setData(ClipboardData(
                                          text:
                                              "${backofficeTicket[index]['title']}",
                                        ));
                                      },
                                      "${backofficeTicket[index]['title']}",
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
                                                "${backofficeTicket[index]['content']}",
                                          ));
                                        },
                                        "${backofficeTicket[index]['content']}",
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
                    color: iconcolor,
                  ),
                  label: Text(
                    'Ticket'.tr,
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
                      title: "Tunnel Cases".tr,
                      content: Expanded(
                        child: Container(
                          height: screenHeight,
                          width: screenWidth,
                          margin: const EdgeInsets.all(3),
                          padding: EdgeInsets.all(borderpadding),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: lighttextandtitle, width: borderwidth),
                          ),
                          child: ListView.builder(
                              itemCount: backofficeTunnel.length,
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
                                              text: "${backofficeTunnel[index]['title']}\n\n" +
                                                  "${backofficeTunnel[index]['content']}",
                                            ));
                                          },
                                          icon: Icon(
                                            Icons.copy,
                                            color: Colors.grey,
                                          )),
                                    ),
                                    // key: PageStorageKey(index),
                                    title: SelectableText(
                                      showCursor: true,
                                      cursorColor: Colors.redAccent,
                                      onTap: () {
                                        Clipboard.setData(ClipboardData(
                                          text:
                                              "${backofficeTunnel[index]['title']}",
                                        ));
                                      },
                                      "${backofficeTunnel[index]['title']}",
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
                                                "${backofficeTunnel[index]['content']}",
                                          ));
                                        },
                                        "${backofficeTunnel[index]['content']}",
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
                    color: iconcolor,
                  ),
                  label: Text(
                    'Tunnel Cases'.tr,
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
                      title: "Load Balance".tr,
                      content: Expanded(
                        child: Container(
                          height: screenHeight,
                          width: screenWidth,
                          margin: const EdgeInsets.all(3),
                          padding: EdgeInsets.all(borderpadding),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: lighttextandtitle, width: borderwidth),
                          ),
                          child: ListView.builder(
                              itemCount: backofficeLoadBalance.length,
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
                                              text: "${backofficeLoadBalance[index]['title']}\n\n" +
                                                  "${backofficeLoadBalance[index]['content']}",
                                            ));
                                          },
                                          icon: Icon(
                                            Icons.copy,
                                            color: Colors.grey,
                                          )),
                                    ),
                                    // key: PageStorageKey(index),
                                    title: SelectableText(
                                      showCursor: true,
                                      cursorColor: Colors.redAccent,
                                      onTap: () {
                                        Clipboard.setData(ClipboardData(
                                          text:
                                              "${backofficeLoadBalance[index]['title']}",
                                        ));
                                      },
                                      "${backofficeLoadBalance[index]['title']}",
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
                                                "${backofficeLoadBalance[index]['content']}",
                                          ));
                                        },
                                        "${backofficeLoadBalance[index]['content']}",
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
                    color: iconcolor,
                  ),
                  label: Text(
                    'Load Balance'.tr,
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
                      title: "End The Call/Ticket".tr,
                      content: Expanded(
                        child: Container(
                          height: screenHeight,
                          width: screenWidth,
                          margin: const EdgeInsets.all(3),
                          padding: EdgeInsets.all(borderpadding),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: lighttextandtitle, width: borderwidth),
                          ),
                          child: ListView.builder(
                              itemCount: backofficeEnding.length,
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
                                              text: "${backofficeEnding[index]['title']}\n\n" +
                                                  "${backofficeEnding[index]['content']}",
                                            ));
                                          },
                                          icon: Icon(
                                            Icons.copy,
                                            color: Colors.grey,
                                          )),
                                    ),
                                    // key: PageStorageKey(index),
                                    title: SelectableText(
                                      showCursor: true,
                                      cursorColor: Colors.redAccent,
                                      onTap: () {
                                        Clipboard.setData(ClipboardData(
                                          text:
                                              "${backofficeEnding[index]['title']}",
                                        ));
                                      },
                                      "${backofficeEnding[index]['title']}",
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
                                                "${backofficeEnding[index]['content']}",
                                          ));
                                        },
                                        "${backofficeEnding[index]['content']}",
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
                    color: iconcolor,
                  ),
                  label: Text(
                    'End The Call/Ticket'.tr,
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
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        HoverCrossFadeWidget(
          duration: Duration(milliseconds: 100),
          secondChild: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(25, 25, 77, 1),
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
                    color: Color.fromRGBO(25, 25, 77, 1),
                    child: ImageIcon(
                      AssetImage("assets/images/titleBackOffice.png"),
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  Text(
                    'Support BackOffice',
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
                color: Color.fromRGBO(25, 25, 77, 1),
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
                    color: Color.fromRGBO(25, 25, 77, 1),
                    child: ImageIcon(
                      AssetImage("assets/images/titleBackOffice.png"),
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  Text(
                    'Support BackOffice',
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
