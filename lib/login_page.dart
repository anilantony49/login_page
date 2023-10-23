
import 'package:flutter/material.dart';
import 'package:login_page/components/my_button.dart';
import 'package:login_page/components/my_textfield.dart';
import 'package:login_page/components/square_tile.dart';
import 'package:login_page/homepage/homepage.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Text editing controllers

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Welcome back',
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                const SizedBox(
                  height: 25,
                ),
                MyTextField(
                  
                  preffixIcon: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.person),
                  ),
                  controller: usernameController,
                  obscureText: false,
                  hintext: 'Email',
                  keybordType: TextInputType.name,
                ),
                const SizedBox(
                  height: 10,
                ),
                MyTextField(
                  preffixIcon: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.lock),
                  ),
                  suffixIcon: const Icon(Icons.visibility),
                  controller: passwordController,
                  hintext: 'Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                MyButton(
                  onTap: signUserIn(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text("Don't have an account ?"),
                Text(' Sign Up',style: TextStyle(color: Colors.blue,fontWeight:FontWeight.bold,),),
                  ],
                ),
               
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Or continue with'),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),

                // google + apple sign in button

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // google button
                    SquareTile(imagePath: 'assets/images/google.png'),

                    SizedBox(
                      width: 25,
                    ),
                    SquareTile(imagePath: 'assets/images/apple.png')
                    // apple button
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      'Register now',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 // Sign user in method
   signUserIn() {
  }
