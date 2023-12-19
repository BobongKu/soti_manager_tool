import 'package:flutter/material.dart';
import 'package:soti/widgets/customTextField_widget.dart';

class DetailTextFields extends StatefulWidget {
  const DetailTextFields({
    super.key,
  });

  @override
  State<DetailTextFields> createState() => _DetailTextFieldsState();
}

class _DetailTextFieldsState extends State<DetailTextFields> {
  final _nameController = TextEditingController();
  final _nickNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _stuNumController = TextEditingController();
  final _joinYearController = TextEditingController();
  final _dreamHackController = TextEditingController();
  final _githubController = TextEditingController();
  final _tistoryController = TextEditingController();
  final _awardController = TextEditingController();
  final _skillController = TextEditingController();

  @override
  void initState() {
    _nameController.text = '최보규';
    _nickNameController.text = 'Bobong';
    _emailController.text = 'test@test.com';
    _stuNumController.text = '120180976';
    _joinYearController.text = '2023';
    _dreamHackController.text = 'https://dreamhack.io/users/7805/';
    _githubController.text = 'https://dreamhack.io/users/7805/';
    _tistoryController.text = 'https://dreamhack.io/users/7805/';
    _awardController.text = '웹취약점 대회 수상';
    _skillController.text = '웹 해킹';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                CustomTextField(
                  labelText: '이름',
                  controller: _nameController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  labelText: '닉네임',
                  controller: _nickNameController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  labelText: 'Email',
                  controller: _emailController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  labelText: '학번',
                  controller: _stuNumController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  labelText: '기수',
                  controller: _joinYearController,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              children: [
                CustomTextField(
                  labelText: 'DreamHack',
                  controller: _dreamHackController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  labelText: 'Github',
                  controller: _githubController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  labelText: 'Tistory',
                  controller: _tistoryController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  labelText: '수상',
                  controller: _awardController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  labelText: 'Skill',
                  controller: _skillController,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
