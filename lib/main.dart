import 'package:flutter/material.dart';
import 'package:selaty/approuter.dart';

void main() {
  runApp(Selaty(
    appRouter: AppRouter(),
  ));
}

class Selaty extends StatelessWidget {
  final AppRouter appRouter;
  const Selaty({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
