import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogafitness/signinpage.dart';
import 'package:yogafitness/delayed_animation.dart';

const d_red = const Color(0xFFE9717D);

void main() {
  //cacher la barre de notification du haut s
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yoga Fitness',
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  //final delayDuration = 500;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: null,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            left: 30.0,
            top: 50,
            right: 30,
            //bottom:,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DelayedAnimation(
                delay: 1500,
                child: Container(
                  height: 180,
                  child: Image.asset(
                    'images/logo.jpg',
                    //width: 200,
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 2500,
                child: Container(
                  margin: const EdgeInsets.only(top: 40),
                  height: 370,
                  child: Image.asset(
                    'images/yoga.jpg',
                    //width: 350,
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 3500,
                child: Container(
                  margin: const EdgeInsets.only(top: 60, bottom: 22),
                  child: Text(
                    """Get fitter, stronger, and embrasse a
                         helthier lifestyle""",
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 4500,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: d_red,
                      padding:
                          EdgeInsets.all(13), //content padding inside button,
                    ),
                    child: Text(
                      'GET STARTED',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SigninPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: null,
    );
  }
}
