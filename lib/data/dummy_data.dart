import '../models/services.dart';
import 'package:flutter/material.dart';
//import 'dart:developer' as dev;
//import '../pages/centered.da';
//import '../pages/login.dart';
//import '../pages/cadastro.dart';
import '../utils/app_routes.dart';

final dummyServices = [
  Service(
      id: 'p1',
      name: 'Cadastro',
      icon: const Icon(
        Icons.edit_document,
        size: 30,
      ),
      function: AppRoutes.cadastro),
  Service(
      id: 'p2',
      name: 'Compras',
      icon: const Icon(
        Icons.shopping_bag_outlined,
        size: 30,
      ),
      function: AppRoutes.compras),
  Service(
      id: 'p3',
      name: 'Vendas',
      icon: const Icon(
        Icons.point_of_sale_outlined,
        size: 30,
      ),
      function: AppRoutes.vendas),
  Service(
      id: 'p4',
      name: 'Financeiro',
      icon: const Icon(
        Icons.attach_money,
        size: 30,
      ),
      function: AppRoutes.financeiro),
  Service(
      id: 'p5',
      name: 'Sac',
      icon: const Icon(
        Icons.call,
        size: 30,
      ),
      function: AppRoutes.sac),
  Service(
      id: 'p6',
      name: 'Ajuda',
      icon: const Icon(
        Icons.help,
        size: 30,
      ),
      function: AppRoutes.ajuda),
  Service(
      id: 'p7',
      name: 'Sair',
      icon: const Icon(
        Icons.logout,
        size: 30,
      ),
      function: AppRoutes.login
      /*
        return Builder(builder: (BuildContext context) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Login()),
          );
        });
        */ /*
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Login()),
            );
        //)
*/
      //return Navigator.of(context).pushReplacementNamed(AppRoutes.login);
      //}
      ),
];
