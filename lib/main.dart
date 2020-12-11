import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: Column(
          children: [
            Container(

              height: 140,
              width: double.infinity,
              color: Colors.black26,
              child: Center(
                  child: Text(
                "12345",
                style: TextStyle(color: Colors.blueGrey.shade200,fontSize: 30, letterSpacing: 1.5),
              )),
            ),
            GridView.count( childAspectRatio: 1.0,
                crossAxisCount: 4,
                shrinkWrap: true,
              children: [
                Buttons(text: "ac",onTap: (){},),
                Buttons(text: "c",onTap: (){}),
                Buttons(text: "%",onTap: (){}),
                Buttons(text: "*",onTap: (){}),
                Buttons(text: "1",onTap: (){}),
                Buttons(text: "2",onTap: (){}),
                Buttons(text: "3",onTap: (){}),
                Buttons(text: "/",onTap: (){}),
                Buttons(text: "4",onTap: (){}),
                Buttons(text: "5",onTap: (){}),
                Buttons(text: "6",onTap: (){}),
                Buttons(text: "-",onTap: (){}),
                Buttons(text: "7",onTap: (){}),
                Buttons(text: "8",onTap: (){}),
                Buttons(text: "9",onTap: (){}),
                Buttons(text: "+",onTap: (){}),
                Buttons(text: "0",onTap: (){}),
                Buttons(text: ".",onTap: (){}),
                Buttons(text: "( )",onTap: (){}),
                Buttons(text: "=",onTap: (){}),
              ],
            )

          ],
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
     Buttons({this.text,this.onTap});
   final String text;
   final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: Center(
              child: Text(text, style: TextStyle(fontSize: 22,color: Colors.blueGrey.shade200))),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueGrey.shade200),
            borderRadius: BorderRadius.circular(50),
            color: Colors.blueGrey.shade900,
          ),
        ),
      ),
    );
  }
}
