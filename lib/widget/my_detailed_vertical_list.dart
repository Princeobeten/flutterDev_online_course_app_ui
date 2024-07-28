import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDetailedVerticalList extends StatefulWidget {
  const MyDetailedVerticalList(
      {Key? key,
      required this.boxColor,
      required this.boxImage,
      required this.boxTitle,
      required this.boxMinites})
      : super(key: key);

  final int boxMinites, boxColor;
  final String boxTitle, boxImage;

  @override
  State<MyDetailedVerticalList> createState() => _MyDetailedVerticalListState();
}

class _MyDetailedVerticalListState extends State<MyDetailedVerticalList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        height: 82,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: const Color(0xFF3E3A6D),
        ),
        child: Row(children: [
          Container(
            height: 82,
            width: 99,
            decoration: BoxDecoration(
              color: Color(widget.boxColor),
              borderRadius: BorderRadius.circular(19),
              image: DecorationImage(
                // alignment: Alignment.bottomRight,
                image: AssetImage(widget.boxImage),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.boxTitle,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        "${widget.boxMinites} Minites",
                        style: GoogleFonts.roboto(
                          color: const Color(0xFFBCBCBC),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        height: 20,
                        width: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFDB61A1),
                          borderRadius: BorderRadius.circular(19),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            'Free',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
