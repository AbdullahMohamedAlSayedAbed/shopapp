import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopapp/core/constants/end_point_const.dart';
import 'package:shopapp/core/services/api_services.dart';
import 'package:shopapp/core/services/cache_helper_services.dart';
import 'package:shopapp/features/Home/presentation/views/home_view.dart';
import 'package:shopapp/features/auth/presentation/views/login_view.dart';
import 'package:shopapp/features/search/presentation/controllers/search_cubit/search_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ApiServices.init();
  await CacheHelper.init();
  bool isLogin = CacheHelper.getData(key: login) ?? false;
  getToken = CacheHelper.getDataString(key: token) ?? '';
  runApp(ShopApp(isLogin: isLogin));
}

Map<int, bool> favorites = {};

class ShopApp extends StatelessWidget {
  const ShopApp({super.key, required this.isLogin});
  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        primarySwatch: Colors.deepOrange,
      ),
      home: isLogin ? const HomeView() : const LoginView(),
    );
  }
}
