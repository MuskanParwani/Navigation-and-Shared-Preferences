import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


 class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});
 
 
  @override
   State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   Future<void> _logout(BuildContext context) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setBool('isLoggedIn', false);

//     // Navigate back to the login screen
//     Navigator.pushReplacementNamed(context, '/login');
    // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'Home Page',
          style: TextStyle(color: Colors.black,
            fontFamily: 'Inter' ,
          fontSize: 30,
          fontWeight: FontWeight.w400, ),
        ),
        centerTitle: true,
        actions: [
          
          IconButton(
           
            icon: Icon(Icons.arrow_back),
            onPressed: () 
            // => _logout(context),
            async {
                final prefs = await SharedPreferences.getInstance();

    await prefs.setBool('isLoggedIn', false);

    Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}