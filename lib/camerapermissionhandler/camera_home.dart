import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraHomeScreen extends StatefulWidget {
  const CameraHomeScreen({super.key});

  @override
  State<CameraHomeScreen> createState() => _CameraHomeScreenState();
}

class _CameraHomeScreenState extends State<CameraHomeScreen> {
  dynamic selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Camera"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
            selectedImage == null
                ? const SizedBox()
                : Container(
                    height: 200,
                    width: double.infinity,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: FileImage(selectedImage),
                      ),
                    ),
                  ),

            ElevatedButton(
              onPressed: () async {
                PermissionStatus result = await Permission.storage.request();
                // Permission.photos.request();
                if (result.isDenied) {
                  print('sorry user does not allowed permission');
                }
              },
              child: Text('Storage Permission'),
            ),
            ElevatedButton(
              onPressed: () async {
                PermissionStatus result = await Permission.camera.request();
                if (result.isGranted) {
                  print('Camera Permission granted');
                  final picker = ImagePicker();
                  final pickImage = await picker.pickImage(
                    source: ImageSource.camera,
                  );
                  if (pickImage != null) {
                    File pickFile = File(pickImage.path);
                    setState(() {
                      selectedImage = pickFile;
                    });
                  } else {
                    print('Empty!');
                  }
                }
              },
              child: Text('Camera'),
            ),
            ElevatedButton(
              onPressed: () async {
                PermissionStatus result = await Permission.microphone.request();
                if (result.isDenied) {
                  print('sorry user does not allowed permission');
                }
              },
              child: Text('Microphone Permission'),
            ),
          ],
        ),
      ),
    );
  }
}
