import 'package:flutter/material.dart';
import 'package:majek_real_estate_project/home/home_screen.dart';


import '../../../screens/widgets/colors.dart';

class CompleteProfileBody extends StatelessWidget {
  const CompleteProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              "Complete Profile",
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
            CompleteProfileForm(),
          ],
        ),
      ),
    );
  }
}


class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  get error => null;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 30),
          ///////////////First Name///////////////

          TextFormField(

            validator: (value) {
              if (value!.isEmpty) {

                setState(() {
                  error.add("Please enter your firstname");
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "First Name",
              hintText: "Enter your first name",
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
                  Icons.person_outline,
                  color: Colors.grey[600],
                  size: 20,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),

          ////////////////Last Name///////////////

          TextFormField(

            validator: (value) {
              if (value!.isEmpty) {

                setState(() {
                  error.add("Please enter your lastname");
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Last Name",
              hintText: "Enter your last name",
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
                  Icons.person_outline,
                  color: Colors.grey[600],
                  size: 20,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),

          /////////////Phone Number/////////////

          TextFormField(
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value!.isEmpty) {

                setState(() {
                  error.add("Please enter your phone number");
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Phone Number",
              hintText: "Enter your phone number",
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
                  Icons.phone_android_outlined,
                  color: Colors.grey[600],
                  size: 20,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),

          /////////////Address//////////////
          TextFormField(
            keyboardType: TextInputType.streetAddress,
            validator: (value) {
              if (value!.isEmpty) {

                setState(() {
                  error.add("Please enter your address");
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Address",
              hintText: "Enter your address",
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
                  Icons.location_on_outlined,
                  color: Colors.grey[600],
                  size: 20,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),

          ///////////////button///////////////

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: GestureDetector(
              onTap: () {
                //Navigate to the new page
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
          const SizedBox(height: 30),
          
          Text(
              "By continuing you confirm that you agree with \nour Term and Condition",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[800],
            ),
          )
        ],
      ),
    );
  }
}

