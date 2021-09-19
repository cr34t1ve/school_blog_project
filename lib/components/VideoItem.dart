import 'package:flutter/material.dart';

class VideoItem extends StatelessWidget {
  const VideoItem({
    Key? key,
    this.image, this.time, this.title
  }) : super(key: key);
  final String? image;
  final String? time;
  final String? title;

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
            decoration: BoxDecoration(
                border: Border.all(),
                image: DecorationImage(
                    image: ExactAssetImage(
                      image!,
                    ),
                    fit: BoxFit.fitHeight)),
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 70,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Text(title!),
          Text(time!),
        ],
      ),
    );
  }
}
