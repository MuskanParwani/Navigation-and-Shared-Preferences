import 'package:flutter/material.dart';
import 'package:second_assigmnt_project/home_page.dart';
import 'package:second_assigmnt_project/login_screen.dart';
import 'package:second_assigmnt_project/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

  runApp(MyApp(
    isLoggedIn: isLoggedIn,
  ));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  const MyApp({
    super.key,
    required this.isLoggedIn,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      // home: isLoggedIn ? const HomeScreen() : const LoginScreen(),
          home: SplashScreen(isLoggedIn:isLoggedIn),
    //  initialRoute: '/',
     routes: {
      // '/': (context) => const SplashScreen(),
      '/login': (context) =>  LoginScreen(),
      '/homescreen': (context) => const HomeScreen()
     },
    );
  }
}

