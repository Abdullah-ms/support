import 'package:animate_icons/animate_icons.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icon_badge/icon_badge.dart';
import 'package:support/search/search_API.dart';
import 'package:support/view/myhelper/articals.dart';
import 'package:support/view/myhelper/departments.dart';
import 'package:support/view/myhelper/docs_and_files.dart';
import 'package:support/view/myhelper/importantApps.dart';
import 'package:support/view/myhelper/monitoring.dart';
import 'package:support/view/myhelper/mytools.dart';
import 'package:support/view/myhelper/notifications.dart';
import 'package:support/view/myhelper/ourServices.dart';
import 'package:support/view/myhelper/recent.dart';
import 'package:support/view/myhelper/resources.dart';
import 'package:support/view/myhelper/system_hulum.dart';
import 'package:support/view/myhelper/vipHelper.dart';
import 'package:support/view/newWebPages/accountingNew.dart';
import 'package:support/view/newWebPages/announcements.dart';
import 'package:support/view/newWebPages/backofficeNew.dart';
import 'package:support/view/newWebPages/billingNew.dart';
import 'package:support/view/newWebPages/chatNew.dart';
import 'package:support/view/newWebPages/no_service_new.dart';
import 'package:support/view/newWebPages/requestesNew.dart';
import 'package:support/view/newWebPages/resellerTicketNew.dart';
import 'package:support/view/newWebPages/salesNew.dart';
import 'package:support/view/newWebPages/scriptNew.dart';
import 'package:support/view/newWebPages/shabakatyNew.dart';
import 'package:support/view/newWebPages/slow_service_new.dart';
import 'package:support/view/newWebPages/specialcasesNew.dart';
import 'package:support/view/newWebPages/ticketsNew.dart';
import 'package:support/view/newWebPages/vipNew.dart';
import 'package:url_launcher/url_launcher.dart';
import 'constants/fetchData.dart';
import 'constants/my_url_button.dart';
import 'constants/variables.dart';
import 'core/constants/color.dart';
import 'core/constants/route_names.dart';
import 'core/services/services.dart';
import 'feedback/botFB.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'main.dart';
import 'view/myhelper/partners.dart';
import 'view/myhelper/socialMedia.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final int _activePage = 0;
  final _pageController = PageController();

  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();
  final GlobalKey<FabCircularMenuState> fabKey2 = GlobalKey();
  final GlobalKey<FabCircularMenuState> fabKey3 = GlobalKey();

  var notificationCounter = 0;

  bool _showBackToTopButton = false;

// scroll controller
  late ScrollController _scrollController;



  @override
  void initState() {
    getData();
    getDatamyupdates();
    getDataCustomerService2();
    getDataEmployeeTools2();
    getDataMonitor();
    getDatapartners();
    getDataEmulators();
    getDataourApps();
    getDataresources();
    getDatadownloads();

    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 200) {
            _showBackToTopButton = true; // show the back-to-top button
          } else {
            _showBackToTopButton = false; // hide the back-to-top button
          }
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  // This function is triggered when the user presses the back-to-top button
  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  bool darkMode() {
    setState(() {
      lightappbar = darkappbar;
      lightbackground = darkbackground;
      lightappbartitle = darkappbartitle;
      lighttextandtitle = darktextandtitle;
      iconcolor = darkcolor;
      lightbodycolor = darkbodycolor;
      lightdialogbackground = darkdialogbackground;
      lightMainBackground = darkMainBackground;
      lightsubiconcolor = darksubiconcolor;
      lightFAB = darkFAB;
      lightring = darkring;
      lightdroptextcolor = darkdroptextcolor;
      lightdropdownColor = darkdropdownColor;
      mylight = mydark;
    });
    return true;
  }

  bool lightMode() {
    setState(() {
      lightappbar = const Color.fromRGBO(
          0, 128, 128, 1); //  const Color.fromRGBO(0, 159, 255, 1);
      lightbackground = const Color.fromRGBO(255, 255, 255, 1);
      lightappbartitle = const Color.fromRGBO(255, 255, 255, 1);
      lighttextandtitle = const Color.fromRGBO(
          0, 128, 128, 1); // const Color.fromRGBO(0, 159, 255, 1);
      iconcolor = const Color.fromRGBO(244, 26, 32, 1);
      lightbodycolor = Colors.black;
      lightdialogbackground = Colors.white;
      lightMainBackground = const Color.fromRGBO(230, 233, 238, 1);
      lightcolorOFFABbackground = const Color.fromRGBO(255, 255, 255, 1);
      lightsubiconcolor = const Color.fromRGBO(244, 26, 32, 1);
      lightFAB = const Color.fromRGBO(
          0, 128, 128, 0.7); // const Color.fromRGBO(0, 159, 255, 0.7);
      lightring = const Color.fromRGBO(
          0, 128, 128, 0.07); //  const Color.fromRGBO(0, 159, 255, 0.07);
      lightdropdownColor =
          Colors.white; // const Color.fromRGBO(158, 165, 188 ,1);
      mydropFocusColor = const Color.fromRGBO(214, 63, 121, 1);
      lightdroptextcolor = lightappbar; //const Color.fromRGBO(0, 159, 255, 1);
      lightactionicons = const Color.fromRGBO(255, 255, 255, 1);
      mylight = const Color.fromRGBO(0, 128, 128, 0.2);
    });
    return true;
  }

  //------------------------------------

  List myupdates = [];

  Future readDataMyUpdates() async {
    var url = "http://10.4.1.208/myphp/mylinks/myupdates.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        myupdates.addAll(resbody);
      });
    }
  }

  getDatamyupdates() async {
    await readDataMyUpdates();
  }

  //---------------------------------------

  List urlCustomerService2 = [];

  Future readDataCustomerService2() async {
    var url = "http://10.4.1.208/myphp/mylinks/url_customerservice.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        urlCustomerService2.addAll(resbody);
      });
    }
  }

  getDataCustomerService2() async {
    await readDataCustomerService2();
  }

