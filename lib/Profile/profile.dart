import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 32),
          child: Image.asset(
            'assets/images/MarcDupont.jpg',
            width: 80,
            height: 80,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: const Text(
            'Marc Dupont',
            style: TextStyle(
              fontSize: 34,
              color: Color.fromRGBO(0, 40, 85, 1),
            ),
          ),
        ),
        const SizedBox(height: 20), // 添加垂直间距
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            backgroundColor: Colors.white, // 设置按钮背景色为白色
            foregroundColor: const Color.fromRGBO(0, 40, 85, 1), // 设置按钮文字颜色
            textStyle: const TextStyle(
              fontSize: 14, // 设置按钮文字大小为20
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), // 设置按钮圆角
              side: const BorderSide(
                  color: Color.fromRGBO(0, 40, 85, 1)), // 设置按钮边框样式
            ),
          ),
          child: const Text('Modifier mon profile',
              style:
                  TextStyle(color: Color.fromRGBO(0, 40, 85, 1))), // 设置按钮文字内容
        ),
        const SizedBox(height: 300),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            backgroundColor: const Color.fromRGBO(0, 40, 85, 1), // 设置按钮背景色
            foregroundColor: Colors.white, // 设置按钮文字颜色
            textStyle: const TextStyle(
              fontSize: 28, // 设置按钮文字大小
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), // 设置按钮圆角
              side: const BorderSide(
                  color: Color.fromRGBO(0, 40, 85, 1)), // 设置按钮边框样式
            ),
          ),
          child: const Text('Régler mes factures',
              style: TextStyle(color: Colors.white)), // 设置按钮文字内容
        ),
      ],
    );
  }
}
