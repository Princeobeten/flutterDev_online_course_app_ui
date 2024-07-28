import 'package:flutter/material.dart';
import 'package:flutter_online_learning_app/widget/my_horizontal_list.dart';
import 'package:flutter_online_learning_app/widget/my_vertical_list.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Online',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                Text(
                  'Master Class',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 36,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              height: 349,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 1,
                itemBuilder: (context, index) {
                  return const Row(
                    children: [
                      MyHorizontalList(
                        startColor: 0xFF9288E4,
                        endColor: 0xFF534EA7,
                        courseHeadline: 'Recomended',
                        courseTitle: 'UI DESIGN',
                        courseLevel: 'BEGINNER',
                        courseImage: 'assets/images/img_saly10.png',
                        courseHeadlineColor: 0xFFAFABEE,
                      ),
                      MyHorizontalList(
                        startColor: 0xFFF4C465,
                        endColor: 0xFFC63956,
                        courseHeadline: 'Recomended',
                        courseTitle: 'GRAPHIC DESIGN',
                        courseLevel: 'MASTER',
                        courseImage: 'assets/images/img_saly36_detail.png',
                        courseHeadlineColor: 0xFFF9D48C,
                      ),
                      MyHorizontalList(
                        startColor: 0xFFC488E4,
                        endColor: 0xFF8B4EA7,
                        courseHeadline: 'Recomended',
                        courseTitle: 'UX DESIGN',
                        courseLevel: 'BEGINNER',
                        courseImage: 'assets/images/img_saly10.png',
                        courseHeadlineColor: 0xFFDAABEE,
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 34),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Free Online Class',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'From over 80 lectures',
                  style: GoogleFonts.roboto(
                    color: const Color(0XFF9C9A9A),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const Column(
                  children: [
                    MyVerticalList(
                      courseImage: 'assets/images/img_saly24.png',
                      courseTitle: 'Self Development',
                      courseDuration: '4 Hourse',
                      courseRating: 2.1,
                      courseBoxColor: 0xFF3E3A6D,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