//--------------------------------

  List urlEmployeeTools2 = [];

  Future readDataEmployeeTools2() async {
    var url = "http://10.4.1.208/myphp/mylinks/url_employeetools.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        urlEmployeeTools2.addAll(resbody);
      });
    }
  }

  getDataEmployeeTools2() async {
    await readDataEmployeeTools2();
  }

//-----------------------------------------

  List urlMonitor2 = [];

  Future readDataMonitor() async {
    var url = "http://10.4.1.208/myphp/mylinks/url_monitor.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        urlMonitor2.addAll(resbody);
      });
    }
  }

  getDataMonitor() async {
    await readDataMonitor();
  }

  //---------------------------------

  List partners = [];

  Future readDataPartners() async {
    var url = "http://10.4.1.208/myphp/mylinks/partners.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        partners.addAll(resbody);
      });
    }
  }

  getDatapartners() async {
    await readDataPartners();
  }

  //-----------------------------------

  List emulatorsList2 = [];

  Future readDataEmulators() async {
    var url = "http://10.4.1.208/myphp/mylinks/emulatorslist.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        emulatorsList2.addAll(resbody);
      });
    }
  }

  getDataEmulators() async {
    await readDataEmulators();
  }

  //------------------------------

  List ourApps = [];

  Future readDataOurApps() async {
    var url = "http://10.4.1.208/myphp/mylinks/ourapps.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        ourApps.addAll(resbody);
      });
    }
  }

  getDataourApps() async {
    await readDataOurApps();
  }

  //--------------------------------

  List resources = [];

  Future readDataResources() async {
    var url = "http://10.4.1.208/myphp/mylinks/resources.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        resources.addAll(resbody);
      });
    }
  }

  getDataresources() async {
    await readDataResources();
  }

  //--------------------------------

  List downloads = [];

  Future readDataDownloads() async {
    var url = "http://10.4.1.208/myphp/mylinks/downloads.php";
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      setState(() {
        downloads.addAll(resbody);
      });
    }
  }

  getDatadownloads() async {
    await readDataDownloads();
  }

