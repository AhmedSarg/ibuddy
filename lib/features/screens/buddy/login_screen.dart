import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ibuddy/features/screens/buddy/sign_up/sign_up_screen.dart';
import '../../../core/utils/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
        body: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              height: height * 2 / 5,
              color: Colors.red,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: height * 2 / 15),
              child: const Text(
                "LOG IN",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white),
              ),
            )
          ],
        ),
        SizedBox(
          height: height * 3 / 5,
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, right: 40, left: 40, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (!(value!.isEmail)) {
                        return "Invalid Email";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: "Email",
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(right: 10.0, top: 10),
                        child: Icon(
                          Icons.email_outlined,
                        ),
                      ),
                      contentPadding: EdgeInsets.only(top: 20),
                    ),
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
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Success"),
                            duration: Duration(seconds: 1),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Failed"),
                            duration: Duration(seconds: 1),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(width, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                    ),
                    child: const Text("LOG IN"),
                  ),
                  const Text("OR CONTINUE WITH"),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              fixedSize: Size((width - 100) / 2, 40),
                              side: const BorderSide(
                                  width: 1, color: AppColors.black)),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 30.0),
                                child: Icon(
                                  FontAwesomeIcons.facebookF,
                                  color: Colors.blue,
                                ),
                              ),
                              Text(
                                "Facebook",
                                style: TextStyle(color: AppColors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            fixedSize: Size((width - 100) / 2, 40),
                            side: const BorderSide(
                                width: 1, color: AppColors.black),
                          ),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 30.0),
                                child: Icon(
                                  FontAwesomeIcons.google,
                                  color: Colors.blue,
                                ),
                              ),
                              Text(
                                "Google",
                                style: TextStyle(color: AppColors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("DON'T HAVE ACCOUNT ?"),
                      TextButton(
                        onPressed: () {
                          Get.to(const SignUp());
                        },
                        child: const Text(
                          "SIGN UP",
                          style: TextStyle(fontWeight: FontWeight.w700, color: AppColors.black),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
