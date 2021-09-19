import 'package:flutter/material.dart';
import 'package:school_blog_project/components/BlogPost.dart';
import 'package:school_blog_project/components/VideoItem.dart';
import 'package:school_blog_project/enum/constants.dart';

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
          // Expanded(
          //   child: ListView.separated(
          //       shrinkWrap: true,
          //       itemBuilder: (context, index) {
          //         return BlogPost(
          //             articleTitle: dummyArticles[index]['title'],
          //             authorName: dummyArticles[index]['authorName'],
          //             image: dummyArticles[index]['image'],
          //             userProfile: dummyArticles[index]['userProfile']);
          //       },
          //       separatorBuilder: (context, index) {
          //         return SizedBox(
          //           height: 10.0,
          //         );
          //       },
          //       itemCount: dummyArticles.length),
          // )
          Column(
            children: [
              BlogPost(
                  articleTitle: dummyArticles[0]['title'],
                  authorName: dummyArticles[0]['authorName'],
                  image: dummyArticles[0]['image'],
                  category: dummyArticles[0]['category'],
                  userProfile: dummyArticles[0]['userProfile']),
              SizedBox(
                height: 10.0,
              ),
              BlogPost(
                  articleTitle: dummyArticles[1]['title'],
                  authorName: dummyArticles[1]['authorName'],
                  image: dummyArticles[1]['image'],
                  category: dummyArticles[1]['category'],
                  userProfile: dummyArticles[1]['userProfile']),
              SizedBox(
                height: 10.0,
              ),
              BlogPost(
                  articleTitle: dummyArticles[2]['title'],
                  authorName: dummyArticles[2]['authorName'],
                  image: dummyArticles[2]['image'],
                  category: dummyArticles[2]['category'],
                  userProfile: dummyArticles[2]['userProfile']),
              SizedBox(
                height: 10.0,
              ),
              BlogPost(
                  articleTitle: dummyArticles[3]['title'],
                  authorName: dummyArticles[3]['authorName'],
                  image: dummyArticles[3]['image'],
                  category: dummyArticles[3]['category'],
                  userProfile: dummyArticles[3]['userProfile']),
              SizedBox(
                height: 10.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
