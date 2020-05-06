import 'package:flutter/material.dart';
import 'package:online_course_app/models/constants.dart';
import 'package:online_course_app/models/category.dart';
import 'package:online_course_app/details_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Course App',
      theme: ThemeData(),
      home: DetailsScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset('assets/icons/menu.svg'),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/user.jpg',
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Hello Fahmid.',
              style: kHeadingTextStyle,
            ),
            Text(
              'Find a course that you want to learn.',
              style: kSubheadingextStyle,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xfff5f5f7),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset('assets/icons/search.svg'),
                  SizedBox(width: 15),
                  Text(
                    'Search for your desired course.',
                    style: TextStyle(
                      color: Color(0xffa0a5bd),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Category',
                  style: kTitleTextStyle,
                ),
                Text(
                  'See All',
                  style: kSubtitleTextStyle.copyWith(color: kBlueColor),
                ),
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: StaggeredGridView.countBuilder(
                padding: EdgeInsets.all(0),
                crossAxisCount: 2,
                itemCount: categories.length,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    // height: 100,
                    height: index.isEven ? 200 : 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(categories[index].image),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          categories[index].name,
                          style: kTitleTextStyle,
                        ),
                        Text(
                          '${categories[index].numberOfCourses} Courses',
                          style: TextStyle(
                            color: kTextColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
