
import 'package:flutter/material.dart';
import 'package:majek_real_estate_project/forgot_password/forgot_password_screen.dart';
import 'package:majek_real_estate_project/home/home_screen.dart';
import 'package:majek_real_estate_project/screens/widgets/colors.dart';
import 'package:majek_real_estate_project/auth/sign_up/sign_up_screen.dart';

import '../../../screens/widgets/styles.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
        padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: appPadding / 2,
        ),
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Text(
                  "Welcome Back",
                style: TextStyle(
                    color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Sign in with your email and password or continue with social media",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 40),
              const SignForm(),
            ],
          ),
        ),
    );
  }
}

class SignForm extends StatefulWidget {
   const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  get error => [];

  final _form = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  // var _isLogin = true;
  // var _enteredEmail = "";
  // var _enteredPassword = "";
  //
  // void _submit() {
  //   final isValid = _form.currentState!.validate();
  //
  //   if (isValid) {
  //     _form.currentState!.save();
  //     print(_enteredEmail);
  //     print(_enteredPassword);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _form,
        child: Column(
          children: [
            const SizedBox(height: 20),

            //////Email Section/////

            TextFormField(
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.trim().isEmpty || !value.contains("@")) {
                 return 'Please enter a valid email address.';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,

                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(),
                  gapPadding: 10,
                ),
                suffixIcon: Padding(
                 padding: const EdgeInsets.fromLTRB(0, 18, 18, 18 ),
                  child: Icon(
                      Icons.mail_outline,
                      color: Colors.grey[600],
                      size: 20,
                  ),
                ),
              ),
              // onSaved: (value) {
              //   _enteredEmail = value!;
              // },
            ),
            const SizedBox(height: 30),

            ///////Password Section////////

            TextFormField(
              controller: _password,
              obscureText: true,
              validator: (value) {
                if (value == null || value.trim().length <8) {
                  return 'Password must be at least 8 characters long.';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(),
                  gapPadding: 10,
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 18, 18, 18 ),
                  child: Icon(
                    Icons.lock_outline,
                    color: Colors.grey[600],
                    size: 20,
                  ),
                ),
              ),
              // onSaved: (value) {
              //   _enteredPassword = value!;
              // },
            ),
            const SizedBox(height: 20),

            ///////////Remember Me and Forgot Password////////

            Row(
              children: [
                Checkbox(
                  value: false,
                  activeColor: primaryColor,
                  onChanged: (value) {
                    setState(() {

                    });
                  },
                ),
                const Text("Remember me"),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    // Navigate to the new page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()),
                    );
                  },
                  child: Text(
                    "Forgot Password",
                  style: TextStyle(
                    color: Colors.grey[800],
                      decoration: TextDecoration.underline,
                  ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            //////Button Navigation////////

            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                 child: GestureDetector(
                   onTap: () {
                     if (_form.currentState!.validate()) {
                       print("Validation is done");
                     }
                     // Navigate to the new page
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const HomeScreen()),
                     );
                   },
                   child: Container(
                     padding: const EdgeInsets.all(20),
                     decoration: BoxDecoration(
                       color: primaryColor,
                       borderRadius: BorderRadius.circular(12),
                     ),
                     child: const Center(
                       child: Text(
                         'Sign In',
                         style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize: 18,
                         ),
                       ),
                     ),
                 ),
               ),
              ),
            const SizedBox(height: 70),

            ////////Social Media Icons///////////

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/icons-facebook.png", // Replace with the path to your image
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/icons-google.png",
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/icons-twitter.png', // Replace with the path to your image
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ),
            const SizedBox(height: 30),
          ],
        ),
            SizedBox(height: 20),


            //////////Don't Have an Account/////////

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the new page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpScreen()),
                    );
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
      ],
        ),
    );
  }
}
