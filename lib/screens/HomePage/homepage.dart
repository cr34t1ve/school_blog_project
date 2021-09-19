import 'package:flutter/material.dart';
import 'package:school_blog_project/components/BlogPost.dart';
import 'package:school_blog_project/components/VideoItem.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Blog Homepage',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Container(
              child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.black12,
                labelColor: Colors.black,
                labelStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w600),
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                      child: Text(
                    'Category 1',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  )),
                  Tab(
                      child: Text(
                    'Category 2',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  )),
                  Tab(
                      child: Text(
                    'Category 2',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  )),
                ],
              ),
            ),
            Expanded(
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
            )
          ],
        ),
      ),
    );
  }
}
