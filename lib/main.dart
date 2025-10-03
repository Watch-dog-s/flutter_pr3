import 'package:flutter/material.dart';

import 'ProfileScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'практическая работа 3',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),



      //задаём маршруты
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeProfileUserPage(title: 'Главный экран'),
        '/profile': (context) => const ProfileScreen(title: 'Профиль'),

      },

    );
  }
}




class HomeProfileUserPage extends StatelessWidget{
  final String title;
  const HomeProfileUserPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(child: NavigationButtons()),
    );
  }
}

void NavigateTo(BuildContext context, String routeName) {
  Navigator.pushNamed(context, routeName);
}



class NavigationButtons extends StatelessWidget{
  const NavigationButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        ElevatedButton(onPressed: () { NavigateTo(context, "/");  }, child: const Text("Главный экран")),
        ElevatedButton(onPressed: () { NavigateTo(context, "/profile");  }, child: const Text("Профиль")),


      ],

    );

  }

  }








