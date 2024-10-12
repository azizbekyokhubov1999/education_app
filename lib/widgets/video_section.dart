import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {

  List videoList = [
    "Introduction To Web Design",
    "Setup And Installation",
    "Creating HTML Document",
    "Design First Website"
  ];
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
        itemBuilder: (context, index){
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? Color(0xFFFF6F00)
                  : Color(0xFFFF6F00).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(videoList[index]),
          subtitle: Text("20 min 40 sec"),
        );
        }
    );
  }
}
