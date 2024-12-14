import 'package:flutter/material.dart';
import 'package:ucsp_voting/configs/configs.dart';
import 'package:ucsp_voting/screens/screens.dart';
import 'package:wiredash/wiredash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Wiredash(
      projectId: Env.projectId,
      secret: Env.secretKey,
      child: MaterialApp(
        title: 'UCSP Voting',
        theme: ThemeData(
          fontFamily: 'Monda',
          primaryColor: Palette.primary,
          colorScheme: ColorScheme.fromSeed(seedColor: Palette.primary),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/home': (context) => const HomeScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
