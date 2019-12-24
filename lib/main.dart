import 'package:ecommerce/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

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
      home: MyHomePage(
          title: 'ISP'
      ),
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
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(

          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.notifications,size: 20.0,),
                onPressed: () => print('hi on menu icon'),
              );
            },
          ),
          title: Center(child: Text('ISP',style: TextStyle(
            fontSize: 30.0
          ),)),
          actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.search,size: 20.0,),
              onPressed: () => print('hi on icon action'),
            ),
          ],
        )
,
        body: HomePage(),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
