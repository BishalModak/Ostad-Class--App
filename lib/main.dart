import 'package:flutter/material.dart';
import 'app.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
      enabled: false, //when it false its turn off the device previre
      builder: (context) => MyApp()));
}
