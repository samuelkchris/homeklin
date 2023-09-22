import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../colors/colors.dart';
import 'homescreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  static const String id = 'register_screen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: double.infinity,
              height: screenSize.height * 0.2,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Column(children: [
                SizedBox(height: screenSize.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: screenSize.width * 0.08,
                      foregroundColor: Colors.indigo,
                      backgroundImage: const AssetImage('assets/logo.jpg'),
                    ),
                    SizedBox(width: screenSize.width * 0.02),
                    CircleAvatar(
                      radius: screenSize.width * 0.08,
                      foregroundColor: Colors.indigo,
                      backgroundImage: const AssetImage('assets/lock.jpg'),
                    ),
                    SizedBox(width: screenSize.width * 0.02),
                    CircleAvatar(
                      radius: screenSize.width * 0.08,
                      foregroundColor: Colors.indigo,
                      backgroundImage: const AssetImage('assets/phone.jpg'),
                    ),
                  ],
                ),
                SizedBox(height: screenSize.height * 0.03),
                Text("Register Now for a waste free Zone",
                    style: TextStyle(
                        fontSize: screenSize.width * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ]),
            ),
            // textformfield for Full name, genter, phone number Email, location password confirm pass word
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
                  SizedBox(
                    width: screenSize.width * 0.8,
                    height: screenSize.height * 0.04,
                    child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Full Name',
                        hintStyle: const TextStyle(
                          color: AppColors.inactiveColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.inactiveColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  SizedBox(
                    width: screenSize.width * 0.8,
                    height: screenSize.height * 0.04,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: const TextStyle(
                          color: AppColors.inactiveColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.inactiveColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  SizedBox(
                    width: screenSize.width * 0.8,
                    height: screenSize.height * 0.04,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        hintStyle: const TextStyle(
                          color: AppColors.inactiveColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.inactiveColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  SizedBox(
                    width: screenSize.width * 0.8,
                    height: screenSize.height * 0.04,
                    child: TextField(
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: const TextStyle(
                          color: AppColors.inactiveColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.inactiveColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  SizedBox(
                    width: screenSize.width * 0.8,
                    height: screenSize.height * 0.04,
                    child: TextField(
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                        hintText: 'Location',
                        hintStyle: const TextStyle(
                          color: AppColors.inactiveColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.inactiveColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  SizedBox(
                    width: screenSize.width * 0.8,
                    height: screenSize.height * 0.04,
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          color: AppColors.inactiveColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.inactiveColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  SizedBox(
                    width: screenSize.width * 0.8,
                    height: screenSize.height * 0.04,
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        alignLabelWithHint: true,
                        hintStyle: const TextStyle(
                          color: AppColors.inactiveColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.inactiveColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  //terms and conditions
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text(
                        'By signing up you agree to \nHomeklin terms of use and privacy policy',
                        style: TextStyle(
                          fontSize: screenSize.width * 0.04,
                          fontWeight: FontWeight.bold,
                          color: AppColors.inactiveColor,
                        ),
                      ),
                      //Row having sign up a or cancel buttons
                      SizedBox(height: screenSize.height * 0.02),
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.secondaryColor,
                          padding: EdgeInsets.symmetric(
                            horizontal: screenSize.width * 0.01,
                            vertical: screenSize.height * 0.01,
                          ),
                          minimumSize: Size(
                            screenSize.width * 0.3,
                            screenSize.height * 0.02,
                          ),
                        ),
                        child: Text(
                          'CANCEL',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.03,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.01),
                      Text(
                        'OR',
                        style: TextStyle(
                          fontSize: screenSize.width * 0.03,
                          fontWeight: FontWeight.bold,
                          color: AppColors.inactiveColor,
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.01),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                            horizontal: screenSize.width * 0.01,
                            vertical: screenSize.height * 0.01,
                          ),
                          minimumSize: Size(
                            screenSize.width * 0.3,
                            screenSize.height * 0.02,
                          ),
                        ),
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.03,
                            fontWeight: FontWeight.bold,
                            color: AppColors.secondaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: screenSize.height * 0.03),
            Text.rich(
              TextSpan(
                text: 'Already have an account? ',
                style: TextStyle(
                  fontSize: screenSize.width * 0.04,
                  fontWeight: FontWeight.bold,
                  color: AppColors.inactiveColor,
                ),
                children: [
                  TextSpan(
                    text: 'Log In',
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
                                builder: (context) => const RegisterScreen()));
                      },
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
