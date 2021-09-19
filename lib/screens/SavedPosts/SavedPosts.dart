import 'package:flutter/material.dart';

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
                        child: Placeholder(),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Author Name',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Author Position',
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
                        'Article Title',
                      ),
                      subtitle: Text('Time to read'),
                      leading: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Placeholder(),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: 8)
            ],
          ),
        ),
      ),
    );
  }
}
