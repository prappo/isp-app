import 'package:ecommerce/models/channels.dart';
import 'package:ecommerce/sections/preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class TvSection extends StatelessWidget {

  Future<List<Channel>> getTvChannel() async {
    var data =  await http.get("http://103.109.213.138/api/v1/get/featured/channels");
    var jsonData = json.decode(data.body);

    List<Channel> channels = [];

    for(var ch in jsonData){
      Channel channel = Channel(ch['id'],ch['name'],ch['image'],ch['path']);
      channels.add(channel);
    }

    return channels;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.tv),
              SizedBox(
                width: 5,
              ),
              Text(
                'TV Channels',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              Text(
                'Featured',
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            height: 150.0,
            child: FutureBuilder(
              future: getTvChannel(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
              if(snapshot.data == null){
                return Container(
                  child: Center(
                    child: Text('Loading channels..'),
                  ),
                );
              }else{
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PreviewSection(snapshot.data[index])));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10, bottom: 10),
                        width: 90.0,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(2, 2),
                                blurRadius: 5,
                                color: Colors.black26,
                              )
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image:
                                NetworkImage(snapshot.data[index].image),
                                fit: BoxFit.cover)),
                        child: Stack(
                          children: <Widget>[
                            Center(
                              child: Image.asset(
                                "assets/play.png",
                                width: 40,
                              ),
                            ),
                            Container(
                              height: 22,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(5),
                                      topLeft: Radius.circular(10))),
                              child: Text(
                                'Live',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 40,
                                width: 90,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10))),
                                child: Text(
                                  snapshot.data[index].name,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );


                  },
                );
              }
            },

            )
          ),
          Container(
            child: Center(
                child: Container(
                    child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/icons/cricket.png",
                  width: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "assets/icons/football.png",
                  width: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "assets/icons/trophy.png",
                  width: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "assets/icons/live.png",
                  width: 20,
                ),
              ],
            ))),
          ),
          Center(
            child: RaisedButton(
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.live_tv,color: Colors.black45,),
                  SizedBox(width: 10,),
                  Text('View All channels',style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),
                ],
              ),

              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

//
//ListView(
//scrollDirection: Axis.horizontal,
//children: <Widget>[
//Container(
//margin: EdgeInsets.only(right: 10, bottom: 10),
//width: 90.0,
//decoration: BoxDecoration(
//color: Colors.red,
//boxShadow: [
//BoxShadow(
//offset: Offset(2, 2),
//blurRadius: 5,
//color: Colors.black26,
//)
//],
//borderRadius: BorderRadius.all(Radius.circular(10)),
//image: DecorationImage(
//image:
//NetworkImage('https://i.imgur.com/NcgtFek.png'),
//fit: BoxFit.cover)),
//child: Stack(
//children: <Widget>[
//Center(
//child: Image.asset(
//"assets/play.png",
//width: 40,
//),
//),
//Container(
//height: 22,
//width: 50,
//alignment: Alignment.center,
//decoration: BoxDecoration(
//color: Colors.redAccent,
//borderRadius: BorderRadius.only(
//bottomRight: Radius.circular(5),
//topLeft: Radius.circular(10))),
//child: Text(
//'Live',
//style: TextStyle(
//color: Colors.white,
//),
//),
//),
//Positioned(
//bottom: 0,
//child: Container(
//height: 40,
//width: 90,
//alignment: Alignment.center,
//decoration: BoxDecoration(
//color: Colors.white,
//borderRadius: BorderRadius.only(
//bottomRight: Radius.circular(10),
//bottomLeft: Radius.circular(10))),
//child: Text(
//'Channel Name',
//textAlign: TextAlign.center,
//),
//),
//)
//],
//),
//),
//
//],
//),