import 'package:flutter/material.dart';
import '../utils/app_routes.dart';
import 'package:get/get.dart';
import '../models/user.dart';

//import 'dart:developer' as dev;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  final _textoController = TextEditingController();
  final _textoController2 = TextEditingController();
  
  final userController = Get.put(User());
  final _formkey = GlobalKey<FormState>();

  void _submitform() {
    //sim eu sei que nao estou validando nada. 
    //pela hora nem da tempo de fazer nada
    _formkey.currentState?.save();
     Get.offNamed(AppRoutes.services);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 250,
            width: 350,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Image.asset("assets/coderia_logo.png", scale: 3 / 1),
                //const SizedBox(height: 10),
                Form(
                key: _formkey,
                child: Column( children: [
                SizedBox(
                  height: 80,
                  width: 350,
                  child: TextFormField(
                      maxLength: 14,
                      textAlign: TextAlign.left,
                      controller: _textoController,
                      validator: null,
                      onSaved: (cpfCnpj) {
                          userController.nameUser(cpfCnpj!);
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Cpf ou Cnpj",
                          icon: Icon(Icons.people),
                          hintText: 'Informe seu Cpf ou Cnpj')),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 80,
                  width: 350,
                  child: TextFormField(
                      textAlign: TextAlign.left,
                      controller: _textoController2,
                      validator: null,
                      onSaved: (password) {
                          userController.passwordUser(password!);
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Senha",
                          icon: Icon(Icons.more_horiz),
                          hintText: 'Informe a senha para acessar o sistema')),
                ),
              ])),
                const SizedBox(
                  height: 20,
                  width: 350,
                  child: Text(
                    'Esqueci minha senha',
                    textAlign: TextAlign.right,
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                    style: const ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(
                          Colors.white,
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 90, 146, 196))),
                    onPressed: () {
                      _submitform();
                     
                      /*
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutes.services);*/
                    },
                    child: const Text(
                      "Entrar",
                    )),
              ],
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 250, top: 150),
              child: Column(children: [
                const Text(
                  "Powered by:",
                  textAlign: TextAlign.right,
                ),
                Image.asset("assets/coderia_logo.png",
                    scale: 3 / 1, alignment: AlignmentDirectional.bottomEnd),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _textoController.dispose();
    _textoController2.dispose();
  }
}
