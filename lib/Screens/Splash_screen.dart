import 'package:flutter/material.dart';
import 'package:sss/Screens/home_screen.dart';

class splashScreen extends StatefulWidget {
  splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen>
    with SingleTickerProviderStateMixin {
  
@override
  void iniState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return HomeScreen();
      }));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.purple])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 100, top: 300),
              child: Column(
                children: [
                  Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Container(
                        color: Colors.blue,
                        child: Text(
                          'NEWS ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Text(
                      'World ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.blue),
                    ),
                  ]),
                ],
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Text(
              'The world in your hands',
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 84, 95, 126)),
            ),
            //  pushsplash(),
          ],
        ),
      ),
    );
  }
}
