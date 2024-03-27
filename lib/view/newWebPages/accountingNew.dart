import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';
import 'package:http/http.dart' as http;
import '../../constants/my_url_button.dart';
import '../../constants/variables.dart';

class AccountingNew extends StatefulWidget {
  const AccountingNew({Key? key}) : super(key: key);

  @override
  State<AccountingNew> createState() => _AccountingNewState();
}

class _AccountingNewState extends State<AccountingNew> {
  @override
  void initState() {
    getAccountingOnlinePassword();
    getAccountingPaymentMethods();
    getAccountingTestCards();
    getAccountingOtherCases();
    getImageData();
    super.initState();
  }

//--------------
  List accountingOnlinePassword = [];

  Future readDataAccountingOnlinePassword() async {
    var url =
        "http://10.4.1.208/myphp/newaccounting/accountingOnlinePassword.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        accountingOnlinePassword.addAll(resBody);
      });
    }
  }

  getAccountingOnlinePassword() async {
    await readDataAccountingOnlinePassword();
  }

//--------------
  List accountingPaymentMethods = [];

  Future readDataAccountingPaymentMethods() async {
    var url =
        "http://10.4.1.208/myphp/newaccounting/accountingPaymentMethods.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        accountingPaymentMethods.addAll(resBody);
      });
    }
  }

  getAccountingPaymentMethods() async {
    await readDataAccountingPaymentMethods();
  }

//--------------
  List accountingTestCards = [];

  Future readDataAccountingTestCards() async {
    var url = "http://10.4.1.208/myphp/newaccounting/accountingTestCards.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        accountingTestCards.addAll(resBody);
      });
    }
  }

  getAccountingTestCards() async {
    await readDataAccountingTestCards();
  }

//--------------

  List accountingOtherCases = [];

  Future readDataAccountingOtherCases() async {
    var url = "http://10.4.1.208/myphp/newaccounting/accountingOtherCases.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        accountingOtherCases.addAll(resBody);
      });
    }
  }

  getAccountingOtherCases() async {
    await readDataAccountingOtherCases();
  }

  //----------------------------------------

  List myImages = [];

  Future imageData() async {
    var url = "http://10.4.1.208/myphp/newaccounting/images.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        myImages.addAll(resBody);
      });
      return resBody;
    }
  }

  getImageData() async {
    await imageData();
  }

