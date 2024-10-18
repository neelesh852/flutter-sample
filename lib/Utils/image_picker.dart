import 'package:flutter/material.dart';
import 'dart:io';

class AppImagePicker {
  final BuildContext context;
  final ValueChanged<File>? pickerImage;

  AppImagePicker(this.context,{this.pickerImage});

  void show() {
    // showDialog<ImageSource>(
    //   context: context,
    //   builder: (context) => AlertDialog(
    //     content: Text(AppLocalization.instance.keys.chooseImage),
    //     actions: [
    //   AppElevatedButton(
    //         title: AppLocalization.instance.keys.camera,
    //         onPressed: () => Navigator.pop(context, ImageSource.camera),
    //       ),
    //       AppElevatedButton(
    //         title:AppLocalization.instance.keys.gallery,
    //         onPressed: () => Navigator.pop(context, ImageSource.gallery),
    //       )
    //     ])
    // ).then((ImageSource? source) async {
    //   if (source == null) return;
    //   final pickedFile = await ImagePicker().pickImage(source: source);
    //   if (pickedFile == null) return;
    //   if (pickerImage != null) {
    //     pickerImage!(File(pickedFile.path));
    //   }
    // });
  }
}
