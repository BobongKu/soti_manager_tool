import 'package:flutter/material.dart';
import 'package:soti/screens/login_screen.dart';
import 'package:soti/services/api_service.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.black),
      ),
      onPressed: () {
        ApiService.logout();
        Navigator.pushAndRemoveUntil(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const LoginScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var begin = const Offset(0.0, 1.0);
              var end = Offset.zero;
              var curve = Curves.ease;
              var curveTween = CurveTween(curve: curve);

              var tween = Tween(begin: begin, end: end).chain(curveTween);

              var offsetAnimation = animation.drive(tween);

              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },
          ),
          (route) => false,
        );
      },
      child: const Text(
        'Logout',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
