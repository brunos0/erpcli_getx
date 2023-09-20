import 'package:flutter/material.dart';

class Sac extends StatefulWidget {
  const Sac({super.key});

  @override
  State<Sac> createState() => SacState();
}

class SacState extends State<Sac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sac"),
        ),
        body: const Text("Sac"));
  }
}
