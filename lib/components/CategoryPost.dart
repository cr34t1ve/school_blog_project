import 'package:flutter/material.dart';
import 'package:school_blog_project/components/BlogPost.dart';
import 'package:school_blog_project/components/VideoItem.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          SizedBox(height: 20.0),
          Container(
            height: 200.0,
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 10.0,
                  );
                },
                itemBuilder: (context, index) {
                  return VideoItem();
                }),
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: [
              BlogPost(),
              SizedBox(
                height: 10.0,
              ),
              BlogPost(),
              SizedBox(
                height: 10.0,
              ),
              BlogPost(),
              SizedBox(
                height: 10.0,
              ),
              // ListView.separated(
              //     shrinkWrap: true,
              //     itemCount: 3,
              //     separatorBuilder: (context, index) {
              //       return SizedBox(
              //         height: 10.0,
              //       );
              //     },
              //     itemBuilder: (context, index) {
              //       return BlogPost();
              //     }),
            ],
          )
        ],
      ),
    );
  }
}
