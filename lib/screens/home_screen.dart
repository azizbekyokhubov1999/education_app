import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  List<Color> BgColor =[
    Color(0xFFFF6F00),
    Color(0xFF5D4037),
    Color(0xFFF57C00),
    Color(0xFF388E3C),
    Color(0xFF8E24AA),
    Color(0xFFFFC107)
  ];

  List<String> containerList = [
    "Category",
    "Boutique Class",
    "Free Course",
    "Book Store",
    "Live Course",
    "Leaderboard"
  ];

  List<String> CourseImages = [
    "assets/image1.png",
    "assets/image2.png",
    "assets/image3.png",
    "assets/image4.png",
    "assets/web design.png"
  ];

  List<String> CourseTitle = [
    "Flutter Course",
    "Web Course",
    "React Course",
  ];

  List<String> CourseRating = [
    "8.6",
    "8.0",
    "7.5",
  ];

  List<Color> CourseColor = [
    Color(0xFFFF6F00),
    Color(0xFF5D4037),
    Color(0xFFF57C00),
  ];


  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    List<Icon> iconList = [
      Icon(
       Icons.file_copy,
       color: Colors.white,
       size: screenWidth * 0.07,
      ),
      Icon(
        Icons.video_call_rounded,
        color: Colors.white,
        size: screenWidth * 0.07,
      ),
      Icon(
        Icons.padding_sharp,
        color: Colors.white,
        size: screenWidth * 0.07,
      ),
      Icon(
        Icons.video_camera_back_rounded,
        color: Colors.white,
        size: screenWidth * 0.07,
      ),
      Icon(
        Icons.leaderboard,
        color: Colors.white,
        size: screenWidth * 0.07,
      ),
    ];

    return Material(
      color: Color(0xFFF8EFEA),

    );
  }
}
