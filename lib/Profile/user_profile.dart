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
  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _prenomController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _nbController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nomController.text = widget.user.userFname;
    _prenomController.text = widget.user.userName;
    _mailController.text = widget.user.mail;
    _nbController.text = widget.user.userNumber;
  }

  @override
  void dispose() {
    _nomController.dispose();
    _prenomController.dispose();
    _mailController.dispose();
    _nbController.dispose();
    super.dispose();
  }

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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 20,
            ),
            child: Image.asset(
              'assets/images/${widget.user.userName}.jpeg',
              width: 80,
              height: 80,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 80,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 56,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.black, width: 1),
                      left: BorderSide(color: Colors.black, width: 1),
                      right: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        'Nom              ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 50),
                      Expanded(
                        child: TextFormField(
                          controller: _nomController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: widget.user.userFname,
                          ),
                          onChanged: (value) {
                            setState(() {
                              widget.user.userFname = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 56,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.black, width: 1),
                      left: BorderSide(color: Colors.black, width: 1),
                      right: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        'Prénom         ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 50),
                      Expanded(
                        child: TextFormField(
                          controller: _prenomController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: widget.user.userName,
                          ),
                          onChanged: (value) {
                            setState(() {
                              widget.user.userName = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 56,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.black, width: 1),
                      left: BorderSide(color: Colors.black, width: 1),
                      right: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        'Email             ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 50),
                      Expanded(
                        child: TextFormField(
                          controller: _mailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: widget.user.mail,
                          ),
                          onChanged: (value) {
                            setState(() {
                              widget.user.mail = value;
                            });
                          },
                        ),
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
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        'Télephone     ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 50),
                      Expanded(
                        child: TextFormField(
                          controller: _nbController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: widget.user.userNumber,
                          ),
                          onChanged: (value) {
                            setState(() {
                              widget.user.userNumber = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
