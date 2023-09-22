import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hmeklin/screens/register_screen.dart';

import '../colors/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return MaterialApp(
      title: 'Homekline',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: screenSize.height * 0.05),
                Text(
                  'HOMEKLINE (U) LTD',
                  style: TextStyle(
                    fontSize: screenSize.width * 0.06,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  height: screenSize.height * 0.05,
                  thickness: screenSize.width * 0.02,
                  color: Colors.white,
                ),
                SizedBox(height: screenSize.height * 0.05),
                Center(
                  child: CircleAvatar(
                    radius: screenSize.width * 0.2,
                    backgroundImage: const AssetImage('assets/logo.jpg'),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.05),
                Text(
                  '"A Clean Environment awaits"',
                  style: TextStyle(
                    fontSize: screenSize.width * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.02),
                Container(
                    width: double.infinity,
                    height: screenSize.height * 0.6,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: screenSize.height * 0.05),
                        //textformfilds for both email and password
                        Container(
                          width: screenSize.width * 0.8,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                fontSize: screenSize.width * 0.05,
                                fontWeight: FontWeight.bold,
                                color: AppColors.inactiveColor,
                              ),
                              border: const OutlineInputBorder(),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.inactiveColor,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.accentColor,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                        Container(
                          width: screenSize.width * 0.8,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontSize: screenSize.width * 0.05,
                                fontWeight: FontWeight.bold,
                                color: AppColors.inactiveColor,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.inactiveColor,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: AppColors.accentColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.02),

                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.secondaryColor,
                            shape: RoundedRectangleBorder(),
                            minimumSize: Size(
                              screenSize.width * 0.3,
                              screenSize.height * 0.02,
                            ),
                          ),
                          child: Text(
                            'LOG IN',
                            style: TextStyle(
                              fontSize: screenSize.width * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: screenSize.width * 0.04,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              decorationStyle: TextDecorationStyle.solid,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.01),

                        Text.rich(
                          TextSpan(
                            text: 'New to HOMEKLIN? ',
                            style: TextStyle(
                              fontSize: screenSize.width * 0.04,
                              fontWeight: FontWeight.bold,
                              color: AppColors.inactiveColor,
                            ),
                            children: [
                              TextSpan(
                                text: 'Sign Up',
                                style: TextStyle(
                                  fontSize: screenSize.width * 0.04,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  decorationStyle: TextDecorationStyle.solid,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const RegisterScreen()));
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
