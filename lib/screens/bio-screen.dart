import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

class BioScreen extends StatefulWidget {
  const BioScreen({super.key});

  @override
  State<BioScreen> createState() => _BioScreenState();
}

class _BioScreenState extends State<BioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Platform.operatingSystem),
      ),
    );
  }
}
