import 'package:flutter/material.dart';

class BlogPost extends StatelessWidget {
  const BlogPost({
    Key? key,
  }) : super(key: key);

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
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Author Name',
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
              'Article Title',
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 200,
          width: double.infinity,
          child: Placeholder(),
        ),
      ],
    );
  }
}
