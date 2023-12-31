import 'dart:io';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tiktok_clone/constants/constants.dart';

import 'confirm_screen.dart';

class AddVideoScreen extends StatelessWidget {
  const AddVideoScreen({super.key});
  pickVideo(ImageSource src, BuildContext context) async {
    final video = await ImagePicker().pickVideo(source: src);
    if (video != null) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ConfirmScreen(
                videoFile: File(video.path),
                videoPath: video.path,
              )));
    }
  }

  showOptionsDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          children: [
            SimpleDialogOption(
              onPressed: () => pickVideo(ImageSource.gallery, context),
              child: Row(
                children: const [
                  Icon(Iconsax.image),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Gallery",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            SimpleDialogOption(
              onPressed: () => pickVideo(ImageSource.camera, context),
              child: Row(
                children: const [
                  Icon(Iconsax.camera),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Camera",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context),
              child: Row(
                children: const [
                  Icon(Icons.cancel),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Cancel",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () => showOptionsDialog(context),
          child: Container(
            width: 190,
            height: 50,
            decoration: BoxDecoration(
                color: buttonColor, borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text(
                "Add Video",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
