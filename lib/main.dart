import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce/pages/channels.dart';
import 'package:ecommerce/pages/home.dart';
import 'package:ecommerce/pages/news.dart';
import 'package:ecommerce/pages/profile.dart';
import 'package:ecommerce/pages/videos.dart';
import 'package:ecommerce/sections/preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ISP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ISP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 2;
  final tabs = [VideoPage(), TvPage(), HomePage(), NewsPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
//    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
//        backgroundColor: Color(0xffE8EEF5),
        backgroundColor: Colors.blue,
        animationDuration: Duration(milliseconds: 200),

        index: _currentIndex,

        items: <Widget>[
          Icon(Icons.play_arrow, size: 30),
          Icon(
            Icons.tv,
            size: 30,
          ),
          Icon(Icons.home, size: 30),
          Icon(Icons.rss_feed, size: 30),
          Icon(Icons.account_circle, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
          setState(() {
            _currentIndex = index;
          });

        },
      ),

      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.notifications,
                size: 20.0,
              ),
              onPressed: () => print('hi on menu icon'),
            );
          },
        ),
        title: Center(
            child: Image.asset(
          'assets/logo.png',
          width: 30,
        )),
        actions: <Widget>[
          IconButton(
            icon: new Icon(
              Icons.search,
              size: 20.0,
            ),
            onPressed: () => print('hi on icon action'),
          ),
        ],
      ),
      body: tabs[_currentIndex],

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
