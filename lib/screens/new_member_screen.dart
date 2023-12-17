import 'package:flutter/material.dart';

import 'package:soti/widgets/exit_widget.dart';
import 'package:soti/widgets/logout_button_widget.dart';
import 'package:soti/widgets/side_menu_widget.dart';
import 'package:soti/widgets/user_list_widget.dart';

class NewMemberScreen extends StatelessWidget {
  NewMemberScreen({super.key});

  final List<String> dataColumns = [
    '이름',
    '닉네임',
    'Email',
    '등급',
    '학번',
    '기수',
  ];
  final List<List<String>> data = [
    [
      '최보규',
      'bobongku',
      'test@test.com',
      'ADMIN',
      '120180976',
      '1',
    ],
    [
      '최보규',
      'bobongku',
      'test@test.com',
      'ADMIN',
      '120180976',
      '1',
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      appBar: AppBar(
        title: const Text(
          '신규 회원',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.blueGrey.withOpacity(0.2),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: LogoutButton(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ExitButton(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          decoration: const BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: UserList(
                    data: data,
                    dataColumns: dataColumns,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
