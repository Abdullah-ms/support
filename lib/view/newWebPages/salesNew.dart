import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';
import 'package:http/http.dart' as http;
import '../../constants/my_url_button.dart';
import '../../constants/variables.dart';

class SalesNew extends StatefulWidget {
  const SalesNew({Key? key}) : super(key: key);

  @override
  State<SalesNew> createState() => _SalesNewState();
}

class _SalesNewState extends State<SalesNew> {
  List salesTitles = [];

  Future readDataSalesTitles() async {
    var url = "http://10.4.1.208/myphp/mydata/sales.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        salesTitles.addAll(resbody);
      });
    }
  }

  getSalesTitles() async {
    await readDataSalesTitles();
  }

  @override
  void initState() {
    getSalesTitles();
    getShops();
    getSalesShop();
    getSalesHotSpot();
    getSalesSubAffiliate();
    getSalesGroup();
    getSalesAffiliateCancellation();
    getSalesMakePointAsSubRepeater();
    getSalesNewPoint();
    getSalesAdminFreeDeactivation();
    getSalesComplaints();
    getSalesInquiries();
    getSalesAgentCompensation();
    super.initState();
  }

//--------------
  List salesShop = [];

  Future readDataSalesShop() async {
    var url = "http://10.4.1.208/myphp/newsales/salesShop.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        salesShop.addAll(resbody);
      });
    }
  }

  getSalesShop() async {
    await readDataSalesShop();
  }

//--------------
  List salesHotSpot = [];

  Future readDataSalesHotSpot() async {
    var url = "http://10.4.1.208/myphp/newsales/salesHotspot.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        salesHotSpot.addAll(resbody);
      });
    }
  }

  getSalesHotSpot() async {
    await readDataSalesHotSpot();
  }

//--------------
  List salesSubAffiliate = [];

  Future readDataSalesSubAffiliate() async {
    var url = "http://10.4.1.208/myphp/newsales/salesSubaffiliate.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        salesSubAffiliate.addAll(resbody);
      });
    }
  }

  getSalesSubAffiliate() async {
    await readDataSalesSubAffiliate();
  }

//--------------
  List salesGroup = [];

  Future readDataSalesGroup() async {
    var url = "http://10.4.1.208/myphp/newsales/salesGroups.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        salesGroup.addAll(resbody);
      });
    }
  }

  getSalesGroup() async {
    await readDataSalesGroup();
  }

//--------------

  List salesAffiliateCancellation = [];

  Future readDataSalesAffiliateCancellation() async {
    var url = "http://10.4.1.208/myphp/newsales/salesAffiliateCancellation.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        salesAffiliateCancellation.addAll(resbody);
      });
    }
  }

  getSalesAffiliateCancellation() async {
    await readDataSalesAffiliateCancellation();
  }

//--------------

  List salesMakePointAsSubRepeater = [];

  Future readDataSalesMakePointAsSubRepeater() async {
    var url =
        "http://10.4.1.208/myphp/newsales/salesMakePointAsSubrepeater.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        salesMakePointAsSubRepeater.addAll(resbody);
      });
    }
  }

  getSalesMakePointAsSubRepeater() async {
    await readDataSalesMakePointAsSubRepeater();
  }

//--------------

  List salesNewPoint = [];

  Future readDataSalesNewPoint() async {
    var url = "http://10.4.1.208/myphp/newsales/salesNewPoint.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        salesNewPoint.addAll(resbody);
      });
    }
  }

  getSalesNewPoint() async {
    await readDataSalesNewPoint();
  }

//--------------

  List salesAdminFreeDeactivation = [];

  Future readDataSalesAdminFreeDeactivation() async {
    var url = "http://10.4.1.208/myphp/newsales/salesAdminFreeDeactivation.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        salesAdminFreeDeactivation.addAll(resbody);
      });
    }
  }

  getSalesAdminFreeDeactivation() async {
    await readDataSalesAdminFreeDeactivation();
  }

