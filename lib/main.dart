import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'weather_data.dart';
import 'co2_sensor.dart';
import 'CPS_Lab.dart';
import 'LED_Experiment.dart';
import 'lis3dh_experiment.dart';
import 'ContactUS.dart';
import 'SHT40_Experiment.dart';
import 'stts751.dart';
import 'Relay.dart';
import 'button_exp.dart';
import 'CPS_lab_hardware.dart';
import 'about_us.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHomePage(),
        '/weather': (context) => WeatherData(),
        '/co2Sensor': (context) => Co2Sensor(),
        '/cpsLab': (context) => CPSlab(),
        '/LED_exp': (context) => LEDexperiment(),
        '/Button_exp': (context) => ButtonExp(),
        '/SHT40_Experiment': (context) => SHT40_Experiment(),
        '/STTS751_exp': (context) => STTS751(),
        '/lis3dh': (context) => LIS3DH(),
        '/ContactUS': (context) => Contact(),
        '/Relay_exp': (context) => RelayExp(),
        '/cps_lab_hardware': (context) => CPSLabSetupPage(),
        '/aboutUs': (context) => AboutUsPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('./../assets/assets/images/Front_bg_Final.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/awadh_logo.jpeg',
                            height: 55,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            child: Text('Home'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/cps_lab_hardware');
                            },
                            child: Text('CPS Lab Hardwares'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/cpsLab');
                            },
                            child: Text('CPS Lab Tutorial'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/aboutUs');
                            },
                            child: Text('About Us'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),

                    Text(
                      'Agriculture & Water Technology Development Hub (AWaDH)',
                      style: TextStyle(
                        fontFamily: 'FontMain',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(height: 20),
                    CarouselSlider(
                      carouselController: _carouselController,
                      options: CarouselOptions(
                        
                        height: 400,
                        aspectRatio: 16 / 9,
                        autoPlay: false,
                        enlargeCenterPage: true,
                      ),
                      items: [
                        'iot_lab.png',
                        'Awadh_logo_New-removebg-preview.png',
                        'Deployment_images_front-removebg-preview.png',
                        'Iot_logo_Picture_final-removebg-preview.png',
                        'awadh_banner.jpeg',
                      ].map((image) {
                        return Builder(
                          
                          builder: (BuildContext context) {
                                 

                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    './../assets/assets/images/$image',
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                          onPressed: () {
                            _carouselController.previousPage();
                          },
                        ),
                        SizedBox(width: 25),
                        IconButton(
                          icon: Icon(Icons.arrow_forward),
                          color: Colors.white,
                          onPressed: () {
                            _carouselController.nextPage();
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    // Center and wrap ExpansionTile with a container
                    Container(
                      width: MediaQuery.of(context).size.width - 40,
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ExpansionTile(
                            backgroundColor: Color.fromARGB(255, 236, 233, 226),
                            title: Text(
                              'SENSORS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromARGB(255, 48, 19, 2),
                            ),
                            textAlign: TextAlign.center,
                            ),
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    buildCardWithImage(
                                      context,
                                      'Weather Sensor',
                                      'assets/images/Weather_sensor_widget-removebg-preview.png',
                                      () {
                                        Navigator.pushNamed(
                                            context, '/weather');
                                      },
                                    ),
                                    SizedBox(width: 20),
                                    buildCardWithImage(
                                      context,
                                      'CO2 Sensor',
                                      'assets/images/Co2_Sensor_new.png',
                                      () {
                                        Navigator.pushNamed(
                                            context, '/co2Sensor');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 40), // Added space

                              // Add more containers or buildCardWithImage widgets as needed
                            ],
                          ) ,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCardWithImage(
    BuildContext context,
    String buttonText,
    String imagePath,
    Function() onPressed,
  ) {
    return InkWell(
      child: Container(
        height: 200,
        width: 200,
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
        child: ClipOval(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 15),
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
      ),
    );
  }
}
