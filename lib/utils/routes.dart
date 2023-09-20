import 'app_routes.dart';
import 'package:get/get.dart';
import '../pages/ajuda.dart';
import '../pages/sac.dart';
import '../pages/financeiro.dart';
import '../pages/vendas.dart';
import '../pages/compras.dart';
import '../pages/cadastro.dart';
import '../pages/services.dart';
import '../pages/login.dart';
import '../pages/intro.dart';

class Routes  {
  
  final List<GetPage> getPages =  [
  //final getPages =  [
          GetPage(name: AppRoutes.intro, page: () => const Intro()),
          GetPage(name: AppRoutes.login, page: () =>  const Login()),
          GetPage(name: AppRoutes.services,  page: () => Services(), transition: Transition.zoom ), 
          GetPage(name: AppRoutes.sac, page: () => const Sac() ), 
          GetPage(name: AppRoutes.financeiro, page: () => const Financeiro() ),
          GetPage(name: AppRoutes.vendas, page: () => const Vendas() ),
          GetPage(name: AppRoutes.compras, page: () => const Compras() ),
          GetPage(name: AppRoutes.cadastro, page: () => const Cadastro() ),
          GetPage(name: AppRoutes.ajuda, page: () => const Ajuda()  )          
          ];

  
  //final GetPage getPages = GetPage(children: []);

  List<GetPage> get routes {
    return getPages;
  }

  get initialRoute {
    return AppRoutes.intro;
  }
  

}
