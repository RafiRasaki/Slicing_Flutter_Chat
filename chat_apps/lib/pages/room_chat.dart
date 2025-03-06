import 'package:chat_apps/pages/home_page.dart';
import 'package:chat_apps/shared/themes.dart';
import 'package:flutter/material.dart';

class RoomChatPage extends StatefulWidget {
  const RoomChatPage({super.key});

  @override
  State<RoomChatPage> createState() => _RoomChatPageState();
}

class _RoomChatPageState extends State<RoomChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: krem,
      body: ListView(
        //padding: EdgeInsets.all(10),
        children: [
          Container(
            width: 120,
            height: 70,
            decoration: BoxDecoration(
              color: white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)
              ),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const HomePage())
                    );
                  }, 
                  icon: const Icon(Icons.arrow_back),
                ),

            const SizedBox(width: 5),
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('assets/laki.png')
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: const Text(
                        'Joshuer',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      //margin: EdgeInsets.only(top: 10),
                      child: Text(
                        'Online',
                        style: TextStyle(
                            fontSize: 13, 
                            fontWeight: FontWeight.w400,
                            color: grey
                          ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 35),
                IconButton(
                  onPressed: (){
                    print('Button Call Success');
                  }, 
                  icon: const Icon(
                    Icons.call_outlined,
                    size: 28,
                  ),
                ),

                IconButton(
                  onPressed: (){
                    print('Button Video Call Success');
                  }, 
                  icon: const Icon(
                    Icons.video_call_rounded,
                    size: 28,
                  ),
                ),

                IconButton(
                  onPressed: (){
                    print('Button More Success');
                  }, 
                  icon: const Icon(Icons.more_vert)
                ),
              ],
            ),
          ),
           Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 5),
            height: 150,
            //color: black,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: 200,
                  height: 110,
                  decoration: BoxDecoration(
                    color: grey,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                    )
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sorry, you not my type because im from asian not american'
                      ),

                  SizedBox(height: 10),

                      Text(
                        '8:32',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
           ),
           Container(
            height: 120,
            padding: const EdgeInsets.only(right: 10),
            //color: black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 200,
                  height: 70,
                  decoration: BoxDecoration(
                    color: grey,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)
                    )
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('its okey, but fuck you bro'),

                       SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '8:50',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500
                            ), 
                          ),
                        ],
                      ), 
                    ],
                  ),
                ),
              ],
            ),
           ),
           

           
        ],
      ),
    );
  }
}