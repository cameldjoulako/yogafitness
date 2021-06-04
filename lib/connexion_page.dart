import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';

const d_red = const Color(0xFFE9717D);

// Page de lecture
class ConnexionPage extends StatelessWidget {
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
              size: 40,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 40,
                left: 30,
                right: 30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Connect email address",
                    style: GoogleFonts.poppins(
                      color: d_red,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 22),
                  Text(
                    """It's recommended to connect your email address for us to better protect your information.""",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            LoginForm(),
            SizedBox(height: 110),
            Align(
              alignment: Alignment.center,
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
                      builder: (context) => MyApp(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 100),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "SkIP",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
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
          TextField(
            //obscureText: _isObscure,
            decoration: InputDecoration(
              labelText: 'Your Email',
              labelStyle: TextStyle(
                color: Colors.grey[400],
              ),
            ),
          ),
          SizedBox(height: 30),
          TextField(
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
        ],
      ),
    );
  }
}
