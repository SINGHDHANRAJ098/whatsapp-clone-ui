import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/uihelper.dart';

class Chatsscreen extends StatelessWidget {
  var arrContent = [
    {
      "images":
          "https://img.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-confident-nice-smiling-asian-woman-cross-arms-chest-confident-ready-help-listening-coworkers-taking-part-conversation_1258-59335.jpg",
      "name": "ron",
      "lastmsg": "how are you",
      "time": "09:45 am",
      "msg": "1"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage:
                      NetworkImage(arrContent[index]["images"].toString()),
                ),
                title: Uihelper().CustomText(
                    text: arrContent[index]["name"].toString(),
                    height: 14,
                    fontweight: FontWeight.bold),
                subtitle: Uihelper().CustomText(
                    text: arrContent[index]["lastmsg"].toString(),
                    height: 12,
                    color: Color(0XFF889095)),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Uihelper().CustomText(
                        text: arrContent[index]["time"].toString(),
                        height: 11,
                        color: Color(0XFF026500)),
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Color(0XFF036A01),
                      child: Uihelper().CustomText(
                          text: arrContent[index]["msg"].toString(),
                          height: 12,
                          color: Color(0XFFFFFFFF)),
                    )
                  ],
                ),
              );
            },
            itemCount: arrContent.length,
          ),
        ),
        floatingActionButton: CircleAvatar(
          radius: 35,
          backgroundColor: Color(0XFF008665),
          child: Image.asset("assets/images/mode_comment_black_24dp 1.png"),
        ));
  }
}