//----------------------------------------

  bool _isLoading = false; //bool variable created

  void launchTelegram() async {
    String url = "https://telegram.me/<@qcsupportBot>";
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Color.fromRGBO(0, 77, 77, 1),
            Color.fromRGBO(0, 204, 204, 1),
            Color.fromRGBO(0, 128, 128, 1),
            Color.fromRGBO(0, 128, 128, 1),
            Color.fromRGBO(0, 128, 128, 1),
            Color.fromRGBO(0, 77, 77, 1),
            Color.fromRGBO(0, 77, 77, 1),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: DefaultTextStyle(
            style: TextStyle(fontSize: 20.0, color: lightappbartitle),
            child: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'Technical support knowledge base'.tr,
                  textStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  colors: [
                    Colors.white,
                    Colors.white,
                    Color.fromRGBO(0, 204, 204, 1),
                    Color.fromRGBO(0, 204, 204, 1),
                    Color.fromRGBO(0, 204, 204, 1),
                    Colors.white,
                    Colors.white,
                  ],
                ),
              ],
              totalRepeatCount: 8000,
              pause: const Duration(milliseconds: 5),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          elevation: 0,
          leading: const ImageIcon(
            AssetImage("assets/images/hulumLogo.gif"),
            size: 100,
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      elevation: 0,
                      insetAnimationCurve: Curves.easeInCubic,
                      child: SearchAPI(),
                    );
                  },
                );
              },
              icon: Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
            ),
            IconBadge(
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
                itemCount: notificationCounter + 1,
                badgeColor: Colors.red,
                itemColor: lightactionicons,
                hideZero: true,
                onTap: () {
                  setState(
                    () {
                      Get.defaultDialog(
                        title: '''
      Updates : 
              ''',
                        content: Container(
                          height: 400,
                          width: 800,
                          margin: const EdgeInsets.all(3),
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.green, width: borderwidth),
                          ),
                          child: SingleChildScrollView(
                            child: SelectableText(
                              showCursor: true,
                              cursorColor: Colors.redAccent,
                              onTap: () {
                                Clipboard.setData(ClipboardData(
                                  text: "${myupdates[0]["updatetext"]}",
                                ));
                              },
                              "${myupdates[0]["updatetext"]}",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(color: lightbodycolor),
                            ),
                          ),
                        ),
                        backgroundColor: lightdialogbackground,
                        titleStyle: TextStyle(color: lightbodycolor),
                      );
                      notificationCounter = -1;
                    },
                  );
                }),
            AnimateIcons(
              startIcon: Icons.lightbulb_outline,
              endIcon: Icons.lightbulb_outline,
              size: 20.0,
              controller: AnimateIconController(),
              // add this tooltip for the start icon
              startTooltip: 'Enable dark mode',
              // add this tooltip for the end icon
              endTooltip: 'Enable light mode',
              onStartIconPress: () => darkMode(),
              onEndIconPress: () => lightMode(),
              duration: const Duration(milliseconds: 500),
              startIconColor: Colors.yellowAccent,
              endIconColor: AppColor.grey,
              /*            startIconColor: Colors.yellowAccent,
              endIconColor: const Color.fromRGBO(251, 199, 124, 1),*/
              clockwise: true,
            ),
            VerticalDivider(thickness: 1,color: Colors.white,),
            SizedBox(width: 5,),
            Icon(Icons.account_circle_outlined ,color: Colors.lightBlueAccent,),
            Text("$usernameShow",style: TextStyle(color: Colors.lightBlueAccent),),
            SizedBox(width: 5,),
            IconButton(
                onPressed: () {
                  sharedPref.clear();
                  Get.offAllNamed(AppRoute.login);
                },
                icon: const Icon(
                  Icons.exit_to_app,
                  size: 25,
                  color: Colors.redAccent,
                )),
            SizedBox(width: 5,),
          ],
          toolbarHeight: 40,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color.fromRGBO(0, 77, 77, 1),
                  Color.fromRGBO(0, 204, 204, 1),
                  Color.fromRGBO(0, 128, 128, 1),
                  Color.fromRGBO(0, 128, 128, 1),
                  Color.fromRGBO(0, 128, 128, 1),
                  Color.fromRGBO(0, 77, 77, 1),
                  Color.fromRGBO(0, 77, 77, 1),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: Stack(
          children: <Widget>[
            // This is our back-to-top button
            Align(
              alignment: Alignment.bottomRight,
              child: Wrap(
                children: <Widget>[
                  Column(
                    children: [
                      FloatingActionButton.small(
                        tooltip: "Feedback Us",
                        elevation: 10,
                        //hoverColor: Colors.green,
                        hoverElevation: 20,
                        heroTag: "f10",
                        backgroundColor: Colors.white,
                        // const Color.fromRGBO(42, 171, 238, 1),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                elevation: 0,
                                insetAnimationCurve: Curves.easeInCubic,
                                child: BotFB(),
                              );
                            },
                          );
                        },
                        // Feedback,
                        child: Icon(
                          Icons.telegram,
                          size: 40,
                          color: Color.fromRGBO(0, 128, 128, 1),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      _showBackToTopButton == true
                          ? FloatingActionButton.small(
                              heroTag: "f20",
                              backgroundColor: Colors.white,
                              onPressed: _scrollToTop,
                              child: Icon(
                                Icons.arrow_drop_up,
                                size: 15,
                                color: Color.fromRGBO(0, 128, 128, 1),
                              ))
                          : const SizedBox(
                              height: 3,
                            ),
                      SizedBox(
                        height: 28.0,
                        width: 50.0,
                        child: FittedBox(
                          child: DefaultTextStyle(
                            style: const TextStyle(
                                fontSize: 10.0,
                                color: Color.fromRGBO(0, 159, 255, 1)),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                RotateAnimatedText(
                                  'Technical',
                                  textStyle: GoogleFonts.pacifico(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                RotateAnimatedText(
                                  'Support',
                                  textStyle: GoogleFonts.pacifico(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                RotateAnimatedText(
                                  'Quality',
                                  textStyle: GoogleFonts.pacifico(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                              repeatForever: true,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //button first
                  // Add more buttons here
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 31),
              child: FutureBuilder(
                  future: readData(linksAPI),
                  builder: (BuildContext ctx, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return Align(
                        alignment: Alignment.bottomLeft,
                        child: Builder(
                          builder: (context) => FabCircularMenu(
                            key: fabKey,
                            // Cannot be `Alignment.center`
                            alignment:
                                isarabic ? Alignment(1, 0) : Alignment(-1, -0),
                            ringColor: lightring,
                            ringDiameter: 320.0,
                            ringWidth: 80.0,
                            fabSize: 40.0,
                            fabElevation: 5.0,
                            fabIconBorder: CircleBorder(),
                            // Also can use specific color based on wether
                            // the menu is open or not:
                            // fabOpenColor: Colors.white
                            // fabCloseColor: Colors.white
                            // These properties take precedence over fabColor
                            fabColor: Colors.white,
                            // Color.fromRGBO(0, 128, 128, 1),
                            fabOpenIcon: Icon(Icons.menu,
                                color: Color.fromRGBO(0, 128, 128, 1)),
                            fabCloseIcon: Icon(Icons.close,
                                color: Color.fromRGBO(0, 128, 128, 1)),
                            fabMargin: EdgeInsets.all(16.0),
                            animationDuration: Duration(milliseconds: 800),
                            animationCurve: Curves.easeInOutCubic,
                            onDisplayChange: (isOpen) {
                              // Get.defaultDialog(title:"here",content: (Text("here")));
                            },
                            children: <Widget>[
                              buildUrlLaunchButton(
                                  '${snapshot.data[0]['title']}',
                                  '${snapshot.data[0]['myurl']}'),
                              buildUrlLaunchButton(
                                  '${snapshot.data[1]['title']}',
                                  '${snapshot.data[1]['myurl']}'),
                              buildUrlLaunchButton(
                                  '${snapshot.data[2]['title']}',
                                  '${snapshot.data[2]['myurl']}'),
                              buildUrlLaunchButton(
                                  '${snapshot.data[3]['title']}',
                                  '${snapshot.data[3]['myurl']}'),
                              buildUrlLaunchButton(
                                  '${snapshot.data[4]['title']}',
                                  '${snapshot.data[4]['myurl']}'),
                              buildUrlLaunchButton(
                                  '${snapshot.data[5]['title']}',
                                  '${snapshot.data[5]['myurl']}'),
                              buildUrlLaunchButton(
                                  '${snapshot.data[6]['title']}',
                                  '${snapshot.data[6]['myurl']}'),
                              buildUrlLaunchButton(
                                  '${snapshot.data[7]['title']}',
                                  '${snapshot.data[7]['myurl']}'),
                              buildUrlLaunchButton(
                                  '${snapshot.data[8]['title']}',
                                  '${snapshot.data[8]['myurl']}'),
                              buildUrlLaunchButton(
                                  '${snapshot.data[9]['title']}',
                                  '${snapshot.data[9]['myurl']}'),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Align(
                          alignment: Alignment(1, 0),
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 1,
                            backgroundColor: Colors.grey,
                          ));
                    }
                  }),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 2),
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromRGBO(0, 77, 77, 1),
                    Color.fromRGBO(0, 204, 204, 1),
                    Color.fromRGBO(0, 128, 128, 1),
                    Color.fromRGBO(0, 128, 128, 1),
                    Color.fromRGBO(0, 128, 128, 1),
                    Color.fromRGBO(0, 77, 77, 1),
                    Color.fromRGBO(0, 77, 77, 1),
                  ],
                ),
                // color: lightFAB,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0)),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: Row(
                children: [
                  // Expanded(flex : 1,child: Mikrotik()),
                  // Expanded(flex : 1,child: Mimosa()),
                  // Expanded(flex : 1,child: LearnFiber()),
                  //  Expanded(flex : 1,child: Ubnt() ),
                  //   Expanded(flex : 1,child:Manage()),
                  //   Expanded(flex : 1,child: Zabbix()),
                  //   Expanded(flex : 1,child: Routers()),
                  //   Expanded(flex : 1,child: LearnTicket()),
                  //   Expanded(flex : 1,child: LearnBilling()),
                  //   Expanded(flex : 1,child: LearnOthers() ),
                  Expanded(flex: 1, child: Depts()),
                  Expanded(flex: 1, child: MyTools()),
                  Expanded(flex: 1, child: HSystem()),
                  Expanded(flex: 1, child: Monitoring()),
                  Expanded(flex: 1, child: Partners()),
                  Expanded(flex: 1, child: OurServices()),
                  Expanded(flex: 1, child: Resources()),
                  Expanded(flex: 1, child: SocialMedia()),
                  Expanded(flex: 1, child: Notifications()),
                  // Expanded(flex : 1,child: Sheets() ),
                  Expanded(flex: 1, child: LearnDocs()),
                  Expanded(flex: 1, child: LearnApps()),
                  Expanded(flex: 1, child: ArticlePage()),
                  //Expanded(flex : 1,child: VideoPlayer() ),
                  Expanded(flex: 1, child: HelperVIP()),
                  Expanded(flex: 1, child: Recent()),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: 2.0, right: 70.0, left: 2.0),
                      child: Material(
                        elevation: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            color: lightMainBackground,
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Column(
                              children: [
                                /*Container(
                            margin: const EdgeInsets.only(bottom: 4, top: 4),
                            color: lightring,
                            height: 25,
                            child: Marquee(textDirection: TextDirection.rtl ,
                            text: '🔴Hulum          شركة حلم المستقبل لخدمات الانترنت والاتصالات'+ '          🔴Hulum          شركة حلم المستقبل لخدمات الانترنت والاتصالات 2'+'          🔴Hulum          ',
                            style: TextStyle(color: Colors.teal),
                            scrollAxis: Axis.horizontal,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            blankSpace: 40.0,
                            velocity: 100.0,
                            // pauseAfterRound: Duration(seconds: 1),
                            startPadding: 10.0,
                            accelerationDuration: Duration(seconds: 1),
                            accelerationCurve: Curves.linear,
                            decelerationDuration: Duration(milliseconds: 500),
                            decelerationCurve: Curves.easeOut,
                          ),),*/
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Expanded(child: SlowServiceNew()),
                                    Expanded(child: NoServiceNew()),
                                    Expanded(child: SalesNew()),
                                    Expanded(child: BillingNew()),
                                    Expanded(child: TicketsNew()),
                                  ],
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Expanded(child: RequestsNew()),
                                    Expanded(child: AccountingNew()),
                                    Expanded(child: ScriptNew()),
                                    Expanded(child: ResellerNew()),
                                    Expanded(child: VIPNew()),
                                  ],
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Expanded(child: Special2New()),
                                    Expanded(child: BackOfficeNew()),
                                    Expanded(child: Announcements()),
                                    Expanded(child: ChatNew()),
                                    Expanded(child: ShabakatyNew()),
                                    // Expanded(child: SupportTicket()),
                                  ],
                                ),
                                SizedBox(
                                  height: 200,
                                ),
                                Container(
                                  height: 250,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: <Color>[
                                        Color.fromRGBO(0, 77, 77, 1),
                                        Color.fromRGBO(0, 204, 204, 1),
                                        Color.fromRGBO(0, 128, 128, 1),
                                        Color.fromRGBO(0, 128, 128, 1),
                                        Color.fromRGBO(0, 128, 128, 1),
                                        Color.fromRGBO(0, 77, 77, 1),
                                        Color.fromRGBO(0, 77, 77, 1),
                                      ],
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "Copyright © 2023 - 2024 Technical Support Quality",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
