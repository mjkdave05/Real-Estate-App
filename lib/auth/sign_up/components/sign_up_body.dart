import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:majek_real_estate_project/auth/sign_up/complete_profile_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../screens/widgets/colors.dart';


class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
                "Register Account",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                height: 1.5,
              ),
            ),
            SizedBox(height: 5),
            Text(
                "Complete your details or continue with \nsocial media",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 50),
            SignUpForm(),
          ],
        ),
      ),
    );
  }
}

final _firebase = FirebaseAuth.instance;

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});


  // final _formKey = GlobalKey<FormState>();
  // String email;
  // String password;
  // String confirm_password;
  // final List<String> errors = [];
  //
  // void addError({String error}) {
  //   if (!errors.contains(error))
  //     setState(() {
  //       errors.add(error);
  //     });
  // }
  //
  // void removeError({String error}) {
  //   if (errors.contains(error))
  //     setState(() {
  //       errors.remove(error);
  //     });
  // }

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  get error => null;

  final _form = GlobalKey<FormState>();

  var _isLogin = true;
  var _enteredEmail = "";
  var _enteredPassword = "";
  // var _enteredConfirmPassword = "";

  void _submit() async{
    final isValid = _form.currentState!.validate();

    if (isValid) {
      return;
    }
      _form.currentState!.save();
      print(_enteredEmail);
      print(_enteredPassword);
      // print(_enteredConfirmPassword);

    if (_isLogin) {
      //log users in
    } else {
      try {
        final userCredentials = await _firebase.createUserWithEmailAndPassword(
            email: _enteredEmail, password: _enteredPassword);
        print(userCredentials);
      } on FirebaseAuthException catch (error) {
        if (error.code == 'email-already-in-use') {
          // ...
        }
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(error.message ?? 'Authentication failed'),
        ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _form,
        child: Column(
          children: [

            ////////Email Section//////

            TextFormField(
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
              onSaved: (value) {
                _enteredEmail = value!;
              },
            ),
            const SizedBox(height: 30),


            ////////////Password Section////////////

            TextFormField(

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
              onSaved: (value) {
                _enteredPassword = value!;
              },
            ),
            const SizedBox(height: 30),

            //////////Confirm Password///////////

            TextFormField(
              obscureText: true,
              validator: (value) {
                if (value == null || value.trim().length <8) {
                  return 'Password must be at least 8 characters long.';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Confirm Password",
                hintText: "Re-enter your password",
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
              //   _enteredConfirmPassword = value!;
              // },
            ),
            const SizedBox(height: 40),

            //////////button//////////

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: GestureDetector(
                onTap: () {
                  _submit();
                  //Navigate to the new page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CompleteProfileScreen()),
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
                      'Continue',
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
            const SizedBox(height: 50),

            ///////////Social Media Icons///////////

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
                        'assets/icons-facebook.png', // Replace with the path to your image
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
                        'assets/icons-google.png', // Replace with the path to your image
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
            const SizedBox(height: 40),

            ///////////////Terms and Conditions/////////////
            Text(
              "By continuing, you confirm that you agree \nwith our Term and Condition",
                  textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 15,
              ),
            ),
          ],
        ),
    );
  }
}