//--------------

  List salesComplaints = [];

  Future readDataSalesComplaints() async {
    var url = "http://10.4.1.208/myphp/newsales/salesComplaints.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        salesComplaints.addAll(resbody);
      });
    }
  }

  getSalesComplaints() async {
    await readDataSalesComplaints();
  }

//--------------

  List salesInquiries = [];

  Future readDataSalesInquiries() async {
    var url = "http://10.4.1.208/myphp/newsales/salesInquiries.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        salesInquiries.addAll(resbody);
      });
    }
  }

  getSalesInquiries() async {
    await readDataSalesInquiries();
  }

//--------------

  List salesAgentCompensation = [];

  Future readDataSalesAgentCompensation() async {
    var url = "http://10.4.1.208/myphp/newsales/salesAgentCompensation.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        salesAgentCompensation.addAll(resbody);
      });
    }
  }

  getSalesAgentCompensation() async {
    await readDataSalesAgentCompensation();
  }

//--------------

  // هذا ال API يأتي من داتابيس تعليم

  List shops = [];

  Future readDataShops() async {
    var url = "http://10.4.1.208/myphp/mydata/shops.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        shops.addAll(resbody);
      });
    }
  }

  getShops() async {
    await readDataShops();
  }

  //------------

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
          title: "Sales".tr,
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
                      buttonColor: Colors.blue,
                      textCancel: "Back".tr,
                      cancelTextColor: Colors.blue,
                      onCancel: () {
                        Get.previousRoute;
                      },
                      title: "Shops Table",
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
                                itemCount: shops.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Table(
                                      border: TableBorder.all(
                                          color: index % 2 == 0
                                              ? tablecolor1
                                              : tablecolor2,
                                          width: 1),
                                      columnWidths: const {
                                        0: FlexColumnWidth(1),
                                        1: FlexColumnWidth(1),
                                        2: FlexColumnWidth(3),
                                        3: FlexColumnWidth(1),
                                        4: FlexColumnWidth(4),
                                      },
                                      children: [
                                        TableRow(children: [
                                          Center(
                                            child: SelectableText(
                                              showCursor: true,
                                              cursorColor: Colors.redAccent,
                                              onTap: () {
                                                Clipboard.setData(ClipboardData(
                                                  text:
                                                  "${shops[index]['shops_Province']}",
                                                ));
                                              },
                                              "${shops[index]['shops_Province']}",
                                              textDirection: TextDirection.rtl,
                                              style:
                                              TextStyle(color: lightbodycolor),
                                            ),
                                          ),
                                          Center(
                                            child: SelectableText(
                                              showCursor: true,
                                              cursorColor: Colors.redAccent,
                                              onTap: () {
                                                Clipboard.setData(ClipboardData(
                                                  text:
                                                  "${shops[index]['shops_Shop']}",
                                                ));
                                              },
                                              "${shops[index]['shops_Shop']}",
                                              textDirection: TextDirection.rtl,
                                              style:
                                              TextStyle(color: lightbodycolor),
                                            ),
                                          ),
                                          Center(
                                            child: SelectableText(
                                              showCursor: true,
                                              cursorColor: Colors.redAccent,
                                              onTap: () {
                                                Clipboard.setData(ClipboardData(
                                                  text:
                                                  "${shops[index]['shops_Leader']}",
                                                ));
                                              },
                                              "${shops[index]['shops_Leader']}",
                                              textDirection: TextDirection.rtl,
                                              style:
                                              TextStyle(color: lightbodycolor),
                                            ),
                                          ),
                                          Center(
                                            child: SelectableText(
                                              showCursor: true,
                                              cursorColor: Colors.redAccent,
                                              onTap: () {
                                                Clipboard.setData(ClipboardData(
                                                  text:
                                                  "${shops[index]['shops_Phone']}",
                                                ));
                                              },
                                              "${shops[index]['shops_Phone']}",
                                              textDirection: TextDirection.rtl,
                                              style:
                                              TextStyle(color: lightbodycolor),
                                            ),
                                          ),
                                          Center(
                                            child: SelectableText(
                                              showCursor: true,
                                              cursorColor: Colors.redAccent,
                                              onTap: () {
                                                Clipboard.setData(ClipboardData(
                                                  text:
                                                  "${shops[index]['shops_Address']}",
                                                ));
                                              },
                                              "${shops[index]['shops_Address']}",
                                              textDirection: TextDirection.rtl,
                                              style:
                                              TextStyle(color: lightbodycolor),
                                            ),
                                          ),
                                        ]),
                                      ]);
                                })),
                      ),
                      backgroundColor: lightdialogbackground,
                      titleStyle: TextStyle(color: lightbodycolor),
                    );
                  },
                  icon: Icon(
                    Icons.table_chart_sharp,
                    size: cascadeiconsize,
                    color: iconcolor,
                  ),
                  label: Text(
                    'Shops Table',
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
                      title: "Shop".tr,
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
                              itemCount: salesShop.length,
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
                                              text: "${salesShop[index]['title']}\n\n" +
                                                  "${salesShop[index]['content']}",
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
                                          text: "${salesShop[index]['title']}",
                                        ));
                                      },
                                      "${salesShop[index]['title']}",
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
                                            text: "${salesShop[index]['content']}",
                                          ));
                                        },
                                        "${salesShop[index]['content']}",
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
                    'Shop'.tr,
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
                      title: "Hotspot".tr,
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
                              itemCount: salesHotSpot.length,
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
                                              text: "${salesHotSpot[index]['title']}\n\n" +
                                                  "${salesHotSpot[index]['content']}",
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
                                          text: "${salesHotSpot[index]['title']}",
                                        ));
                                      },
                                      "${salesHotSpot[index]['title']}",
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
                                            "${salesHotSpot[index]['content']}",
                                          ));
                                        },
                                        "${salesHotSpot[index]['content']}",
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
                    'Hotspot'.tr,
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
                      title: "Sub_Affiliate".tr,
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
                              itemCount: salesSubAffiliate.length,
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
                                              text: "${salesSubAffiliate[index]['title']}\n\n" +
                                                  "${salesSubAffiliate[index]['content']}",
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
                                          "${salesSubAffiliate[index]['title']}",
                                        ));
                                      },
                                      "${salesSubAffiliate[index]['title']}",
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
                                            "${salesSubAffiliate[index]['content']}",
                                          ));
                                        },
                                        "${salesSubAffiliate[index]['content']}",
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
                    'Sub_Affiliate'.tr,
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
                      title: "Groups".tr,
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
                              itemCount: salesGroup.length,
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
                                              text: "${salesGroup[index]['title']}\n\n" +
                                                  "${salesGroup[index]['content']}",
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
                                          text: "${salesGroup[index]['title']}",
                                        ));
                                      },
                                      "${salesGroup[index]['title']}",
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
                                            text: "${salesGroup[index]['content']}",
                                          ));
                                        },
                                        "${salesGroup[index]['content']}",
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
                    'Groups'.tr,
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
                      title: "Affiliate Cancellation".tr,
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
                              itemCount: salesAffiliateCancellation.length,
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
                                              text: "${salesAffiliateCancellation[index]['title']}\n\n" +
                                                  "${salesAffiliateCancellation[index]['content']}",
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
                                          "${salesAffiliateCancellation[index]['title']}",
                                        ));
                                      },
                                      "${salesAffiliateCancellation[index]['title']}",
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
                                            "${salesAffiliateCancellation[index]['content']}",
                                          ));
                                        },
                                        "${salesAffiliateCancellation[index]['content']}",
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
                    'Affiliate Cancellation'.tr,
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
                      title: "Make Point as Sub_repeater".tr,
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
                              itemCount: salesMakePointAsSubRepeater.length,
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
                                              text: "${salesMakePointAsSubRepeater[index]['title']}\n\n" +
                                                  "${salesMakePointAsSubRepeater[index]['content']}",
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
                                          "${salesMakePointAsSubRepeater[index]['title']}",
                                        ));
                                      },
                                      "${salesMakePointAsSubRepeater[index]['title']}",
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
                                            "${salesMakePointAsSubRepeater[index]['content']}",
                                          ));
                                        },
                                        "${salesMakePointAsSubRepeater[index]['content']}",
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
                    'Make Point as Sub_repeater'.tr,
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
                      title: "New Point".tr,
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
                              itemCount: salesNewPoint.length,
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
                                              text: "${salesNewPoint[index]['title']}\n\n" +
                                                  "${salesNewPoint[index]['content']}",
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
                                          text: "${salesNewPoint[index]['title']}",
                                        ));
                                      },
                                      "${salesNewPoint[index]['title']}",
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
                                            "${salesNewPoint[index]['content']}",
                                          ));
                                        },
                                        "${salesNewPoint[index]['content']}",
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
                    'New Point'.tr,
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
                      title: "Admin Free Deactivation".tr,
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
                              itemCount: salesAdminFreeDeactivation.length,
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
                                              text: "${salesAdminFreeDeactivation[index]['title']}\n\n" +
                                                  "${salesAdminFreeDeactivation[index]['content']}",
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
                                          "${salesAdminFreeDeactivation[index]['title']}",
                                        ));
                                      },
                                      "${salesAdminFreeDeactivation[index]['title']}",
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
                                            "${salesAdminFreeDeactivation[index]['content']}",
                                          ));
                                        },
                                        "${salesAdminFreeDeactivation[index]['content']}",
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
                    'Admin Free Deactivation'.tr,
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
                      title: "Complaints".tr,
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
                              itemCount: salesComplaints.length,
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
                                              text: "${salesComplaints[index]['title']}\n\n" +
                                                  "${salesComplaints[index]['content']}",
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
                                          "${salesComplaints[index]['title']}",
                                        ));
                                      },
                                      "${salesComplaints[index]['title']}",
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
                                            "${salesComplaints[index]['content']}",
                                          ));
                                        },
                                        "${salesComplaints[index]['content']}",
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
                    'Complaints'.tr,
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
                              itemCount: salesInquiries.length,
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
                                              text: "${salesInquiries[index]['title']}\n\n" +
                                                  "${salesInquiries[index]['content']}",
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
                                          text: "${salesInquiries[index]['title']}",
                                        ));
                                      },
                                      "${salesInquiries[index]['title']}",
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
                                            "${salesInquiries[index]['content']}",
                                          ));
                                        },
                                        "${salesInquiries[index]['content']}",
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
                TextButton.icon(
                  onPressed: () {
                    Get.defaultDialog(
                      buttonColor: Colors.red,
                      textCancel: "Close".tr,
                      cancelTextColor: Colors.red,
                      onCancel: () {
                        Get.previousRoute;
                      },
                      title: "Agent Compensation".tr,
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
                              itemCount: salesAgentCompensation.length,
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
                                              text: "${salesAgentCompensation[index]['title']}\n\n" +
                                                  "${salesAgentCompensation[index]['content']}",
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
                                          "${salesAgentCompensation[index]['title']}",
                                        ));
                                      },
                                      "${salesAgentCompensation[index]['title']}",
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
                                            "${salesAgentCompensation[index]['content']}",
                                          ));
                                        },
                                        "${salesAgentCompensation[index]['content']}",
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
                    'Agent Compensation'.tr,
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
                color: Color.fromRGBO(252, 118, 106, 1),
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
                    color: Color.fromRGBO(252, 118, 106, 1),
                    child: ImageIcon(
                      AssetImage("assets/images/titleSales.png"),
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Divider(color: Colors.white,),
                  Text(
                    'Sales',
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
                color: Color.fromRGBO(252, 118, 106, 1),
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
                    color: Color.fromRGBO(252, 118, 106, 1),
                    child: ImageIcon(
                      AssetImage("assets/images/titleSales.png"),
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Divider(color: Colors.white,),
                  Text(
                    'Sales',
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
