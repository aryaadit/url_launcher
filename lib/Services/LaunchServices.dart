import 'package:url_launcher/url_launcher.dart';

launchGoogle() async {
  const url = 'https://www.google.com/';
  _launch(url);
}

launchCalendar() async {
  const url = 'https://calendar.google.com';
  _launch(url);
}

launchContacts() async {
  const url = 'https://contacts.google.com';
  _launch(url);
}

launchMail() async {
  const url = 'https://mail.google.com';
  _launch(url);
}

launchMaps() async {
  const url = 'https://maps.google.com';
  _launch(url);
}

launchPhotos() async {
  const url = 'https://photos.google.com';
  _launch(url);
}

_launch(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
