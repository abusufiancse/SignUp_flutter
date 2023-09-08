import 'package:first_app/pages/button.dart';
import 'package:first_app/pages/square_tile.dart';
import 'package:first_app/pages/text_field.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blank Flutter Project',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final usernameController = TextEditingController();
  final passController = TextEditingController();
//sigh user in method for button
  void signUserin() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 25,
              ),
              //welcome text
              Text(
                'Welcome Back, You\'ve been missed! ',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //user Textfield
              MyTextField(
                controller: usernameController,
                hintText: "Enter your Email",
                obscureText: false,
              ),
              const SizedBox(
                height: 15,
              ),
              //pass Textfield
              MyTextField(
                controller: passController,
                hintText: 'Enter your password',
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              //forget pass
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  InkWell(
                    onTap: () {},
                    child: Text('forget your password',
                        style: TextStyle(color: Colors.grey.shade600)),
                  ),
                ]),
              ),

              //sign in
              const SizedBox(
                height: 15,
              ),
              MyButton(
                onTap: signUserin,
              ),
              const SizedBox(
                height: 25,
              ),

              //or continue
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                        child:
                            Divider(thickness: 1, color: Colors.grey.shade400)),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text('or contine with'),
                    ),
                    Expanded(
                        child:
                            Divider(thickness: 1, color: Colors.grey.shade400))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // google apple button
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(
                    imagePath: 'lib/images/google.png',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SquareTile(imagePath: 'lib/images/apple.png'),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              //not member reg now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your are not member',
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Regiter Now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
