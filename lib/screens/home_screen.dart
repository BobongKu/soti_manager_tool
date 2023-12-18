import 'package:flutter/material.dart';
import 'package:soti/services/api_service.dart';
import 'package:soti/widgets/exit_widget.dart';
import 'package:soti/widgets/logout_button_widget.dart';
import 'package:soti/widgets/side_menu_widget.dart';
import 'package:soti/widgets/user_list_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    ],
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
    ],
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
    ],
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
    ],
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
    ],
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
    ],
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
    ],
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
    ],
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
    ],
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
    ],
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
    ],
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
    ],
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
  void initState() {
    ApiService.test();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      appBar: AppBar(
        title: const Text(
          '정규 회원',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.withOpacity(0.2),
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
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
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
