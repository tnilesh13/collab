import 'package:flutter/material.dart';
import 'package:new_app/helper/util.dart';
import 'package:new_app/some_screens/read_json.dart';
import 'package:video_player/video_player.dart';

class WidgetVideoPlayer extends StatefulWidget {
  const WidgetVideoPlayer({super.key});

  @override
  State<WidgetVideoPlayer> createState() => _WidgetVideoPlayerState();
}

class _WidgetVideoPlayerState extends State<WidgetVideoPlayer> {
  VideoPlayerController? _videoController;
   Future<void>? _initializeVideoPlayerFuture;
   Map<dynamic, dynamic>? myMap;
   String? srcc;

  @override
  void initState() {
    super.initState();

    ReadJsonFile.readJsonData(path: "assets/json/video.json").then((value) {
      // setState(() {
        myMap = value["VideoView"];
        // print("myMapppp$myMap");
        print("mysrccccccc${myMap!['Src']}");
     srcc = myMap!["Src"];
      // });
    });
        print("mysrccccccc$srcc");
    _videoController =
        VideoPlayerController.networkUrl(Uri.parse(srcc!));

    _initializeVideoPlayerFuture = _videoController!.initialize();
  }

  @override
  void dispose() {
    _videoController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var textColor = Util.getColorFromHex(myMap!["TextView"]["FontColor"]);
    // var bgColor = Util.getColorFromHex(myMap!["BackgroundColor"]);


    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(138, 124, 4, 0),
          title: const Text("Video Player"),
        ),
        body: Container(
          width: double.infinity,
          // color: bgColor,
          child: Column(
            children: [
              MyVideo(_videoController!, _initializeVideoPlayerFuture!),
              // Text(
              //   myMap!["TextView"]["Description"],
              //   style: TextStyle(
              //       color: textColor,
              //       fontWeight: FontWeight.bold,
              //       fontSize: myMap!["TextView"]['DescriptionFontSize']),
              // ),
            ],
          ),
        ));
  }
}

class MyVideo extends StatefulWidget {
  late VideoPlayerController _videoController;
  late Future<void> _initializeVideoPlayerFuture;
  MyVideo(this._videoController, this._initializeVideoPlayerFuture);

  @override
  State<MyVideo> createState() => _MyVideoState();
}

class _MyVideoState extends State<MyVideo> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: widget._initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return InkWell(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(children: [
                      AspectRatio(
                        aspectRatio: widget._videoController.value.aspectRatio,
                        child: VideoPlayer(widget._videoController),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: widget._videoController.value.isPlaying
                            ? Text("")
                            : Icon(
                                widget._videoController.value.isPlaying
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                size: 48,
                              ),
                      )
                    ])
                  ]),
              onTap: () {
                setState(() {
                  if (widget._videoController.value.isPlaying) {
                    widget._videoController.pause();
                  } else {
                    widget._videoController.play();
                  }
                });
              },
            );
          } else {
            return CircularProgressIndicator();
          }
        });
  }
  
  @override
  void dispose() {
    widget._videoController.dispose();
    super.dispose();
  }
}