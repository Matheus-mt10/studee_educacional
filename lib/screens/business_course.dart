import 'package:flutter/material.dart';
import 'package:studee_educational/models/mocks/business_course_video_dto.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BusinessCourse extends StatefulWidget {
  const BusinessCourse({super.key});

  @override
  State<BusinessCourse> createState() => _BusinessCourseState();
}

class _BusinessCourseState extends State<BusinessCourse> {
   final videoUrl = "https://www.youtube.com/watch?v=6RFu-SYt-L8";

  late YoutubePlayerController _controller;

  final List<BusinessCourseVideoDto> _businessCourse = [
    BusinessCourseVideoDto(urlVideo: "https://www.youtube.com/watch?v=jbW4f60dCNA"),
    BusinessCourseVideoDto(urlVideo: "https://www.youtube.com/watch?v=jbW4f60dCNA"),
    BusinessCourseVideoDto(urlVideo: "https://www.youtube.com/watch?v=jbW4f60dCNA"),
    BusinessCourseVideoDto(urlVideo: "https://www.youtube.com/watch?v=jbW4f60dCNA"),
  ];

  

  @override
  void initState() {
    super.initState();
    final videoID = YoutubePlayer.convertUrlToId(videoUrl);
    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(autoPlay: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Business",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Aula 1 - Introdução a business",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 16,
            ),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
            )
          ],
        ),
      ),
    );
  }
}
