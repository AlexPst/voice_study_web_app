import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voice_study_web_app/constant.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';







class HeaderDesctopView extends StatelessWidget {
   HeaderDesctopView({super.key});
 
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final imageWidth = width * 0.47;
    final isSmall = width < 950;
    return Column(
      children: [
        Container(
          height: 850,
          width: kInitWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/images/header_photo02.png"),
              fit: BoxFit.cover,
              
            ),
          ),
          child: const Column(
          children: [
            SizedBox(height: 100,),          
            Align(alignment:  Alignment.topRight,
              child:
              HeaderTextWidget(),
             ),
              ]     
          ),
        ),
          
      ],
    );
    
  }

}


class HeaderMobileView extends StatelessWidget {
  const HeaderMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 700,
        height: 400,
      child: Column(
        children: [
          const SizedBox(height: 100,),
            Align( alignment: Alignment.centerLeft,
            child: Padding(padding: kScreenPadding,
            child: AutoSizeText("Анастасия Новицкая", style: GoogleFonts.raleway(textStyle: Theme.of(context).textTheme.displayLarge),)

            )
            )
        ],
      ),
    );
  }
}

