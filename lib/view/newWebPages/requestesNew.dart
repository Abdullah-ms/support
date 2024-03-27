import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';
import 'package:http/http.dart' as http;
import '../../constants/my_url_button.dart';
import '../../constants/variables.dart';

class RequestsNew extends StatefulWidget {
  const RequestsNew({Key? key}) : super(key: key);

  @override
  State<RequestsNew> createState() => _RequestsNewState();
}

class _RequestsNewState extends State<RequestsNew> {
  @override
  void initState() {
    getRequestsRequests();
    getRequestsInquiries();
    super.initState();
  }

//--------------
  List requestsRequests = [];

  Future readDataRequestsRequests() async {
    var url = "http://10.4.1.208/myphp/newrequests/requests.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        requestsRequests.addAll(resbody);
      });
    }
  }

  getRequestsRequests() async {
    await readDataRequestsRequests();
  }

//--------------
  List requestsInquiries = [];

  Future readDataRequestsInquiries() async {
    var url = "http://10.4.1.208/myphp/newrequests/inquiries.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        requestsInquiries.addAll(resbody);
      });
    }
  }

  getRequestsInquiries() async {
    await readDataRequestsInquiries();
  }

//--------------

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: () {
          Get.defaultDialog(
            buttonColor: Colors.red,
            textCancel: "Close".tr,
            cancelTextColor: Colors.red,
            onCancel: () {
              Get.previousRoute;
            },
            title: "Requests & Inquiries".tr,
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
                        title: "Requests".tr,
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
                                itemCount: requestsRequests.length,
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
                                                text: "${requestsRequests[index]['title']}\n\n" +
                                                    "${requestsRequests[index]['content']}",
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
                                            "${requestsRequests[index]['title']}",
                                          ));
                                        },
                                        "${requestsRequests[index]['title']}",
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
                                              "${requestsRequests[index]['content']}",
                                            ));
                                          },
                                          "${requestsRequests[index]['content']}",
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
                      'Requests'.tr,
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
                        title: "Inquiries".tr,
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
                                itemCount: requestsInquiries.length,
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
                                                text: "${requestsInquiries[index]['title']}\n\n" +
                                                    "${requestsInquiries[index]['content']}",
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
                                            "${requestsInquiries[index]['title']}",
                                          ));
                                        },
                                        "${requestsInquiries[index]['title']}",
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
                                              "${requestsInquiries[index]['content']}",
                                            ));
                                          },
                                          "${requestsInquiries[index]['content']}",
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
                      'Inquiries'.tr,
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
                  color: Color.fromRGBO(123, 32, 73, 1),
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
                      color: Color.fromRGBO(123, 32, 73, 1),
                      child: ImageIcon(
                        AssetImage("assets/images/titleRequests.png"),
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    Divider(color: Colors.white,),
                    Text(
                      'Requests-Inquiries',
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
                  color: Color.fromRGBO(123, 32, 73, 1),
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
                      color: Color.fromRGBO(123, 32, 73, 1),
                      child: ImageIcon(
                        AssetImage("assets/images/titleRequests.png"),
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    Divider(color: Colors.white,),
                    Text(
                      'Requests-Inquiries',
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
