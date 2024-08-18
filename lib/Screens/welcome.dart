
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/home.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
              "assets/photos/ded0bbdd8485e424327257405a86a884.gif"),
         const Text(
            "Welcome To My Chat App",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  // ignore: non_constant_identifier_names
                  builder: (Context) => const HomeScreen(),
                ),
              );
            },
             icon: const Icon(
              color: Colors.black,
              Icons.forward,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}
