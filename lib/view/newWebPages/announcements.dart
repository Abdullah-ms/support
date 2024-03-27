import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../constants/fetchData.dart';
import '../../constants/my_url_button.dart';
import '../../constants/variables.dart';
import '../../core/functions/url_LaunchInBrowserView.dart';

class Announcements extends StatefulWidget {
  const Announcements({Key? key}) : super(key: key);

  @override
  State<Announcements> createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
  
//-------------------------

  List announcementsLink = [];

  Future readDataAnnouncementsLink() async {
    var url = "http://10.4.1.208/myphp/mylinks/announcementlinks.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resBody = jsonDecode(res.body);
      setState(() {
        announcementsLink.addAll(resBody);
      });
    }
  }

  getDataAnnouncementsLink() async {
    await readDataAnnouncementsLink();
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


  @override
  void initState() {
    getDataAnnouncementsLink();
    getImageData();
    super.initState();
  }

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
          title: "Announcements".tr,
          content: Container(
            margin: EdgeInsets.all(3),
            padding: EdgeInsets.all(borderpadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: lighttextandtitle, width: borderwidth),
            ),
            child: FutureBuilder(
                future: readData(announcementsAPI),
                builder: (BuildContext ctx, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DialogButton('${snapshot.data[0]['title']}',
                            '${snapshot.data[0]['body']}'),
                        DialogButton('${snapshot.data[1]['title']}',
                            '${snapshot.data[1]['body']}'),
                        //اعلان قديم يوضع مكانه جديد بأي وقت
                        TextButton.icon(
                          onPressed: () {
                            Get.defaultDialog(
                              buttonColor: Colors.red,
                              textCancel: "Close".tr,
                              cancelTextColor: Colors.red,
                              onCancel: () {
                                Get.previousRoute;
                              },
                              title: "${snapshot.data[2]['title']}".tr,
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
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        SelectableText(
                                          showCursor: true,
                                          cursorColor: Colors.redAccent,
                                          onTap: () {
                                            Clipboard.setData(ClipboardData(
                                              text: '${snapshot.data[2]['body']}',
                                            ));
                                          },
                                          '${snapshot.data[2]['body']}',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(color: lightbodycolor),
                                        ),
                                        TextButton.icon(
                                          onPressed: () {
                                            _launchURL() async {
                                              var url =
                                                  '${announcementsLink[0]['myurl']}';
                                              if (await canLaunch(url)) {
                                                await launch(url);
                                              } else {
                                                throw 'Could not launch $url';
                                              }
                                            }

                                            _launchURL();
                                          },
                                          icon: Icon(
                                            Icons.add_circle,
                                            size: iconsize,
                                            color: iconcolor,
                                          ),
                                          label: Text(
                                              '${announcementsLink[0]['myurl']}',
                                              style: textOfFAB),
                                        ),
                                      ],
                                    ),
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
                            '${snapshot.data[2]['title']}'.tr,
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
                              title: "${snapshot.data[3]['title']}".tr,
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
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        SelectableText(
                                          showCursor: true,
                                          cursorColor: Colors.redAccent,
                                          onTap: () {
                                            Clipboard.setData(ClipboardData(
                                              text: '${snapshot.data[3]['body']}',
                                            ));
                                          },
                                          '${snapshot.data[3]['body']}',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(color: lightbodycolor),
                                        ),
                                        TextButton.icon(
                                          onPressed: () {
                                            _launchURL() async {
                                              var url =
                                                  '${announcementsLink[1]['myurl']}';
                                              if (await canLaunch(url)) {
                                                await launch(url);
                                              } else {
                                                throw 'Could not launch $url';
                                              }
                                            }

                                            _launchURL();
                                          },
                                          icon: Icon(
                                            Icons.add_circle,
                                            size: iconsize,
                                            color: iconcolor,
                                          ),
                                          label: Text(
                                              '${announcementsLink[1]['myurl']}',
                                              style: textOfFAB),
                                        ),
                                      ],
                                    ),
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
                            '${snapshot.data[3]['title']}'.tr,
                            style: TextStyle(fontSize: textsize),
                          ),
                          style: textbuttonStyle,
                        ),
                        DialogButton('${snapshot.data[4]['title']}',
                            '${snapshot.data[4]['body']}'),
                        TextButton.icon(
                          onPressed: () {
                            Get.defaultDialog(
                              buttonColor: Colors.red,
                              textCancel: "Close".tr,
                              cancelTextColor: Colors.red,
                              onCancel: () {
                                Get.previousRoute;
                              },
                              title: "${snapshot.data[5]['title']}".tr,
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
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        SelectableText(
                                          showCursor: true,
                                          cursorColor: Colors.redAccent,
                                          onTap: () {
                                            Clipboard.setData(ClipboardData(
                                              text: '${snapshot.data[5]['body']}',
                                            ));
                                          },
                                          '${snapshot.data[5]['body']}',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(color: lightbodycolor),
                                        ),
                                        /* TextButton.icon(
                                  onPressed: () {
                                    _launchURL() async {
                                      var url = '${announcementslink[2]['myurl']}';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    }

                                    _launchURL();
                                  },
                                  icon: Icon(
                                    Icons.add_circle,
                                    size: iconsize,
                                    color: iconcolor,
                                  ),
                                  label: Text('${announcementslink[2]['title']}',
                                      style: textOfFAB),
                                ),*/
                                        TextButton.icon(
                                          onPressed: () {
                                            _launchURL() async {
                                              var url =
                                                  '${announcementsLink[4]['myurl']}';
                                              if (await canLaunch(url)) {
                                                await launch(url);
                                              } else {
                                                throw 'Could not launch $url';
                                              }
                                            }

                                            _launchURL();
                                          },
                                          icon: Icon(
                                            Icons.video_library,
                                            size: iconsize,
                                            color: iconcolor,
                                          ),
                                          label: Text(
                                              '${announcementsLink[4]['title']}',
                                              style: textOfFAB),
                                        ),
                                        TextButton.icon(
                                          onPressed: () {
                                            _launchURL() async {
                                              var url =
                                                  '${announcementsLink[5]['myurl']}';
                                              if (await canLaunch(url)) {
                                                await launch(url);
                                              } else {
                                                throw 'Could not launch $url';
                                              }
                                            }

                                            _launchURL();
                                          },
                                          icon: Icon(
                                            Icons.add_circle,
                                            size: iconsize,
                                            color: Colors.green,
                                          ),
                                          label: Text(
                                              '${announcementsLink[5]['title']}',
                                              style: textOfFAB),
                                        ),
                                        TextButton.icon(
                                          onPressed: () {
                                            _launchURL() async {
                                              var url =
                                                  '${announcementsLink[6]['myurl']}';
                                              if (await canLaunch(url)) {
                                                await launch(url);
                                              } else {
                                                throw 'Could not launch $url';
                                              }
                                            }

                                            _launchURL();
                                          },
                                          icon: Icon(
                                            Icons.video_library,
                                            size: iconsize,
                                            color: iconcolor,
                                          ),
                                          label: Text(
                                              '${announcementsLink[6]['title']}',
                                              style: textOfFAB),
                                        ),
                                        TextButton.icon(
                                          onPressed: () {
                                            _launchURL() async {
                                              var url =
                                                  '${announcementsLink[7]['myurl']}';
                                              if (await canLaunch(url)) {
                                                await launch(url);
                                              } else {
                                                throw 'Could not launch $url';
                                              }
                                            }

                                            _launchURL();
                                          },
                                          icon: Icon(
                                            Icons.add_circle,
                                            size: iconsize,
                                            color: Colors.green,
                                          ),
                                          label: Text(
                                              '${announcementsLink[7]['title']}',
                                              style: textOfFAB),
                                        ),
                                      ],
                                    ),
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
                            '${snapshot.data[5]['title']}'.tr,
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
                              title: "${snapshot.data[6]['title']}".tr,
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
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        SelectableText(
                                          showCursor: true,
                                          cursorColor: Colors.redAccent,
                                          onTap: () {
                                            Clipboard.setData(ClipboardData(
                                              text: '${snapshot.data[6]['body']}',
                                            ));
                                          },
                                          '${snapshot.data[6]['body']}',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(color: lightbodycolor),
                                        ),
                                        TextButton.icon(
                                          onPressed: () {
                                            _launchURL() async {
                                              var url =
                                                  '${announcementsLink[3]['myurl']}';
                                              if (await canLaunch(url)) {
                                                await launch(url);
                                              } else {
                                                throw 'Could not launch $url';
                                              }
                                            }

                                            _launchURL();
                                          },
                                          icon: Icon(
                                            Icons.add_circle,
                                            size: iconsize,
                                            color: iconcolor,
                                          ),
                                          label: Text(
                                              '${announcementsLink[3]['myurl']}',
                                              style: textOfFAB),
                                        ),
                                      ],
                                    ),
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
                            '${snapshot.data[6]['title']}'.tr,
                            style: TextStyle(fontSize: textsize),
                          ),
                          style: textbuttonStyle,
                        ),
                        //اعلان العروض تم نقله الى الاخير للترتيب فقط index = 7
                        TextButton.icon(
                          onPressed: () {
                            Get.defaultDialog(
                              buttonColor: Colors.red,
                              textCancel: "Close".tr,
                              cancelTextColor: Colors.red,
                              onCancel: () {
                                Get.previousRoute;
                              },
                              title: "${snapshot.data[8]['title']}".tr,
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
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        SelectableText(
                                          showCursor: true,
                                          cursorColor: Colors.redAccent,
                                          onTap: () {
                                            Clipboard.setData(ClipboardData(
                                              text: '${snapshot.data[8]['body']}',
                                            ));
                                          },
                                          '${snapshot.data[8]['body']}',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(color: lightbodycolor),
                                        ),
                                        TextButton.icon(
                                          onPressed: () {
                                            _launchURL() async {
                                              var url =
                                                  '${announcementsLink[9]['myurl']}';
                                              if (await canLaunch(url)) {
                                                await launch(url);
                                              } else {
                                                throw 'Could not launch $url';
                                              }
                                            }

                                            _launchURL();
                                          },
                                          icon: Icon(
                                            Icons.add_circle,
                                            size: iconsize,
                                            color: iconcolor,
                                          ),
                                          label: Text(' رابط الاعلان : اضغط هنا ',
                                              style: textOfFAB),
                                        ),
                                        TextButton.icon(
                                          onPressed: () {
                                            _launchURL() async {
                                              var url =
                                                  '${announcementsLink[11]['myurl']}';
                                              if (await canLaunch(url)) {
                                                await launch(url);
                                              } else {
                                                throw 'Could not launch $url';
                                              }
                                            }

                                            _launchURL();
                                          },
                                          icon: Icon(
                                            Icons.add_circle,
                                            size: iconsize,
                                            color: iconcolor,
                                          ),
                                          label: Text(
                                              ' لتحميل التطبيق من جوجل بلي : اضغط هنا ',
                                              style: textOfFAB),
                                        ),
                                        TextButton.icon(
                                          onPressed: () {
                                            _launchURL() async {
                                              var url =
                                                  '${announcementsLink[12]['myurl']}';
                                              if (await canLaunch(url)) {
                                                await launch(url);
                                              } else {
                                                throw 'Could not launch $url';
                                              }
                                            }

                                            _launchURL();
                                          },
                                          icon: Icon(
                                            Icons.add_circle,
                                            size: iconsize,
                                            color: iconcolor,
                                          ),
                                          label: Text('مواقع خدمة FastPay',
                                              style: textOfFAB),
                                        ),
                                      ],
                                    ),
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
                            '${snapshot.data[8]['title']}'.tr,
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
                              title: "${snapshot.data[9]['title']}".tr,
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
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        SelectableText(
                                          showCursor: true,
                                          cursorColor: Colors.redAccent,
                                          onTap: () {
                                            Clipboard.setData(ClipboardData(
                                              text: '${snapshot.data[9]['body']}',
                                            ));
                                          },
                                          '${snapshot.data[9]['body']}',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(color: lightbodycolor),
                                        ),
                                        TextButton.icon(
                                          onPressed: () {
                                            _launchURL() async {
                                              var url =
                                                  '${announcementsLink[14]['myurl']}';
                                              if (await canLaunch(url)) {
                                                await launch(url);
                                              } else {
                                                throw 'Could not launch $url';
                                              }
                                            }

                                            _launchURL();
                                          },
                                          icon: Icon(
                                            Icons.add_circle,
                                            size: iconsize,
                                            color: iconcolor,
                                          ),
                                          label: Text(' لمعرفة المزيد من التفاصيل : اضغط هنا ',
                                              style: textOfFAB),
                                        ),

                                      ],
                                    ),
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
                            '${snapshot.data[9]['title']}'.tr,
                            style: TextStyle(fontSize: textsize),
                          ),
                          style: textbuttonStyle,
                        ),
                        //index = 7
                        TextButton.icon(
                          onPressed: () {
                            Get.defaultDialog(
                              buttonColor: Colors.red,
                              textCancel: "Close".tr,
                              cancelTextColor: Colors.red,
                              onCancel: () {
                                Get.previousRoute;
                              },
                              title: "${snapshot.data[7]['title']}".tr,
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
                                    itemCount: 1,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(myImages[2]['text' '${index + 1}'],
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(color: lightbodycolor)),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Center(
                                              child: Image.network(
                                                  '${myImages[2]['image' '${index + 1}']}')),
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
                            '${snapshot.data[7]['title']}'.tr,
                            style: TextStyle(color: lighttextandtitle, fontSize: textsize),
                          ),
                          style: textbuttonStyle,
                        ),
                        TextButton.icon(
                          onPressed: () {
                            launchInBrowserView("${announcementsLink[15]['myurl']}");
                          },
                          label: Text(
                            "${announcementsLink[15]['title']}",
                            style: TextStyle(fontSize: textsize),
                          ),
                          icon: Icon(
                            Icons.label_important,
                            size: iconsize,
                            color: iconcolor,
                          ),
                          style: textbuttonStyle,
                        ),
                        TextButton.icon(
                          onPressed: () {
                            launchInBrowserView("${announcementsLink[16]['myurl']}");
                          },
                          label: Text(
                            "${announcementsLink[16]['title']}",
                            style: TextStyle(fontSize: textsize),
                          ),
                          icon: Icon(
                            Icons.label_important,
                            size: iconsize,
                            color: iconcolor,
                          ),
                          style: textbuttonStyle,
                        ),
                      ],
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(color: Colors.transparent),
                    );
                  }
                }),
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
                color: Color.fromRGBO(153, 51, 102, 1),
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
                    color: Color.fromRGBO(153, 51, 102, 1),
                    child: ImageIcon(
                      AssetImage("assets/images/titleAnnouncement.png"),
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Divider(color: Colors.white,),
                  Text(
                    'Announcements',
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
                color: Color.fromRGBO(153, 51, 102, 1),
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
                    color: Color.fromRGBO(153, 51, 102, 1),
                    child: ImageIcon(
                      AssetImage("assets/images/titleAnnouncement.png"),
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Divider(color: Colors.white,),
                  Text(
                    'Announcements',
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
