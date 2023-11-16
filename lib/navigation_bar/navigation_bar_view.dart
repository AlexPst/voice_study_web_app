import 'package:flutter/material.dart';
import 'package:voice_study_web_app/constant.dart';
import 'package:voice_study_web_app/components/desctop_mobile_builder.dart';
import 'package:voice_study_web_app/main.dart';
import 'package:provider/provider.dart';


class NavigationBarView extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return DesctopMobileViewBuilder(mobileView: mobileView, desctopView: NavigationDesctopView());
  }
}


class NavigationDesctopView extends StatelessWidget
{
  NavigationDesctopView({super.key});

  @override
  Widget build (BuildContext context)
  {
    final navigationItems = context.watch<List<NavigationItem>>();
    final scrollController = context.watch<ScrollController>();
    return Container(

    );
}
}

class NavigationMobileView extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Container();
  }
}

