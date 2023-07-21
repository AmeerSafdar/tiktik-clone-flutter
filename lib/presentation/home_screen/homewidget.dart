// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tiktokclone/presentation/home_screen/image_anim.dart';
import 'package:video_player/video_player.dart';

import '../../helper/color_helper.dart';
import '../../model/videos_model.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({
    Key? key,
  }) : super(key: key);
  VideoPlayerController? _controller;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: PageController(
            initialPage: 0,
            viewportFraction: 1,
          ),
          itemCount: videos_List.length,
          onPageChanged: (index) {
            index = index % (videos_List.length);
          },
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            _controller = VideoPlayerController.network(videos_List[index].url)
              ..initialize().then((value) {
                _controller!.setLooping(true);
                _controller!.play();
              });
            index = index % (videos_List.length);
            // return Text("hello $index");
            return Stack(
              children: [
                Container(
                  height: double.infinity,
                  child: AspectRatio(
                    aspectRatio: _controller!.value.aspectRatio,
                    child: VideoPlayer(_controller!),
                  ),
                ),
                Positioned(
                    right: 10,
                    bottom: 40,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  NetworkImage(videos_List[index].user_pic),
                            ),
                            Positioned(
                                bottom: -5,
                                left: 20,
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.red,
                                      child: Icon(
                                        Icons.add,
                                        color: white_clr,
                                      ),
                                    )
                                    // child: Container(
                                    //   height: 20,
                                    //   width: 20,
                                    //   decoration: BoxDecoration(
                                    //       color: Colors.red,
                                    //       shape: BoxShape.circle),
                                    //   child: Icon(
                                    //     Icons.add,
                                    //     color: white_clr,
                                    //   ),
                                    // ),
                                    ))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.favorite,
                          size: 50,
                          color: white_clr,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          videos_List[index].likes,
                          style: TextStyle(
                            color: white_clr,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.bubble_chart_outlined,
                          size: 50,
                          color: white_clr,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          videos_List[index].comments,
                          style: TextStyle(
                            color: white_clr,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Transform.rotate(
                          angle: 0.0,
                          child: Icon(
                            Icons.reply,
                            size: 50,
                            color: white_clr,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          videos_List[index].likes,
                          style: TextStyle(
                            color: white_clr,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          child: CircleImageAnimation(
                            child: Positioned(
                                child: Container(
                                    padding: EdgeInsets.all(1.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10000.0),
                                        child: CachedNetworkImage(
                                          imageUrl: videos_List[index].user_pic,
                                          placeholder: (context, url) =>
                                              CircularProgressIndicator(),
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error),
                                        )))),
                          ),
                        )
                      ],
                    )),
                Positioned(
                  left: 20,
                  bottom: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "@${videos_List[index].user}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: white_clr),
                      ),
                      Text(
                        videos_List[index].video_title,
                        style: TextStyle(color: white_clr),
                      ),
                      Text(
                        videos_List[index].song_name,
                        style: TextStyle(color: white_clr),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ],
    );
  }
}
