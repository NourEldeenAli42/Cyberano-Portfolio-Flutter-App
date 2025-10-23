import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const aboutmetext =
    'Experienced Flutter developer with a passion a building high quality, scalable mobile applications. Proven ability translate complex designs smooth performance user interfaces. Dedicated to continuous learning and collaboration within agile teams';
const experiencetext = '''
    Lead Mobile Developer - Innovate Tech (2022-Present)
    Flutter Developer - AppCrafters Inc. (2019-2022) 
    Junior Developer - (Code Solutions)''';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    width: 66,
                    height: 66,
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset('assets/myImage.jpg'),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nour "Eldeen" Ali',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Flutter Developer',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(width: double.infinity, height: 2, color: Colors.black),
              SizedBox(height: 20),
              Text(
                'About Me',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(aboutmetext, style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 20),
              Container(width: double.infinity, height: 2, color: Colors.black),
              SizedBox(height: 10),
              Text(
                'Technologies',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/flutter.png', width: 66, height: 66),
                      SizedBox(height: 10),
                      Text('Flutter', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/dart.png', width: 66, height: 66),
                      SizedBox(height: 10),
                      Text('Dart', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/firebase.png', width: 66, height: 66),
                      SizedBox(height: 10),
                      Text('Firebase', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(width: double.infinity, height: 2, color: Colors.black),
              SizedBox(height: 20),
              Text(
                'Experience',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(experiencetext, style: TextStyle(fontSize: 15)),
              SizedBox(height: 20),
              Container(width: double.infinity, height: 2, color: Colors.black),
              SizedBox(height: 20),
              Text(
                'Contact Me',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.facebook, size: 50, color: Colors.blue),
                  SizedBox(width: 15),
                  Text(
                    'Nour "Eldeen" Ali',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: 50,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 15),
                  Text(
                    'Nour Eldeen Ali (El-Khouly)',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.whatsapp,
                    size: 50,
                    color: Colors.green,
                  ),
                  SizedBox(width: 15),
                  Text(
                    '+20 1124016130',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
