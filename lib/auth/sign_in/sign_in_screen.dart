import 'package:flutter/material.dart';
import 'package:majek_real_estate_project/auth/sign_in/components/sign_in_body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SignInBody(),
          ],
        ),
      ),
    );
  }
}







// import 'package:flutter/material.dart';
// import 'package:real_estate_project/screens/widgets/colors.dart';
// import 'package:real_estate_project/screens/sign_up_screen.dart';
// import 'buttom_nav_bar.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
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
//             //////Hello again!
//             const Text(
//                 "Login",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 36,
//                 ),
//             ),
//               const SizedBox(height: 10),
//
//               const Text(
//                 "Welcome back to My Real Estate App!",
//                 style: TextStyle(
//                   fontSize: 18,
//                 ),
//               ),
//               const SizedBox(height: 50),
//
//             //////Email text field
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.grey[200],
//                   border: Border.all(color: Colors.white),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: const Padding(
//                   padding: EdgeInsets.only(left: 20.0),
//                   child: TextField(
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: 'Email',
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//               const SizedBox(height: 10),
//
//             //Password text field
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
//               //Sign in / Login button
//
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: GestureDetector(
//                   onTap: () {
//                     // Navigate to the new page
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => ButtomNavigationBar()),
//                     );
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.all(20),
//                     decoration: BoxDecoration(
//                       color: primaryColor,
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: const Center(
//                       child: Text(
//                         'Login',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 25),
//
//
//             //Not a member? Register now
//               Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       "Don't have an account?",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         // Navigate to the new page
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const SignupScreen()),
//                         );
//                       },
//                       child: const Text(
//                         " Sign Up!",
//                         style: TextStyle(
//                           color: primaryColor,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//           ],),
//         ),
//       ),
//     );
//   }
// }
