import 'package:flutter/material.dart';

class CPSlab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CPS LAB TUTORIALS',
          
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Color.fromARGB(255, 81, 34, 3)
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("./../assets/assets/images/bg_for_CPS_tutorials.png"),
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
                  'LED and Button Experiments',
                  'assets/images/LED_exp.jpg',
                  () {
                    Navigator.pushNamed(context, '/LED_exp');
                  },
                ),
                buildCardWithImage(
                  context,
                  'LIS3DH Experiment',
                  'assets/images/LIS3DH_Sensor_Board-removebg-preview.png',
                  () {
                    Navigator.pushNamed(context, '/lis3dh');
                  },
                ),
                buildCardWithImage(
                  context,
                  'SHT40 Experiment',
                  'assets/images/SHT40_Sensor_Board-removebg-preview.png',
                  () {
                    Navigator.pushNamed(context, '/SHT40_Experiment');
                  },
                ),
                buildCardWithImage(
                  context,
                  'STTS751 Experiment',
                  'assets/images/STTS751_Sensor_Board-removebg-preview.png',
                  () {
                    Navigator.pushNamed(context, '/STTS751_exp');
                  },
                ),
                buildCardWithImage(
                  context,
                  'LCD Experiment',
                  'assets/images/LCD_Display-removebg-preview.png',
                  () {
                    Navigator.pushNamed(context, '/LCD_Display-removebg-preview.png');
                  },
                ),
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
                buildCardWithImage(
                  context,
                  'Contact Us',
                  'assets/images/contact.jpg',
                  () {
                    Navigator.pushNamed(context, '/ContactUS');
                  },
                ),
              ],
            ),
          ),
        ),
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