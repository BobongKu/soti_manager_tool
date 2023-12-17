import 'package:flutter/material.dart';
import 'package:soti/screens/new_member_screen.dart';
import 'package:soti/screens/home_screen.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'SOTI Manager',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                title: const Text(
                  '정규 회원',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const HomeScreen(),
                      transitionDuration: Duration.zero,
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text(
                  '신규 회원',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          NewMemberScreen(),
                      transitionDuration: Duration.zero,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 400,
              ),
              ListTile(
                title: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Soti',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
                onTap: () async {
                  if (!await launchUrlString('http://soti.or.kr')) {
                    throw Exception('Could not launch');
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
