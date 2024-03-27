import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';
import 'package:http/http.dart' as http;
import '../../constants/my_url_button.dart';
import '../../constants/variables.dart';

class TicketsNew extends StatefulWidget {
  const TicketsNew({Key? key}) : super(key: key);

  @override
  State<TicketsNew> createState() => _TicketsNewState();
}

class _TicketsNewState extends State<TicketsNew> {
  @override
  void initState() {
    getTicketsWriting();
    getTicketsRelated();
    getTicketsCategoryStatus();
    getTicketsNotes();
    super.initState();
  }

//--------------
  List ticketsWriting = [];

  Future readDataTicketsWriting() async {
    var url = "http://10.4.1.208/myphp/newtickets/writing.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        ticketsWriting.addAll(resbody);
      });
    }
  }

  getTicketsWriting() async {
    await readDataTicketsWriting();
  }

//--------------
  List ticketsRelated = [];

  Future readDataTicketsRelated() async {
    var url = "http://10.4.1.208/myphp/newtickets/related.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        ticketsRelated.addAll(resbody);
      });
    }
  }

  getTicketsRelated() async {
    await readDataTicketsRelated();
  }

//--------------

  List ticketsCategoryStatus = [];

  Future readDataTicketsCategoryStatus() async {
    var url = "http://10.4.1.208/myphp/newtickets/categoryStatus.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        ticketsCategoryStatus.addAll(resbody);
      });
    }
  }

  getTicketsCategoryStatus() async {
    await readDataTicketsCategoryStatus();
  }

//--------------

  List ticketsNotes = [];

  Future readDataTicketsNotes() async {
    var url = "http://10.4.1.208/myphp/newtickets/notes.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        ticketsNotes.addAll(resbody);
      });
    }
  }

  getTicketsNotes() async {
    await readDataTicketsNotes();
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
          title: "Writing Tickets".tr,
          content: Container(
            margin: EdgeInsets.all(3),
            padding: EdgeInsets.all(borderpadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: lighttextandtitle, width: borderwidth),
            ),
            child:  Column(
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
                      title: "Writing Tickets".tr,
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
                              itemCount: ticketsWriting.length,
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
                                              text: "${ticketsWriting[index]['title']}\n\n" +
                                                  "${ticketsWriting[index]['content']}",
                                            ));
                                          },
                                          icon: Icon(
                                            Icons.copy,
                                            color: Colors.grey,
                                          )),
                                    ),
                                    expandedCrossAxisAlignment:
                                    CrossAxisAlignment.end,
                                    // key: PageStorageKey(index),
                                    title: SelectableText(
                                      showCursor: true,
                                      cursorColor: Colors.redAccent,
                                      onTap: () {
                                        Clipboard.setData(ClipboardData(
                                          text: "${ticketsWriting[index]['title']}",
                                        ));
                                      },
                                      "${ticketsWriting[index]['title']}",
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
                                            "${ticketsWriting[index]['content']}",
                                          ));
                                        },
                                        "${ticketsWriting[index]['content']}",
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
                    'Writing Tickets'.tr,
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
                      title: "Tickets Related".tr,
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
                              itemCount: ticketsRelated.length,
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
                                              text: "${ticketsRelated[index]['title']}\n\n" +
                                                  "${ticketsRelated[index]['content']}",
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
                                          text: "${ticketsRelated[index]['title']}",
                                        ));
                                      },
                                      "${ticketsRelated[index]['title']}",
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
                                            "${ticketsRelated[index]['content']}",
                                          ));
                                        },
                                        "${ticketsRelated[index]['content']}",
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
                    'Tickets Related'.tr,
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
                      title: "Category Status".tr,
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
                              itemCount: ticketsCategoryStatus.length,
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
                                              text: "${ticketsCategoryStatus[index]['title']}\n\n" +
                                                  "${ticketsCategoryStatus[index]['content']}",
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
                                          "${ticketsCategoryStatus[index]['title']}",
                                        ));
                                      },
                                      "${ticketsCategoryStatus[index]['title']}",
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
                                            "${ticketsCategoryStatus[index]['content']}",
                                          ));
                                        },
                                        "${ticketsCategoryStatus[index]['content']}",
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
                    'Category Status'.tr,
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
                      title: "Notes".tr,
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
                              itemCount: ticketsNotes.length,
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
                                              text: "${ticketsNotes[index]['title']}\n\n" +
                                                  "${ticketsNotes[index]['content']}",
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
                                          text: "${ticketsNotes[index]['title']}",
                                        ));
                                      },
                                      "${ticketsNotes[index]['title']}",
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
                                            "${ticketsNotes[index]['content']}",
                                          ));
                                        },
                                        "${ticketsNotes[index]['content']}",
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
                    'Notes'.tr,
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
                color: Color.fromRGBO(45, 95, 46, 1),
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
                    color: Color.fromRGBO(45, 95, 46, 1),
                    child: ImageIcon(
                      AssetImage("assets/images/titleWritingTicket.png"),
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Divider(color: Colors.white,),
                  Text(
                    'Writing Ticket',
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
                color: Color.fromRGBO(45, 95, 46, 1),
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
                    color: Color.fromRGBO(45, 95, 46, 1),
                    child: ImageIcon(
                      AssetImage("assets/images/titleWritingTicket.png"),
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Divider(color: Colors.white,),
                  Text(
                    'Writing Ticket',
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
