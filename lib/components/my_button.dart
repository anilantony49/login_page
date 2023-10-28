import 'package:flutter/material.dart';
import 'package:login_page/credentials/keys.dart';
import 'package:login_page/homepage/homepage.dart';

class MyButton extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;

  const MyButton({
    super.key,
    required this.formKey,
    required this.usernameController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // width: 500,
      margin: const EdgeInsets.symmetric(horizontal: 50),
      child: ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            checkLogin(context);
            usernameController.clear();
            passwordController.clear();
          } else {
            print('please fill the the required fields');
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Please fill in all required fields.'),
              behavior: SnackBarBehavior.floating,
              margin: EdgeInsets.all(10),
            ));
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
          // minimumSize: MaterialStateProperty.all(Size(double.infinity, 20)), // Set the desired height
        ),
        child: const Center(
          child: Text(
            'LOGIN',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }

  void checkLogin(BuildContext context) {
    final username = usernameController.text;
    final password = passwordController.text;

    if (username == Credentials.username && password == Credentials.password) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return HomePage();
      }));
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Login successfully'),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(10),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Incorrect password and username'),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(10),
      ));
    }
  }
}
