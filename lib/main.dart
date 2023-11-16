import 'package:flutter/material.dart';
import 'package:after_layout/after_layout.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MainApp());
}



class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Voice Study',
      theme: ThemeData(
        primaryColor: Colors.deepPurple.shade400,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'montserrat',
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 60, fontWeight: FontWeight.w500, color: Colors.black,), 
          titleMedium: TextStyle(fontSize: 24, fontStyle: FontStyle.normal, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 14, fontFamily: 'Hind', color: Colors.black),
        )
      ),
    );
  }
}

class MainView extends StatefulWidget
{
  const MainView({super.key});
  
  @override
  State<MainView> createState() => _MainView();


  
}

class _MainView extends State<MainView> with AfterLayoutMixin{
  
  final projectKey = GlobalKey();
  final skillKey = GlobalKey();
  final experienceKey = GlobalKey();
  final blogKey = GlobalKey();
  bool _showBackButton = true;
  List<NavigationItem>navigationItems = [];
  late ScrollController _scrollController = ScrollController(
    initialScrollOffset: 0);
  
  
  @override
  void afterFirstLayout(BuildContext context){
      
      setState(() {
        navigationItems = [
          NavigationItem(text: 'Projects', key: projectKey),

        ];
      });
    }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}

class scrollController {
}

class NavigationItem{
  final String text;
  final GlobalKey key;

  NavigationItem(
    {
      required this.text, 
      required this.key
      });

      double get position => _getPosition(key);
}

double _getPosition(GlobalKey key)
{
  final RenderBox renderBox = key.currentContext?.findRenderObject() as RenderBox;
  final position = renderBox.localToGlobal(Offset.zero);
  final scrollOffset = position.dy;
  return scrollOffset;
}