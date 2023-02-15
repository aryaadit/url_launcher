import 'package:flutter/material.dart';

import '../Services/LaunchServices.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildIconButton('Google', launchGoogle, Icons.search),
            heightSpacer(25.00),
            buildIconButton('Calendar', launchCalendar, Icons.calendar_month),
            heightSpacer(25.00),
            buildIconButton(
                'Contacts', launchContacts, Icons.contacts_outlined),
            heightSpacer(25.00),
            buildIconButton('Mail', launchMail, Icons.email_outlined),
            heightSpacer(25.00),
            buildIconButton('Maps', launchMaps, Icons.map_outlined),
            heightSpacer(25.00),
            buildIconButton(
                'Photos', launchPhotos, Icons.photo_camera_outlined),
            heightSpacer(25.00),
          ],
        ),
      ),
    );
  }

  Widget buildRaisedButton(String text, dynamic event) {
    return ElevatedButton(
      onPressed: event,
      child: Text(text),
    );
  }

  Widget buildIconButton(String text, dynamic event, IconData icon) {
    return ElevatedButton.icon(
      icon: Icon(
        icon,
        size: 30.0,
      ),
      label: Text(text),
      onPressed: event,
    );
  }

  Widget heightSpacer(double myheight) {
    return SizedBox(height: myheight);
  }
}
