import 'package:chat_apps/pages/room_chat.dart';
import 'package:flutter/material.dart';

import '../shared/themes.dart';

class CustomUser extends StatelessWidget {

  final String image;
  final String name;
  final String caption;
  final String time;

  const CustomUser ({
    Key? key,
    required this.image,
    required this.name,
    required this.caption,
    required this.time,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("Button User");
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => RoomChatPage() ),
        );
      },
      child: Container(
        width: 315,
        height: 55,
        child: Row(
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage(image),
                  )),
            ),
            const SizedBox(width: 14),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  caption,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(width: 50),
            Text(
              time,
              style: TextStyle(fontSize: 13, color: grey),
            ),
          ],
        ),
      ),
    );
  }
}