import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './utils/routes.dart';

void main() => runApp(ErpCliGetX());

class ErpCliGetX extends StatelessWidget {

  ErpCliGetX({super.key});

  final pages = Routes();

  @override
    Widget build(BuildContext 
    context) {
      return GetMaterialApp(
        //key: _key,
        title: 'erpcli_getx',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.grey,
            secondary: Colors.deepOrange,
          ),
        ),
        initialRoute: pages.initialRoute,
        getPages: pages.getPages,
        debugShowCheckedModeBanner: false,
      );
    }
}