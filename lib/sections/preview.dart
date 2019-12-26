import 'package:flutter/material.dart';
import 'package:flutter_simple_video_player/flutter_simple_video_player.dart';

class PreviewSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
//      child: SimpleViewPlayer("http://27.147.156.14:1935/Durunto-TV/Duronto-TV.stream/playlist.m3u8", isFullScreen: false,),
      child: SimpleViewPlayer(
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
        isFullScreen: false,
      ),
    );
  }
}

class PreviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NewPage'),
      ),
      body: Container(
        height: 300.0,
//      child: SimpleViewPlayer("http://27.147.156.14:1935/Durunto-TV/Duronto-TV.stream/playlist.m3u8", isFullScreen: false,),
        child: SimpleViewPlayer(
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
          isFullScreen: false,
        ),
      ),
    );
  }
}
