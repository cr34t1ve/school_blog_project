import 'package:flutter/material.dart';

class BlogPostDetails extends StatefulWidget {
  const BlogPostDetails(
      {Key? key, this.authorName, this.category, this.image, this.title})
      : super(key: key);
  final String? image;
  final String? authorName;
  final String? category;
  final String? title;

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
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              'Back',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
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
                  child: Image.asset(
                    widget.image!,
                    fit: BoxFit.fitWidth,
                  ),
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
                      child: Image.asset(
                        widget.image!,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      widget.authorName!,
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
                      widget.category!,
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
