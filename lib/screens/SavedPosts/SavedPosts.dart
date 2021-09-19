import 'package:flutter/material.dart';
import 'package:school_blog_project/enum/constants.dart';

class SavedPosts extends StatefulWidget {
  const SavedPosts({Key? key}) : super(key: key);

  @override
  _SavedPostsState createState() => _SavedPostsState();
}

class _SavedPostsState extends State<SavedPosts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: SafeArea(
          top: true,
          bottom: false,
          child: ListView(
            shrinkWrap: true,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 80.0,
                        width: 80.0,
                        child: Image.asset(
                          'assets/images/70.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Lillie Jensen',
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        'Editor at The New York Times',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        dummyArticles[index]['title']!,
                      ),
                      subtitle: Text('2m'),
                      leading: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                                fit: BoxFit.fill,
                                image: ExactAssetImage(
                                    dummyArticles[index]['image']!)),
                            border: Border.all(color: Colors.black)),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: dummyArticles.length)
            ],
          ),
        ),
      ),
    );
  }
}
