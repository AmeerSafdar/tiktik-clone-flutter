// ignore_for_file: non_constant_identifier_names
import 'package:video_player/video_player.dart';

class Videos {
  String comments;
  String likes;
  String song_name;
  String url;
  String user;
  String user_pic;
  String video_title;
  VideoPlayerController? controller;
  Videos(
      {required this.comments,
      required this.likes,
      required this.song_name,
      required this.url,
      required this.user,
      required this.user_pic,
      required this.video_title});

  Future<Null> loadController() async {
    controller = VideoPlayerController.network(url);
    await controller?.initialize();
    controller?.setLooping(true);
  }
}

List<Videos> videos_List = [
  Videos(
      comments: "21",
      likes: "3.2k",
      song_name: "Song Title 1 - Artist 1",
      url:
          // "https://youtu.be/ew5HZWQduSI",
          "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
      user: "user1",
      user_pic:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZefRRvqQt3X-rYyjJuUcnQcaWLuCD4raXPK28GV8C&s",
      video_title: "Video 1"),
  Videos(
      comments: "21",
      likes: "32.2k",
      song_name: "Song Title 2 - Artist 2",
      url:
          // "https://youtu.be/ew5HZWQduSI",
          "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
      user: "user1",
      user_pic:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZefRRvqQt3X-rYyjJuUcnQcaWLuCD4raXPK28GV8C&s",
      video_title: "Video 2"),
];
