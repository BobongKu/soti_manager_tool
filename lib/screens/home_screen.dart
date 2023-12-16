import 'dart:io';

import 'package:flutter/material.dart';
import 'package:soti/screens/login_screen.dart';
import 'package:soti/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                ApiService.logout();
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                  (route) => false,
                );
              },
              child: const Text('Logout'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                exit(0);
              },
              child: const Text('X'),
            ),
          ),
        ],
      ),
      body: Row(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('회원관리'),
            ),
          ),
        ],
      ),
    );
  }
}
