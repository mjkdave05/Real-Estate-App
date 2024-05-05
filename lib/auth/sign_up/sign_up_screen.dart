import 'package:flutter/material.dart';
import 'package:majek_real_estate_project/auth/sign_up/components/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       //title: Text("Sign Up"),
     ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SignUpBody(),
          ],
        ),
      ),
    );
  }
}






// import 'package:flutter/material.dart';
// import 'package:real_estate_project/screens/widgets/colors.dart';
// import 'package:real_estate_project/home/home_screen.dart';
//
//
// class SignupScreen extends StatefulWidget {
//   const SignupScreen({super.key});
//
//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }
//
// class _SignupScreenState extends State<SignupScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//
//               //////Hello again!
//               const Text(
//                 "Sign Up",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 36,
//                 ),
//               ),
//               const SizedBox(height: 10),
//
//               const Text(
//                 "Welcome to My Real Estate App!",
//                 style: TextStyle(
//                   fontSize: 18,
//                 ),
//               ),
//               const SizedBox(height: 50),
//
//               /////Full Name
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     border: Border.all(color: Colors.white),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: const Padding(
//                     padding: EdgeInsets.only(left: 20.0),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                         hintText: 'Full name',
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//
//               //////Email text field
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     border: Border.all(color: Colors.white),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: const Padding(
//                     padding: EdgeInsets.only(left: 20.0),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                         hintText: 'Email',
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//
//               //Password text field
//
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     border: Border.all(color: Colors.white),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: const Padding(
//                     padding: EdgeInsets.only(left: 20.0),
//                     child: TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                         hintText: 'Password',
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 15),
//
//               //Sign up button
//
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: GestureDetector(
//                   onTap: () {
//                     // Navigate to the new page
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const HomeScreen()),
//                     );
//                   },
//                 child: Container(
//                   padding: const EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                     color: primaryColor,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: const Center(
//                     child: Text(
//                       'Sign Up',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               ),
//               const SizedBox(height: 25),
//
//
//               //Not a member? Register now
//               Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       "Already have an account?",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                 GestureDetector(
//                   onTap: () {
//                     // Navigate to the new page
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(builder: (context) => const LoginScreen()),
//                     // );
//                   },
//                     child: const Text(
//                       " Login Now!",
//                       style: TextStyle(
//                         color: primaryColor,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
