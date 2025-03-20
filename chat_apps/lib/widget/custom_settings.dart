import 'package:flutter/material.dart';

import '../shared/themes.dart';

class CustomSettings extends StatelessWidget {
  final Icon iconset;
  final String caption;
  final String description;

  const CustomSettings({
    Key? key,
    required this.iconset,
    required this.caption,
    required this.description
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Button Success');
      },
      child: Container(
        padding: EdgeInsets.all(15),
        width: 100,
        height: 90,
        //color: blue,
        child: Row(
          children: [
           iconset,
           
          const SizedBox(width: 20),
    
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  caption,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 13,
                    color: grey
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}