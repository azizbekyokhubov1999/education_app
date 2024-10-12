import 'package:flutter/material.dart';
import 'package:small_education_app/screens/play_course.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF8EFEA),
      appBar: AppBar(
        backgroundColor: Color(0xFFF8EFEA),
        title: Text(
            "Web Design Course",
          style: TextStyle(
            color: Color(0xFF5D4037)
          ),
        ),
        iconTheme: IconThemeData(
          color: Color(0xFF5D4037)
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset("assets/web design.png",
                    height: screenHeight * 0.3,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                        child: CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.9),
                          child: Icon(Icons.play_arrow,
                          color: Color(0xFFFF6F00),
                          ),
                        ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.all(screenWidth * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Web Design Course",
                        style: TextStyle(
                          color: Color(0xFF5D4037),
                          fontSize: screenHeight * 0.035,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      LinearProgressIndicator(
                        value: 0.4,
                        color: Color(0xFFFF6F00),
                        backgroundColor: Color(0xFFF8EFEA),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$25.99",
                            style: TextStyle(
                              color: Color(0xFFFF6F00),
                              fontSize: screenHeight * 0.035,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "4.3",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenHeight * 0.025,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.01),
                              Icon(
                                Icons.star,
                                  color: Color(0xFFFF6F00),
                                size: screenHeight * 0.03,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          infoCard(Icons.book, "24", "Classes", screenHeight, screenWidth),
                          infoCard(Icons.access_time, "2 hours", "Time", screenHeight, screenWidth),
                          infoCard(Icons.chair, "36", "Seats", screenHeight, screenWidth),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: screenHeight * 0.02,
                        height: 1.5
                      ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: screenHeight * 0.03)
                    ],
                  ),
                ),
                
              ],
            )
        ),
      ),
      bottomNavigationBar: Container(
        height: screenHeight * 0.1,
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(screenHeight * 0.01),
              decoration: BoxDecoration(
                color: Color(0xFF5D4037),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    spreadRadius: 4,
                  ),
                ],
              ),
              child: Icon(
                Icons.favorite_rounded,
                color: Colors.white,
                size: screenHeight * 0.04,
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>
                          PlayCourse(),
                  ));
                },
                child: Container(
                  height: screenHeight * 0.07,
                  width: screenWidth * 0.7,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF6F00),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(0, 4)
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Join Course",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenHeight * 0.025,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget infoCard(
      IconData icon,
      String title,
      String subtitle,
      double screenHeight,
      double screenWidth,
      ){
    return Container(
      width: screenWidth * 0.25,
      padding: EdgeInsets.symmetric(
        vertical: screenHeight * 0.02
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 2
          ),
        ]
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: Color(0xFFFF6F00),
            size: screenHeight * 0.03,
          ),
          Text(
            title,
            style: TextStyle(
              color: Color(0xFFFF6F00),
              fontWeight: FontWeight.w500,
              fontSize: screenHeight * 0.02
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
                color: Color(0xFFA4A2A5),
                fontWeight: FontWeight.w500,
                fontSize: screenHeight * 0.018
            ),
          ),
        ],
      ),
    );
  }
}