//----------------------------------------

  bool isExpanded = false;

  final _key = GlobalKey<ScaffoldState>();

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
          title: "Accounting".tr,
          content: Container(
            margin: const EdgeInsets.all(3),
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
                      title: "Online Password".tr,
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
                              itemCount: accountingOnlinePassword.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  color: index % 2 == 0
                                      ? expandlistcolor1
                                      : expandlistcolor2,
                                  child: Card(
                                    color: lightbackground,
                                    child: ExpansionTile(
                                      leading: Tooltip(
                                        message: "copy to clipboard",
                                        child: IconButton(
                                            onPressed: () {
                                              Clipboard.setData(ClipboardData(
                                                text: "${accountingOnlinePassword[index]['title']}\n\n" +
                                                    "${accountingOnlinePassword[index]['content']}",
                                              ));
                                            },
                                            icon: const Icon(
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
                                                  "${accountingOnlinePassword[index]['title']}"));
                                        },
                                        "${accountingOnlinePassword[index]['title']}",
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
                                                  "${accountingOnlinePassword[index]['content']}",
                                            ));
                                          },
                                          "${accountingOnlinePassword[index]['content']}",
                                          textDirection: TextDirection.rtl,
                                          style:
                                              TextStyle(color: lightbodycolor),
                                        ),
                                      ],
                                    ),
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
                    'Online Password'.tr,
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
                      title: "Kushok / E-way / Fast pay".tr,
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
                              itemCount: accountingPaymentMethods.length,
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
                                              text: "${accountingPaymentMethods[index]['title']}\n\n" +
                                                  "${accountingPaymentMethods[index]['content']}",
                                            ));
                                          },
                                          icon: const Icon(
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
                                              "${accountingPaymentMethods[index]['title']}",
                                        ));
                                      },
                                      "${accountingPaymentMethods[index]['title']}",
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
                                                "${accountingPaymentMethods[index]['content']}",
                                          ));
                                        },
                                        "${accountingPaymentMethods[index]['content']}",
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
                    'Kushok / E-way / Fast pay'.tr,
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
                      title: "Test Cards".tr,
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
                              itemCount: accountingTestCards.length,
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
                                              text: "${accountingTestCards[index]['title']}\n\n" +
                                                  "${accountingTestCards[index]['content']}",
                                            ));
                                          },
                                          icon: const Icon(
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
                                              "${accountingTestCards[index]['title']}",
                                        ));
                                      },
                                      "${accountingTestCards[index]['title']}",
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
                                                "${accountingTestCards[index]['content']}",
                                          ));
                                        },
                                        "${accountingTestCards[index]['content']}",
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
                    'Test Cards'.tr,
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
                      title: "Other Cases".tr,
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
                              itemCount: accountingOtherCases.length,
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
                                              text: "${accountingOtherCases[index]['title']}\n\n" +
                                                  "${accountingOtherCases[index]['content']}",
                                            ));
                                          },
                                          icon: const Icon(
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
                                              "${accountingOtherCases[index]['title']}",
                                        ));
                                      },
                                      "${accountingOtherCases[index]['title']}",
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
                                                "${accountingOtherCases[index]['content']}",
                                          ));
                                        },
                                        "${accountingOtherCases[index]['content']}",
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
                    'Other Cases'.tr,
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
                      title: "New System Resellers - Transfer Balance".tr,
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
                            itemCount: myImages.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(myImages[0]['text' '${index + 1}'],
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(color: lightbodycolor)),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                      child: Image.network(
                                          '${myImages[0]['image' '${index + 1}']}')),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(myImages[0]['text' '${index + 2}'],
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(color: lightbodycolor)),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                      child: Image.network(
                                          '${myImages[0]['image' '${index + 2}']}')),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(myImages[0]['text' '${index + 3}'],
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(color: lightbodycolor)),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                      child: Image.network(
                                          '${myImages[0]['image' '${index + 3}']}')),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(myImages[0]['text' '${index + 4}'],
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(color: lightbodycolor)),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                      child: Image.network(
                                          '${myImages[0]['image' '${index + 4}']}')),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(myImages[0]['text' '${index + 5}'],
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(color: lightbodycolor)),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                      child: Image.network(
                                          '${myImages[0]['image' '${index + 5}']}')),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(myImages[0]['text' '${index + 6}'],
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(color: lightbodycolor)),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                      child: Image.network(
                                          '${myImages[0]['image' '${index + 6}']}')),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(myImages[0]['text' '${index + 7}'],
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(color: lightbodycolor)),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                      child: Image.network(
                                          '${myImages[0]['image' '${index + 7}']}')),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(myImages[0]['text' '${index + 8}'],
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(color: lightbodycolor)),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                      child: Image.network(
                                          '${myImages[0]['image' '${index + 8}']}')),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                      backgroundColor: lightdialogbackground,
                      titleStyle: TextStyle(color: lightbodycolor),
                    );
                  },
                  icon: Icon(
                    Icons.label_important,
                    size: iconsize,
                    color: iconcolor,
                  ),
                  label: Text(
                    'New System Resellers - Transfer Balance'.tr,
                    style:
                        TextStyle(color: lighttextandtitle, fontSize: textsize),
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
          duration: const Duration(milliseconds: 100),
          secondChild: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(241, 173, 136, 1),
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
                    color: Color.fromRGBO(241, 173, 136, 1),
                    child: ImageIcon(
                      AssetImage("assets/images/titleAccounting.png"),
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  Text(
                    'Accounting',
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
                color: Color.fromRGBO(241, 173, 136, 1),
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
                    color: Color.fromRGBO(241, 173, 136, 1),
                    child: ImageIcon(
                      AssetImage("assets/images/titleAccounting.png"),
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  Text(
                    'Accounting',
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
