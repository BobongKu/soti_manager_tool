import 'package:flutter/material.dart';
import 'package:soti/screens/home_screen.dart';
import 'package:soti/services/api_service.dart';
import 'package:soti/widgets/exit_widget.dart';

void showSnackBar(BuildContext context, Text text) {
  final snackBar = SnackBar(
    content: text,
    backgroundColor: Colors.redAccent.shade200,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _idTextEditController = TextEditingController();
  final _passwordTextEditController = TextEditingController();

  login() async {
    if (await ApiService.login(
        _idTextEditController.text, _passwordTextEditController.text)) {
      if (context.mounted) {
        return Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomeScreen();
            },
          ),
          (route) => false,
        );
      }
    } else {
      _idTextEditController.clear();
      _passwordTextEditController.clear();
      if (context.mounted) showSnackBar(context, const Text('Wrong'));
    }
  }

  @override
  void dispose() {
    _idTextEditController.dispose();
    _passwordTextEditController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ExitButton(),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 130,
                  ),
                  const Text(
                    'SOTI',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    '😎',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 400,
                    child: TextField(
                      controller: _idTextEditController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 5.0,
                          ),
                        ),
                        labelText: 'Id',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.purple,
                        ),
                        floatingLabelStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 400,
                    child: TextField(
                      controller: _passwordTextEditController,
                      obscuringCharacter: '♬',
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 5.0,
                          ),
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.purple,
                        ),
                        floatingLabelStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: login,
                    child: const Text('Login'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
