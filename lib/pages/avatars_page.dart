import 'package:flutter/material.dart';

class AvatarPage   extends StatelessWidget {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Avatar'),
        actions: [
          CircleAvatar(
            child: ClipOval(
              child: Image(
                image: NetworkImage(
                  'https://www.pngkey.com/png/full/300-3004201_persona-femenina-icon-person-icon.png'
                ),
              ),
            ),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://toppng.com/uploads/preview/avatar-windows-10-person-ico-115628997732fatjfxg5s.png'
            ),
          ) ,
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/en/thumb/7/72/Avatar_icon_green.svg/1024px-Avatar_icon_green.svg.png'
                  ),
                )
            ),
          )
        ],
      ),
      body: ListView(
        
        children: [
         Container(
                width: 200.0,
            height: 200.0,
           child:  Image.asset(
            'assets/jar-loading.gif',
            ),
         ),
          SizedBox(height: 100.0,),
          Image(
           width: 200.0,
            height: 200.0,
           image:AssetImage('assets/jar-loading.gif'),
          ),
        ],
        ),
    );
  }
}