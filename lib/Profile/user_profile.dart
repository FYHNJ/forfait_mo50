import 'package:flutter/material.dart';
import 'package:user_library/user_library.dart';
import 'package:forfait_mo50/main.dart';

class UserProfilePage extends StatefulWidget {
  final User user;
  const UserProfilePage({Key? key, required this.user}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Editer mon profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
        leading: IconButton(
          icon: Image.asset(
            'assets/images/return.jpeg',
            width: 24,
            height: 24,
          ), // 设置图片
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    MyHomePage(title: 'Forfait', user: widget.user),
              ),
            );
          },
        ),
      ),
      body: Container(
          // 编辑用户个人信息的界面内容
          // ...
          ),
    );
  }
}
