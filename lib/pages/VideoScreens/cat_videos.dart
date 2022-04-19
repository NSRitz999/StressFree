import 'package:flutter/material.dart';
import 'package:firstapp/utils/add_videos.dart';

import '../../utils/video_player.dart';

class CatVideos extends StatelessWidget {
  const CatVideos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cute Cat Videos"),
      ),
      body: Column(
        children: [
          VideoPlayer(collectionPath: 'cute cat videos'),
          // VideoScreen(collectionPath: 'cute cat videos')
        ],
      ),
    );
  }
}
