import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibuddy/features/screens/buddy/sign_up/address_screen.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Text(
                  "SIGN UP",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                TextFormField(
                  controller: nameController,
                  validator: (value) {
                    if (!(value!.isAlphabetOnly)) {
                      return "Invalid Name";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Name",
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 10.0, top: 10),
                      child: Icon(
                        Icons.person_outline_rounded,
                      ),
                    ),
                    contentPadding: EdgeInsets.only(top: 20),
                  ),
                  obscureText: true,
                ),
                TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (!(value!.length >= 8)) {
                      return "Invalid Password";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Password",
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 10.0, top: 10),
                      child: Icon(
                        Icons.lock_outline_rounded,
                      ),
                    ),
                    contentPadding: EdgeInsets.only(top: 20),
                  ),
                  obscureText: true,
                ),
                TextFormField(
                  validator: (value) {
                    if (value != passwordController.text) {
                      return "Password not matching";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Confirm Password",
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 10.0, top: 10),
                      child: Icon(
                        Icons.lock_outline_rounded,
                      ),
                    ),
                    contentPadding: EdgeInsets.only(top: 20),
                  ),
                  obscureText: true,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const Address());
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(width, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
              ),
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
