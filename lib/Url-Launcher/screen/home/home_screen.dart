import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlHomeScreen extends StatefulWidget {
  const UrlHomeScreen({super.key});

  @override
  State<UrlHomeScreen> createState() => _UrlHomeScreenState();
}

class _UrlHomeScreenState extends State<UrlHomeScreen> {
  Uri linkUri = Uri.parse('https://google.com');
  Uri phoneUri = Uri(scheme: 'tel', path: '7999088970');
  Uri smsUri = Uri(scheme: 'sms', path: '99877654432');
  Uri emailUri = Uri(
    scheme: 'mailto',
    path: 'abc@gmail.com',
    query: 'subject=this is subject&body=this laksdjlaksdjlaskd laksdjlaskdj',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('URL Launcher'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
            ElevatedButton(
              onPressed: () async {
                await launchUrl(linkUri);
              },
              child: Text('Open Link'),
            ),
            ElevatedButton(
              onPressed: () async {
                await launchUrl(phoneUri);
              },
              child: Text('Phone'),
            ),
            ElevatedButton(
              onPressed: () async {
                await launchUrl(smsUri);
              },
              child: Text('Send SMS'),
            ),
            ElevatedButton(
              onPressed: () async {
                await launchUrl(emailUri);
              },
              child: Text(' Send Email'),
            ),
          ],
        ),
      ),
    );
  }
}
