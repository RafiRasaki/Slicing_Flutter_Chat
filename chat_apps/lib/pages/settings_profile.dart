import 'package:chat_apps/shared/themes.dart';
import 'package:chat_apps/widget/custom_settings.dart';
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
          const SizedBox(height: 8,),

          const CustomSettings(
            iconset: Icon(Icons.key_outlined), 
            caption: 'Account', 
            description: 'Security Notification, Change Number'
          ),

          const CustomSettings(
            iconset: Icon(Icons.lock_outline),
            caption: 'Privacy',
            description: 'Block contacts, disappearing messages'
          ),

          const CustomSettings(
            iconset: Icon(Icons.chat_outlined),
            caption: 'Chats',
            description: 'Theme, wallpapers, chat history'
          ),

          const CustomSettings(
            iconset: Icon(Icons.notifications_outlined),
            caption: 'Notifications',
            description: 'Message, group & call tones'
          ),

          const CustomSettings(
            iconset: Icon(Icons.language_outlined),
            caption: 'App language',
            description: 'English'
          ),

          const CustomSettings(
            iconset: Icon(Icons.help_outline),
            caption: 'Help',
            description: 'Help Center, contact us, privacy policy'
          ),
        ],
      ),
    );
  }
}