import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Sensorspage(),
    );
  }
}


class Sensorspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
              title: Text(
                'SENSORS',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 81, 34, 3),
                ),
              ),
            ),
          
       
       Expanded(
            child: Container(
      
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("./../assets/assets/images/pastel_bg_sensor.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 20, // Add spacing between cards
              runSpacing: 20, // Add spacing between rows
              children: [
                
                buildCardWithImage(
                  context,
                  'CO2 Sensor',
                  'assets/images/Co2_Sensor_new.png',
                  () {
                    Navigator.pushNamed(context, '/co2Sensor');
                  },
                ),
                buildCardWithImage(
                  context,
                  'Weather Sensor',
                  'assets/images/Weather_sensor_widget-removebg-preview.png',
                  
                 
                  () {
                    Navigator.pushNamed(context, '/weather');
                  },
                ),
                
              ],
            ),
          ),
        ),
            ),
       ),
      
        ],
    ),
    );
  }

  Widget buildCardWithImage(BuildContext context, String buttonText,
      String imagePath, Function() onPressed) {
    return InkWell(
      child: Container(
        height: 250, // Adjust card height as needed
        width: 250, // Adjust card width as needed
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                imagePath,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: onPressed,
              child: Text(
                buttonText,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
