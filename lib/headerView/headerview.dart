import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voice_study_web_app/constant.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';







class HeaderView extends StatelessWidget {
   HeaderView({super.key});
 
  @override
  Widget build(BuildContext context) {
    
    return Column(
    
      children: [
        Container(
          height: 1007,
          width: kInitWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/images/header_photo01.png"),
              fit: BoxFit.cover,
              
            ),
          ),
          child: const Column(
          children: [
            SizedBox(height: 100,),          
            Align(alignment:  Alignment.topRight,
              child:
              
              CustomBlurForHeader()
             
            )
          ,
        //   Align( alignment: Alignment.topRight,
        //   child:
        //        Padding(padding: kScreenPadding,
        //       child: AutoSizeText('',
        //       style: GoogleFonts.raleway(textStyle: Theme.of(context).textTheme.headlineMedium), 
        //       maxLines: 1,
        //   ), 
        //   ),),
        //   SizedBox(height: 100,),
        //   Align(alignment: Alignment.centerRight,
        //   child:
        //   Padding(padding: kScreenPadding, 
        //  child: AutoSizeText('Анастасия Новицкая',
        //  style: GoogleFonts.raleway(textStyle: Theme.of(context).textTheme.displayLarge),
        //  maxLines: 2,
        //  ),
        //   )), 
              ]     
          ),
        ),
          
      ],
    );
    
  }

}



class CustomBlurForHeader extends StatefulWidget {
  const CustomBlurForHeader({super.key});

  @override
  State<CustomBlurForHeader> createState() => _CustomBlurForHeaderState();
}

class _CustomBlurForHeaderState extends State<CustomBlurForHeader> with TickerProviderStateMixin {
 
 
 bool _visible = false;

  late AnimationController _controller;
  late Animation<double> _animation;


  @override
  void initState(){
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2))..animateTo(0.9);
    _animation = Tween<double>(begin:0, end: 1).animate(_controller);
  }

 
  @override
  Widget build(BuildContext context) {
   
    return Container( 
    child: FadeTransition(
      opacity: _animation,
      child: Container
      (
        width: 800,
        height: 507,
        decoration: const BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('lib/images/blur_backgr.png'),
          fit:  BoxFit.cover,
          
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          offset: const Offset(5.0, 5.0),
          blurRadius: 10.0,
          spreadRadius: 2.0
        )
      ]
      ),
      child: ClipRRect(
        child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                alignment: Alignment.center,
                color: Colors.grey.withOpacity(0.1),
                child:
                Column(
                  children: [
                    SizedBox(height: 50,),
                    Align(alignment: Alignment.centerRight,
                    child:
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: AutoSizeText('Анастасия Новицкая',
                                       style: GoogleFonts.raleway(textStyle: Theme.of(context).textTheme.displayLarge),
                                       maxLines: 1,),
                    ),)
                  ],
                  )
                   
                  ) 
                
              ),
            ),
    ),
      ),
      );
    
  }
}