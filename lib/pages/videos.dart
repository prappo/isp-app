import 'package:ecommerce/sections/webview.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: Center(
          child: FlatButton(
            child: Text("Open Webpage"),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => WebViewWidget(
                    title: "Prothom Alo",
                    selectedUrl: "https://chlorinated-naranja.glitch.me/pool.html",
                  )));
            },
          ),
        ));
  }
}
