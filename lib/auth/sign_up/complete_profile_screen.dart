import 'package:flutter/material.dart';
import 'package:majek_real_estate_project/auth/sign_up/components/complete_profile_body.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CompleteProfileBody(),
          ],
        ),
      ),
    );
  }
}
