import 'package:flutter/material.dart';

import 'ditails screen.dart';

void main() {
  runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Ditails(),
    );
  }
}



