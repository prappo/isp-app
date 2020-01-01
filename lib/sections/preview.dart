import 'package:ecommerce/models/channels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_video_player/flutter_simple_video_player.dart';

class PreviewSection extends StatelessWidget {
  final Channel channel;
  PreviewSection(this.channel);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
//        height: 300.0,
//      child: SimpleViewPlayer("http://27.147.156.14:1935/Durunto-TV/Duronto-TV.stream/playlist.m3u8", isFullScreen: false,),
        child: SimpleViewPlayer(
          channel.path,
          isFullScreen: false,
        ),
      ),
    );
  }
}
