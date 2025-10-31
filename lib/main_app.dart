import 'package:flutter/material.dart';
import 'package:flutter_course/text_section.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const aboutmetext =
    'Experienced Flutter developer with a passion a building high quality, scalable mobile applications. Proven ability translate complex designs smooth performance user interfaces. Dedicated to continuous learning and collaboration within agile teams';
const experiencetext = '''
    Lead Mobile Developer - Innovate Tech (2022-Present)
    Flutter Developer - AppCrafters Inc. (2019-2022) 
    Junior Developer - (Code Solutions)''';

final sections = List<Widget>.from([
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
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ],
  ),
  SizedBox(height: 20),
  Container(width: double.infinity, height: 2, color: Colors.black),
  SizedBox(height: 20),
  TextSection(title: "About Me", content: aboutmetext),
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
  TextSection(title: "Experience", content: experiencetext),
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
      FaIcon(FontAwesomeIcons.linkedin, size: 50, color: Colors.blue),
      SizedBox(width: 15),
      Text(
        'Nour Eldeen Ali (El-Khouly)',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    ],
  ),
  Row(
    children: [
      FaIcon(FontAwesomeIcons.whatsapp, size: 50, color: Colors.green),
      SizedBox(width: 15),
      Text(
        '+20 1124016130',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    ],
  ),
]);

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              TextEditingController titleController = TextEditingController();
              TextEditingController contentController = TextEditingController();
              return Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        labelText: 'Section Title',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: contentController,
                      decoration: InputDecoration(
                        labelText: 'Section Content',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.add),
                      title: Text('Add Section'),
                      onTap: () {
                        setState(() {
                          sections.add(
                            TextSection(
                              title: titleController.text,
                              content: contentController.text,
                            ),
                          );
                        });
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: sections.length,
            itemBuilder: (context, index) {
              final dismissedIndex = index;
              final dismissed = sections[dismissedIndex];
              return Dismissible(
                key: ValueKey(dismissed.hashCode),
                child: dismissed,
                onDismissed: (direction) {
                  setState(() {
                    sections.removeAt(dismissedIndex);
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$dismissed dismissed'),
                      action: SnackBarAction(
                        label: "Undo",
                        onPressed: () {
                          setState(() {
                            sections.insert(dismissedIndex, dismissed);
                          });
                        },
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
