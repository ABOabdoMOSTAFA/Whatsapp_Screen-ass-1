import 'package:flutter/material.dart';
import 'package:whatsapp_screen_ass_1/whatsapp_screen.dart';

void main() {
  runApp(Myapplication());
}

class Myapplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Screeen',
      home: WhatsappScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      // Aligns the user input text to start
      style: TextStyle(color: Colors.white),
      // User-entered text style
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        hintText: null, // Make hintText null to avoid conflicts
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(60),
          borderSide: BorderSide(color: Colors.white, width: 1.0),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      ),
      // Using a Stack to simulate centered hint text
      buildCounter: (BuildContext context,
          {int? currentLength, int? maxLength, bool? isFocused}) {
        return Stack(
          alignment: Alignment.center, // Center the hint
          children: [
            Center(
              child: Text(
                currentLength == 0 ? "This is My First Message" : "",
                // Only show hint if text is empty
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: null,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
