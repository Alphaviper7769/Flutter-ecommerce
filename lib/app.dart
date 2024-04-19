
import 'package:ecommerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';





//// --------- Use Class to setup themes, inital Binding, animation -------------
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
    );
  }
}