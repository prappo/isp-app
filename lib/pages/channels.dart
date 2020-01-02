import 'package:ecommerce/config.dart';
import 'package:ecommerce/models/channels.dart';
import 'package:ecommerce/sections/preview.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cached_network_image/cached_network_image.dart';

class TvPage extends StatelessWidget {
  Future<List<Channel>> getChannel() async {
    var config = Config();
    var data = await http.get(config.getApiURL() + "/get/channel/100");
    var jsonData = json.decode(data.body);
    List<Channel> channels = [];
    for (var c in jsonData) {
      Channel channel = Channel(c['id'], c['name'], c['image'], c['path']);
      channels.add(channel);
    }

    return channels;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getChannel(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return Container(
            child: Center(
              child: Text('Ops ! Something went wronng'),
            ),
          );
        }

        if (snapshot.data == null) {
          return Container(
            child: Center(
              child: Text('Please wait ..'),
            ),
          );
        } else {
          return GridView.builder(
            itemCount: snapshot.data.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              PreviewSection(
                                  snapshot.data[index])));
                },
                child: Container(
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        image: NetworkImage(snapshot.data[index].image),
                        fit: BoxFit.fill
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1.5,1.5),
                          color: Colors.black26,
                          blurRadius: 5,

                        )
                      ]
                  ),
//                  child: Text(snapshot.data[index].name),
                ),
              );
            },
          );
        }
      },
    );
  }
}
