import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/my_detailed_vertical_list.dart';

class CourseDetailScreen extends StatefulWidget {
  const CourseDetailScreen({
    Key? key,
    required this.startColor,
    required this.endColor,
    required this.courseImage,
    required this.courseTitle,
    required this.courseLevel,
  }) : super(key: key);

  final int startColor, endColor;
  final String courseTitle, courseLevel, courseImage;

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  String toSentenceCase(String text) {
    if (text.isEmpty) {
      return text;
    }
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 392,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  bottomRight: Radius.circular(22),
                ),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: const Alignment(1, 0.0),
                    colors: <Color>[
                      Color(widget.startColor),
                      Color(widget.endColor)
                    ]),
                image: DecorationImage(
                    alignment: Alignment.bottomRight,
                    image: AssetImage(widget.courseImage)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 18,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Color(0xFFF4c465),
                    ),
                    onRatingUpdate: (rating) {
                      if (kDebugMode) {
                        print(rating);
                      }
                    },
                  ),
                  const SizedBox(height: 22),
                  Row(
                    children: [
                      Text(
                        widget.courseTitle,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        widget.courseLevel,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 29),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 112.5,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/img_user1.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 22.5,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/img_user2.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 45,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/img_user3.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 67.5,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/img_user4.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            "+28K Members",
                            style: GoogleFonts.roboto(
                              color: const Color(0xFFCACACA),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 47,
                        width: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xFF353567),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 12),
                          child: SvgPicture.asset(
                            'assets/images/icon_like.svg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 51,
            ),
            ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              physics: const BouncingScrollPhysics(),
              itemCount: 1,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    MyDetailedVerticalList(
                      boxTitle:
                          "Introduction to ${toSentenceCase(widget.courseTitle)} for ${toSentenceCase(widget.courseLevel)}'s",
                      boxColor: 0xFFDB61A1,
                      boxMinites: 12,
                      boxImage: 'assets/images/img_saly20.png',
                    ),
                    MyDetailedVerticalList(
                      boxTitle:
                          "Basis of ${toSentenceCase(widget.courseTitle)}'s",
                      boxColor: 0xFFF4C465,
                      boxMinites: 14,
                      boxImage: 'assets/images/img_saly25.png',
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
