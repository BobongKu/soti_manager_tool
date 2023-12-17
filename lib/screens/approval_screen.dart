import 'package:flutter/material.dart';
import 'package:soti/screens/login_screen.dart';
import 'package:soti/services/api_service.dart';
import 'package:soti/widgets/exit_widget.dart';
import 'package:soti/widgets/side_menu_widget.dart';

class ApprovalScreen extends StatelessWidget {
  const ApprovalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: ExitButton(),
          ),
        ],
      ),
      body: const Text(
        'hello',
        style: TextStyle(fontSize: 222),
      ),
    );
  }
}
