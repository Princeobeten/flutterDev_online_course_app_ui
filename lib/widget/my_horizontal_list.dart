import 'package:flutter/material.dart';
import 'package:flutter_online_learning_app/screens/course_detail_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHorizontalList extends StatelessWidget {
  const MyHorizontalList(
      {Key? key,
      required this.startColor,
      required this.endColor,
      required this.courseHeadline,
      required this.courseTitle,
      required this.courseImage,
      required this.courseHeadlineColor,
      required this.courseLevel})
      : super(key: key);

  final int startColor, endColor, courseHeadlineColor;
  final String courseHeadline, courseTitle, courseLevel, courseImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 26),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CourseDetailScreen(
                startColor: startColor,
                endColor: endColor,
                courseTitle: courseTitle,
                courseLevel: courseLevel,
                courseImage: courseImage,
              ),
            ),
          );
        },
        child: Container(
          width: 246,
          height: 349,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: const Alignment(1, 0.0),
              colors: <Color>[Color(startColor), Color(endColor)],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 15,
                left: 11,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 39,
                  decoration: BoxDecoration(
                    color: Color(courseHeadlineColor),
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: Text(
                    courseHeadline,
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 22),
              Positioned(
                top: 80,
                left: 14,
                child: Text(
                  "$courseTitle\n$courseLevel",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset(courseImage, scale: 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
