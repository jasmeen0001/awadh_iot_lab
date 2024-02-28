import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CPSLabSetupPage(),
    );
  }
}

class CPSLabSetupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          AppBar(
            title: Text(
              'CPS LAB HARDWARE SETUP',
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
                  image: AssetImage('assets/images/CPS_Lab_Hardware.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    padding: EdgeInsets.all(20.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: constraints.minWidth,
                        minHeight: constraints.maxHeight,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          HardwareDescriptionTile(
                            title: 'BLE Gateway',
                            description: 'The Bluetooth Gateway is a system architecture that allows communication between a central device and multiple Bluetooth nodes.',
                            imagePath: 'assets/images/BLE_Gateway-removebg-preview.png',
                          ),
                    HardwareDescriptionTile(
                      title: 'Low Power Camera Module',
                      description: 'CPS Camera Module involve a lot of image analytics. Low power camera module is equipped with Camera, and microcontroller.',
                      imagePath: 'assets/images/BLE_Development_Kit-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'BLE Development Kit',
                      description: 'It is a single-board development kit (DK) for Bluetooth Low Energy.',
                      imagePath: 'assets/images/BLE_Development_Kit__2_-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'BLE Node',
                      description: 'The BLE nodes are peripheral devices equipped with NRF52 SoC. ',
                      imagePath: 'assets/images/BLE_Node_PCB-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'Solar Charging and Discharging Module',
                      description: 'This module is designed to learn how to charge and discharge the battery through Solar and calculation of battery time, monitor the battery etc.',
                      imagePath: 'assets/images/Solar_Charging_and_Discharging_Module-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: '4G/5G Kit with BLE',
                      description: 'The 4G/5G kit is equipped with 4G/5G module and a microcontroller. This board also supports the external flash memory and few sensors.',
                      imagePath: 'assets/images/4G_5G_kit.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'Sensors/Weather monitoring system/Activity monitor System/Environment monitoring System',
                      description: 'Sensors come in the breakout boards. They have pins on them, which are used for supplying the power, providing ground, receiving inputs, and sending outputs.',
                      imagePath: 'assets/images/Weather_Monitoring_Sensor_System-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'UART to USB Converter',
                      description: 'An UART to USB converter is a type of protocol converter that is used for converting UART signal to USB data signals.',
                      imagePath: 'assets/images/UART_to_USB_Converter-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'Grove Shield',
                      description: 'Grove shield is a modular, simple-to-use system designed to easily connect a BLE development kit to a wide range of “modules” such as sensors and motors.',
                      imagePath: 'assets/images/Grove_Shield_with_Sensors-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'Power Profiler Kit',
                      description: 'It is important to optimize the power consumption of the CPS system. This system helps in measure the power consumption of the same. ',
                      imagePath: 'assets/images/Power_Profiler_Kit-removebg-preview.png',
                    ),
                 ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class HardwareDescriptionTile extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const HardwareDescriptionTile({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      elevation: 2.0,
      child: ExpansionTile(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 40, 16, 1),
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  description,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 5, 5, 5),
                  ),
                ),
                SizedBox(height: 16.0),
                Image.asset(
                  imagePath,
                  height: 150,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}