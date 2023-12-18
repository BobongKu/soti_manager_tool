import 'package:flutter/material.dart';

enum Role { ADMIN, USER, GUEST }

class RoleWidget extends StatefulWidget {
  const RoleWidget({super.key});

  @override
  State<RoleWidget> createState() => _RoleWidgetState();
}

class _RoleWidgetState extends State<RoleWidget> {
  Role? _role = Role.USER;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ListTile(
          title: const Text(
            'ADMIN',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: Radio(
            value: Role.ADMIN,
            groupValue: _role,
            onChanged: (Role? value) {
              setState(
                () {
                  _role = value;
                },
              );
            },
          ),
        ),
        ListTile(
          title: const Text(
            'USER',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: Radio(
            value: Role.USER,
            groupValue: _role,
            onChanged: (Role? value) {
              setState(
                () {
                  _role = value;
                },
              );
            },
          ),
        ),
        ListTile(
          title: const Text(
            'GUEST',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: Radio(
            value: Role.GUEST,
            groupValue: _role,
            onChanged: (Role? value) {
              setState(
                () {
                  _role = value;
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
