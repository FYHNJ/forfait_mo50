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
    return Stack(
      children: [
        Positioned(
          top: 32,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/MarcDupont.jpeg',
              width: 80,
              height: 80,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).padding.top + 131),
            child: const Text(
              'Marc Dupont',
              style: TextStyle(
                fontSize: 34,
                color: Color.fromRGBO(0, 40, 85, 1),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).padding.top + 206),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                backgroundColor: Colors.white, // 设置按钮背景色
                foregroundColor: const Color.fromRGBO(0, 40, 85, 1), // 设置按钮文字颜色
                textStyle: const TextStyle(
                  fontSize: 14, // 设置按钮文字大小
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25), // 设置按钮圆角
                  side: const BorderSide(
                      color: Color.fromRGBO(0, 40, 85, 1)), // 设置按钮边框样式
                ),
              ),
              child: const Text('Modifier mon profile',
                  style: TextStyle(
                      color: Color.fromRGBO(0, 40, 85, 1))), // 设置按钮文字内容
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).padding.top + 354),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/facture.jpeg',
                        width: 24,
                        height: 24,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Voir mes factures',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/arrow.jpeg',
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 56,
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                      right: BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/1.jpeg',
                        width: 24,
                        height: 24,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Mon forfait',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/arrow.jpeg',
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/logout.jpeg',
                        width: 24,
                        height: 24,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Déconnexion',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/arrow.jpeg',
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).padding.top + 621),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
          ),
        ),
      ],
    );
  }
}
