import 'package:get/get.dart';

class User extends GetxController {
  var name = ''.obs;
  var password = ''.obs;
  var loginDate = DateTime.now().obs;

  void nameUser(String paramName){
    name.value = paramName;
    update();
  }

  void passwordUser(String paramPsw){
    password.value = paramPsw;
    update();
  }
}