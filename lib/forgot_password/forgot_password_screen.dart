
import 'package:flutter/material.dart';
import 'package:majek_real_estate_project/forgot_password/components/forgot_password_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ForgotPasswordBody(),
    );
  }
}
