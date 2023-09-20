import 'package:flutter/material.dart';

class Compras extends StatefulWidget {
  const Compras({super.key});

  @override
  State<Compras> createState() => ComprasState();
}

class ComprasState extends State<Compras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Comprass"),
        ),
        body: const Text("Compras"));
  }
}
