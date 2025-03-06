import 'package:chat_apps/shared/themes.dart';
import 'package:flutter/material.dart';

class SettingsProfile extends StatefulWidget {
  const SettingsProfile({super.key});

  @override
  State<SettingsProfile> createState() => _SettingsProfileState();
}

class _SettingsProfileState extends State<SettingsProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue,
        iconTheme: IconThemeData(
          color: white
        ),
        title: Text(
          'Settings Apps & Profile',
          style: TextStyle(
            fontSize: 18,
            color: white
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 100,
            //color: black,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: black,
                width: 0.1
              )
            ),
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 70 ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    image: DecorationImage(
                      image: AssetImage('assets/sakicuk.jpg')
                    ),
                  ),
                ),

                const SizedBox(width: 20),
                Column(
                  children: [
                    Text(
                      'Rafi Rasaki Ilyas',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                 
                 const SizedBox(height: 10),
                    Text(
                      'Flutter Developer',
                      style: TextStyle(
                        fontWeight: FontWeight.w300
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 40),
                IconButton(
                  onPressed: (){
                    print('Button Barcode');
                  }, 
                  icon: Icon(
                    Icons.grid_view,
                    size: 27,
                  )
                ),

                IconButton(
                  onPressed: () {
                    print('Button Add Account');
                  }, 
                  icon: Icon(
                    Icons.add_circle,
                    size: 27,
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