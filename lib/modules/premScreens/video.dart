import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:video_player/video_player.dart';

/*class videotest extends StatefulWidget {
  const videotest({super.key});

  @override
  State<videotest> createState() => _videoplayerState();
}

class _videoplayerState extends State<videotest> {
   late VideoPlayerController _controller;
  @override
  void initState() {
    // TODO: implement initState
    _controller=VideoPlayerController.network(
         'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    )..initialize().then((_) {
      setState(() {
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('sdfdsfdsafdg'),
    ),
    body: content(),
    floatingActionButton: FloatingActionButton(
      child: Icon(_controller.value.isPlaying?Icons.pause:Icons.play_arrow),
      onPressed: () {
      setState(() {
        _controller.value.isPlaying?_controller.pause():_controller.play();
      });
    },),
    );
  }
 Widget content() {
  return Center(
    child: Container(
       height: 350,
       width: 350,
       child: _controller.value.isInitialized? 
       VideoPlayer(_controller)
       :Container(),
       
    ),
  );
 }
}*/

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;

  VideoPlayerWidget({required this.videoUrl});

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: _controller.value.isInitialized
          ? AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),
      )
          : Container(),
    );
  }


}