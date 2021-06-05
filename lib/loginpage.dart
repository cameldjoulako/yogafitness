import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogafitness/delayed_animation.dart';
import 'main.dart';

const d_red = const Color(0xFFE9717D);

// Page de lecture
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
              size: 45,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(""),
        backgroundColor: Colors.white,
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 40,
                left: 30,
                right: 30,
              ),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DelayedAnimation(
                    delay: 1500,
                    child: Text(
                      "Connect email address",
                      style: GoogleFonts.poppins(
                        color: d_red,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 22),
                  DelayedAnimation(
                    delay: 2500,
                    child: Text(
                      """It's recommended to connect your email address for us to better protect your information.""",
                      style: GoogleFonts.poppins(
                        color: Colors.grey[600],
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 75),
            LoginForm(),
            SizedBox(height: 126),
            Align(
              alignment: Alignment.center,
              child: DelayedAnimation(
                delay: 5500,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: d_red,
                    padding: EdgeInsets.only(
                      left: 125,
                      right: 125,
                      top: 13,
                      bottom: 13,
                    ), //content padding inside button,
                  ),
                  child: Text(
                    'CONFIRM',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyApp(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 90),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: DelayedAnimation(
                      delay: 5500,
                      child: Text(
                        "SkIP",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      child: Column(
        children: [
          DelayedAnimation(
            delay: 3500,
            child: TextField(
              //obscureText: _isObscure,
              decoration: InputDecoration(
                labelText: 'Your Email',
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          DelayedAnimation(
            delay: 4500,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.visibility,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
