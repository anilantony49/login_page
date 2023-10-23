import 'package:flutter/material.dart';
import 'package:login_page/homepage/homepage.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000)),
      height: 50,
      // width: 500,
      margin: const EdgeInsets.symmetric(horizontal:50),
      child: ElevatedButton(
        onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
              // minimumSize: MaterialStateProperty.all(Size(double.infinity, 20)), // Set the desired height
    
        ),
        child: const Center(
          child: Text(
            'LOGIN',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
      ),
    );
  }
}
