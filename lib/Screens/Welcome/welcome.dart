import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/main.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Discover Your',
              style: GoogleFonts.outfit(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Own Dream',
              style: GoogleFonts.outfit(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et",
                  style: GoogleFonts.outfit(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 40, 10, 10),
              child: Container(
                alignment: Alignment.center,
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(243, 243, 243, 100),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 6),
                        )
                      ]),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          onTap: () => Navigator.pushNamed(context, '/login'),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(248, 154, 238, 100),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                topLeft: Radius.circular(12),
                              ),
                            ),
                            child: Text(
                              "Sign in",
                              style: GoogleFonts.outfit(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () => Navigator.pushNamed(context, '/signup'),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "Register",
                              style: GoogleFonts.outfit(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
