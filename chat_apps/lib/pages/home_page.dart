import 'package:chat_apps/shared/themes.dart';
import 'package:chat_apps/widget/custom_grup.dart';
import 'package:chat_apps/widget/custom_user.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.only(right: 10),
                width: 400,
                height: 55,
                //color: black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Chatting Apps',
                      style: TextStyle(
                        fontSize: 18,
                        color: white
                      ),
                    ),

                    IconButton(
                      onPressed: (){
                        print('Button Setting Success');
                      }, 
                      icon: Icon(
                        Icons.settings,
                        color: white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/sakicuk.jpg'
                    )
                  ),
                ),
              ),
            ],
          ),

        const SizedBox(height: 20),
          Container(
            width: 100,
            child: Column(
              children: [
                Text(
                  'Rafi Rasaki Ilyas',
                  style: TextStyle(
                    fontSize: 20,
                    color: white
                  ),
                ),

          const SizedBox(height: 5),

                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 15,
                    color: white,
                    fontWeight: FontWeight.w200
                  ),
                ),
              ],
            ),
          ),

        const SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(30),
            width: 375,
            height: 566,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40)
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 120,
                  height: 40,
                  child: Text(
                    'Friends',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                //const SizedBox(height: 5),
                CustomUser(
                  image: 'assets/laki.png', 
                  name: 'Joshuer', 
                  caption: 'Sorry, you not my ty...', 
                  time: 'Now'
                ),
              const SizedBox(height: 16),

                CustomUser(
                  image: 'assets/cewe.png', 
                  name: 'Gabriella', 
                  caption: 'I Saw Clearly And Mig..', 
                  time: '2:30'
                ),

            const SizedBox(height: 30),
                Container(
                  width: 120,
                  height: 40,
                  child: Text(
                    'Groups',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
                
                CustomGrup(
                  imggrup: 'assets/icon-biru.png', 
                  namegrup: 'Panitia Jakarta Fair', 
                  captiongrup: 'Gess pada dimana udah ra..', 
                  timegrup: '11:11'
                ),
                const SizedBox(height: 18),

                CustomGrup(
                  imggrup: 'assets/icon-ungu.png', 
                  namegrup: 'Kampung Empang', 
                  captiongrup: 'Sokin kemari lagi pada ngu..', 
                  timegrup: '7:11'
                ),
                const SizedBox(height: 18),

                CustomGrup(
                    imggrup: 'assets/icon-merah.png',
                    namegrup: 'PT.Bahaya Nganggur',
                    captiongrup: 'Ada info loker nih abang la..',
                    timegrup: '7:11'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}