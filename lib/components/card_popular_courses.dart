import 'package:flutter/material.dart';

class CardPopularCourses extends StatelessWidget {
  const CardPopularCourses(
      {super.key,
      required this.image,
      required this.price,
      required this.titleCourse});

  final String image;
  final String titleCourse;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 255,
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border.all(color: Color.fromARGB(165, 158, 158, 158), width: 1),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(166, 158, 158, 158),
              blurRadius: 4,
              offset: Offset(1, 1),
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              width: 235,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  image,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 14.0, top: 8),
                  child: Text(
                    titleCourse,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    softWrap: false,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  right: 10,
                ),
                child: Text(
                  price,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'images/star.png',
                    scale: 25,
                  ),
                  Image.asset(
                    'images/star.png',
                    scale: 25,
                  ),
                  Image.asset(
                    'images/star.png',
                    scale: 25,
                  ),
                  Image.asset(
                    'images/star.png',
                    scale: 25,
                  ),
                  Image.asset(
                    'images/star.png',
                    scale: 25,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
