import 'package:flutter/material.dart';

class VideoItem extends StatelessWidget {
  const VideoItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150.0,
            width: 150.0,
            decoration: BoxDecoration(border: Border.all()),
            child: Icon(Icons.play_arrow),
          ),
          SizedBox(height: 10.0),
          Text('Video Title'),
          Text('Time to watch'),
        ],
      ),
    );
  }
}
