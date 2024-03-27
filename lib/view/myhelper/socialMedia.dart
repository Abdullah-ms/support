import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants/my_url_button.dart';
import '../../constants/variables.dart';
import '../../core/constants/imageassets.dart';
import '../../core/functions/url_LaunchInBrowserView.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {

  List socialMedia = [];

  Future readDataSocialMedia() async {
    var url = "http://10.4.1.208/myphp/mylinks/socialMedia.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        socialMedia.addAll(resbody);
      });
    }
  }

  getDatasocialMedia() async {
    await readDataSocialMedia();
  }

  @override
  void initState() {
    getDatasocialMedia();
    super.initState();
  }


  List socialImages = [
    {
      "image": "assets/images/ourWebsite.gif",
    },
    {
      "image": "assets/images/ourYoutube.gif",
    },
    {
      "image": "assets/images/ourFacebook.gif",
    },
    {
      "image": "assets/images/ourGroup.gif",
    },
    {
      "image": "assets/images/ourLinkedin.gif",
    },
    {
      "image": "assets/images/ourX.gif",
    },
    {
      "image": "assets/images/ourInstagram.gif",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Social Media",
      child: InkWell(
        onTap: () {
          Get.defaultDialog(
            buttonColor: Colors.red,
            textCancel: "Close".tr,
            cancelTextColor: Colors.red,
            onCancel: () {
              Get.previousRoute;
            },
            title: "Social Media".tr,
            content: Container(
              height: dialoghieght,
              width: dialogwidth,
              margin: const EdgeInsets.all(3),
              padding: EdgeInsets.all(borderpadding),
              decoration: BoxDecoration(
                color: mylight,
                borderRadius: BorderRadius.circular(10),
                border:
                Border.all(color: lighttextandtitle, width: borderwidth),
              ),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: socialMedia.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing: 6.0,
                    mainAxisSpacing: 6.0
                ),
                itemBuilder: (BuildContext context, int index){
                  return InkWell(
                    onTap: () {
                      launchInBrowserView('${socialMedia[index]['myurl']}');
                    },
                    child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.all(0), // Border radius
                          child: ClipOval(
                            child: Image.asset(
                              socialImages[index]['image'],
                            ),
                          ),
                        )),
                  );
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
                  AppImageAsset.media,
                ),
              ),
            )),),
    );
  }
}
