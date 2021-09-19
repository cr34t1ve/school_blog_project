import 'package:flutter/material.dart';
import 'package:school_blog_project/components/BlogPost.dart';
import 'package:school_blog_project/components/CategoryPost.dart';
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
            CategoryPage()
          ],
        ),
      ),
    );
  }
}

