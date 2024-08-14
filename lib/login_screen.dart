import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
   const LoginScreen({super.key});
    // LoginScreen({Key? key}) : super(key: key);

  // final TextEditingController emailController = TextEditingController();
  // final TextEditingController passwordController = TextEditingController();
  
  @override
  State<StatefulWidget> createState()  =>  _LoginScreenState();
  
  
  
  // Future<void> _LoginScreenState(BuildContext context) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setBool('isLoggedIn', true);
  //    Navigator.pushReplacementNamed(context, '/homescreen');
  
}


 class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 5,
        backgroundColor: Colors.grey,
        centerTitle: true,
        title:  Text( 'Login Screen',
                style: TextStyle(color: Colors.black,
          fontFamily: 'Inter' ,
          fontSize: 30,
          fontWeight: FontWeight.w400, 
      
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField( 
              // controller: emailController,
              
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.grey[300],
              ),
            ),
            SizedBox(height: 20),
            TextField( 
              // controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.grey[300],
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () 
              // => _LoginScreenState(context),
              
              { 
                Navigator.pushNamed(context, '/homescreen');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent[400],
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}