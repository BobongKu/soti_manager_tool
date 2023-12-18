import 'package:flutter/material.dart';
import 'package:soti/screens/detail_screen.dart';

class UserList extends StatelessWidget {
  const UserList({
    super.key,
    required this.dataColumns,
    required this.data,
  });

  final List<String> dataColumns;
  final List<List<String>> data;

  @override
  Widget build(BuildContext context) {
    return DataTable(
      showBottomBorder: true,
      dataTextStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      headingTextStyle: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Colors.purple,
      ),
      columns: [
        const DataColumn(
          label: Expanded(
            child: Icon(
              Icons.edit_note,
              size: 30,
            ),
          ),
        ),
        for (var dataColumn in dataColumns)
          DataColumn(
            label: Expanded(
              child: Center(
                child: Text(
                  dataColumn,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
      ],
      rows: [
        for (var dataRows in data)
          DataRow(
            cells: [
              DataCell(
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(1),
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const DetailScreen(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = const Offset(0.0, 1.0);
                            var end = Offset.zero;
                            var curve = Curves.ease;
                            var curveTween = CurveTween(curve: curve);

                            var tween =
                                Tween(begin: begin, end: end).chain(curveTween);

                            var offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Edit',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              for (var dataRow in dataRows)
                DataCell(
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      dataRow,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
      ],
    );
  }
}
