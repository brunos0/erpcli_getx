import 'package:flutter/material.dart';

class Financeiro extends StatefulWidget {
  const Financeiro({super.key});

  @override
  State<Financeiro> createState() => FinanceiroState();
}

class FinanceiroState extends State<Financeiro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Financeiro"),
        ),
        body: const Text("Financeiro"));
  }
}
