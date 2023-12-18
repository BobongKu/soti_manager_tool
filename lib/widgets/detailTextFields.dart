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

  @override
  void initState() {
    _nameController.text = 'hello';
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
                  controller: _nameController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: _nameController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: _nameController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: _nameController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: _nameController,
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
                  controller: _nameController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: _nameController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: _nameController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: _nameController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: _nameController,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
