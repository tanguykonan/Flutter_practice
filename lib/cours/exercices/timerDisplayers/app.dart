import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      )
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  int hours = 0;
  int minus = 0;
  int seconds = 0;
  bool start = false;

  void startTimer(){
    if(start) return;
    start = true;
    loop();
  }

  void stopTimer(){
    start = false;
  }

  void loop(){
    if(!start) return;
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        seconds++;
        if(seconds==60) {
          minus = minus + 1;
          seconds = 0;
        }
        if(minus==60) {
          hours = hours + 1;
          minus = 0;
        }
        if(hours==24){
          hours=0;
        }
      });
      loop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Timer Displayer", textDirection: TextDirection.ltr),
        ),
        elevation: 2,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
          decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Text(
            "${hours.toString().padLeft(2, '0')} : ${minus.toString().padLeft(2, '0')} : ${seconds.toString().padLeft(2, '0')}",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.0
            ),),
        ),
      ),
      floatingActionButton: OutlinedButton(
        onPressed: (){
          if(!start) {
            startTimer();
          }
          else {
            stopTimer();
          }
        },
        child: Icon(Icons.stop_circle),
      ),
    );
  }
}