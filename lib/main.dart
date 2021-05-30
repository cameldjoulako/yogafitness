import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'connect_page.dart';

const d_red = const Color(0xFFE9717D);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yoga Fitness',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 40,
                left: 45.0,
                right: 45,
              ),
              height: 185,
              child: Image.asset(
                'images/logo.jpg',
                //width: 200,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 45.0,
                right: 45,
              ),
              //width: 350,
              height: 460,
              child: Image.asset(
                'images/yoga.jpg',
                //width: 350,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                """Get fitter, stronger, and embrasse a
                     helthier lifestyle""",
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                primary: d_red,
                padding: EdgeInsets.only(
                    left: 125,
                    right: 125,
                    top: 13,
                    bottom: 13), //content padding inside button,
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
                    builder: (context) => ConnectPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: null,
    );
  }
}
