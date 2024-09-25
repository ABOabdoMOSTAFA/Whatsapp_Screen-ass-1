import 'package:flutter/material.dart';
import 'package:whatsapp_screen_ass_1/text_widget.dart';

class WhatsappScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.arrow_back_outlined,
          color: Colors.white,
        ),
        leadingWidth: 30,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("asessts/images/person.jpg"),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Person",
              style: TextStyle(color: Colors.white, fontSize: 22),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.videocam,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.phone,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.more_vert_outlined,
            color: Colors.white,
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("asessts/images/background.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            TextWidget(
              pathImage: "asessts/images/person1.jpg",
              textTitle: "This is My First Message",
              textDirection: TextDirection.ltr,
            ),
            TextWidget(
                pathImage: "asessts/images/person2.jpg",
                textTitle: "This is My Second Message",
                textDirection: TextDirection.rtl),
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            prefixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.sentiment_satisfied_alt_outlined,
                                  color: Colors.white,
                                )),
                            hintText: "Type a Message",
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(50)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(50)),
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.attach_file,
                                  color: Colors.white,
                                ))),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.white)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mic,
                            color: Colors.white,
                          )))
                ],
              ),
            )
            // asdhoashf
          ],
        ),
      ),
    );
  }
}
// textfield It was a place the container of textWidget
// Container(
// width: 240,
// child: TextField(
// // enabled: false,
// textAlign: TextAlign.center,
// style: TextStyle(color: Colors.white),
// cursorColor: Colors.blue,
// decoration: InputDecoration(
// hintText: "This is My First Message",
// hintStyle: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.w400,
// fontSize: 15),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(50),
// borderSide: BorderSide(color: Colors.white)),
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(60),
// borderSide:
// BorderSide(color: Colors.white, width: 1.0),
// ),
// // disabledBorder: OutlineInputBorder(
// //   borderSide: BorderSide(color: Colors.amber,width: 5)
// // ),
// contentPadding: EdgeInsets.symmetric(
// vertical: 15, horizontal: 20),
// )),
// )
