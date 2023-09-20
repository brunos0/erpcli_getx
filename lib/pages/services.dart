import 'package:flutter/material.dart';
import '../utils/app_routes.dart';
import '../models/services.dart';
import '../data/dummy_data.dart';
import 'package:get/get.dart';
import '../models/user.dart';

class Services extends StatelessWidget {
  Services({super.key});
  
  final userController = Get.find<User>();
  @override
  Widget build(BuildContext context) {

   
    final List<Service> loadedServices = dummyServices;

    return Scaffold(   
        appBar: AppBar(
          title: const Text(
            'Menu Principal',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: loadedServices.length,
          itemBuilder: (BuildContext ctx, index) {
            return InkWell(
              onTap: () {
                if (loadedServices[index].function == AppRoutes.login) {
                  Navigator.pushReplacementNamed(context, AppRoutes.login);
                } else {
                  Navigator.pushNamed(context, loadedServices[index].function);
                }
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    loadedServices[index].icon,
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10)),
                    Text(
                      loadedServices[index].name,
                      style: const TextStyle(
                          fontSize:
                              20 /*, color: Color.fromARGB(255, 19, 63, 22)*/),
                    ),
                  ],
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
        ),
        bottomSheet: Text("Usuário logado: ${userController.name.value}\nAcesso realizado em: ${userController.loginDate.value}"),
        );
  }
}
