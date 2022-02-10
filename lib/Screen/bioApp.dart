import 'dart:ui';

import 'package:bio_app_12/widgets/bio_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class bioApp extends StatelessWidget {
  const bioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text('BIO'),
      ),
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR82UMOMJ9xKi4s1HQcFiaJUAs1XK3Yb5yj7Q&usqp=CAU',
            height: double.infinity,
            fit: BoxFit.cover,),
          ),
          Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage:
                AssetImage('images/om.jpeg'),
              ),
            const  Text('Omar Kamel Abo Shamla',style: TextStyle(
                color: Colors.white,
                letterSpacing: 1,
                fontSize: 19,
              ),
              ),
                SizedBox(height: 5),
             const Text(
                'Flutter Course _ visionPlus',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1,
                  fontSize: 15,

                ),
              ),
             const Divider(
                thickness: 0.7,
                color: Colors.white,
                height: 30,
                indent: 40,
                endIndent: 40,
              ),
                Biocard(leadingIcon: Icons.email,
                  title: 'Email', subTitel: 'omarkamelsh2018@gmail.com',
                  trailingicon: Icons.send,
                  marginBottom: 10,
                  onPressed: (){
                  print('Email');
                },),
              Biocard(leadingIcon: Icons.phone,
                title: 'Phone',
                subTitel: '+970-597-081-0000',
                trailingicon: Icons.phone,
                marginBottom: 10,
                onPressed: (){
                print('Phone');
                },),
              Biocard(leadingIcon: Icons.facebook,
                  title: 'facebook',
                  subTitel: 'omar kamel',
                  trailingicon: Icons.facebook,
                  onPressed: (){
                    print('facebook');}),

            ],
    ),
         PositionedDirectional(
           start: 0,
           end: 0,
           bottom: 10,
           child:
           Text('Flutter 2022', style: TextStyle(
            color: Colors.white
          ),
             textAlign: TextAlign.center,
          ),
         ),

        ]
      ),

    );
  }
}

