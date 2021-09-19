import 'package:flutter/material.dart';

class BlogPost extends StatelessWidget {
  const BlogPost({
    Key? key,
    required this.articleTitle,
      required this.authorName,
      required this.image,
      required this.userProfile
  }) : super(key: key);
  final String authorName;
  final String articleTitle;
  final String image;
  final String userProfile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 20.0,
              width: 20.0,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black)),
                  child: Image.asset(userProfile),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              authorName,
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              articleTitle,
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        GestureDetector(
          //
          // insert navigate to blog details here
          //
          // add hero animation
          //
          onTap: () {},
          child: Container(
            height: 200,
            width: double.infinity,
            child: Image.asset(image),
          ),
        ),
      ],
    );
  }
}
