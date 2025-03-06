import 'package:chat_apps/pages/room_chat.dart';
import 'package:flutter/material.dart';

import '../shared/themes.dart';

class CustomGrup extends StatelessWidget {
  
  final String imggrup;
  final String namegrup;
  final String captiongrup;
  final String timegrup;

  const CustomGrup ({
    Key? key,
    required this.imggrup,
    required this.namegrup,
    required this.captiongrup,
    required this.timegrup,
    }) : super (key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => RoomChatPage())
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
                    image: AssetImage(imggrup),
                  )),
            ),
            const SizedBox(width: 14),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  namegrup,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  captiongrup,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(width: 18),
            Text(
              timegrup,
              style: TextStyle(fontSize: 13, color: grey),
            ),
          ],
        ),
      ),
    );
  }
}