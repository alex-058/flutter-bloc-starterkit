import 'package:flutter/material.dart';
import 'package:flutter_bloc_starterkit/core/presentation/screens/my_page.dart';
import 'package:flutter_bloc_starterkit/core/presentation/theme/theme.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Inter',
        textTheme: lightTextTheme,
        appBarTheme: const AppBarTheme(
          titleSpacing: 25,
          centerTitle: false,
          titleTextStyle: TextStyle(fontSize: 30, color: Colors.black),
        ),
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
    );
  }
}

final GoRouter _router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const MyPage(),
    ),
  ],
);
