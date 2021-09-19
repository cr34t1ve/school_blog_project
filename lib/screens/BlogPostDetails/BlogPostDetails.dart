import 'package:flutter/material.dart';

class BlogPostDetails extends StatefulWidget {
  const BlogPostDetails({Key? key}) : super(key: key);

  @override
  _BlogPostDetailsState createState() => _BlogPostDetailsState();
}

class _BlogPostDetailsState extends State<BlogPostDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100.0,
        leading: Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            'Back',
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Text(
              'Save',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  child: Placeholder(),
                ),
                SizedBox(
                  height: 15.0,
                ),
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
                      'Article Category',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 0.0,
            left: 0.0,
            // top: 0.0,
            bottom: 0.0,
            child: Container(
              height: 90.0,
              width: 500,
              decoration: BoxDecoration(border: Border.all()),
              child: Center(
                child: Text(
                  'Share Functionality',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
