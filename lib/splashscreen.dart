import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget{
  final bool isLoggedIn;
  // const SplashScreen({super.key});
    const SplashScreen({Key? key, required this.isLoggedIn}) : super(key: key);

  
  
  @override
  State<StatefulWidget> createState()  =>  _SplashScreenState();
  
  
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
  super.initState();
  Future.delayed(Duration(seconds: 3), (){
      if (widget.isLoggedIn) {
      Navigator.pushReplacementNamed(context, '/homescreen');
    } else {
      Navigator.pushReplacementNamed(context, '/login');
    }
    //  Navigator.pushReplacementNamed(context, '/login');
  });
  
 }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Welcome to Flutter Sukkur',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w700,
            fontFamily: 'Inter',
            
      
          ),
        ),
      )
    );
  }

}