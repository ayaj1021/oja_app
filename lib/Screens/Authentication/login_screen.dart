import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Screens/Authentication/Forgot_password/forgot_password.dart';
import 'package:oja_app/Screens/Bottom_navigation_bar/bottom_nav_bar.dart';
import 'package:oja_app/Screens/onboarding_screen.dart';
import 'package:oja_app/Widgets/Button_containers/long_button_container.dart';
import 'package:oja_app/Widgets/Login_section_widgets/email_login.dart';
import 'package:oja_app/Widgets/Login_section_widgets/password_login.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key, this.text});
  final String? text;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController passwordController = TextEditingController();

  TextEditingController textController = TextEditingController();
  TextEditingController pswdController = TextEditingController();

  String _message = '';
  var obscureText = true;
  var isEmpty = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OnboardingScreen()));
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Welcome back!',
                    style: Styles.headLineStyle1,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Your favorite market app has missed you 😀',
                    style: Styles.headLineStyle3
                        .copyWith(color: Styles.mainTextColor),
                  ),
                  const SizedBox(height: 40),
                  //Email address input field
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email address',
                        style: Styles.headLineStyle4,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        // padding: const EdgeInsets.symmetric(horizontal: 10),
                        // height: 56,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            // borderRadius: BorderRadius.circular(40),
                            // border: Border.all(color: Colors.grey.shade300),
                            ),
                        child: TextFormField(
                          controller: textController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40))),
                            prefixIcon: Icon(Icons.mail_outline_rounded),
                            hintText: 'example@gmail.com',
                          ),
                          validator: ((value) {
                            if (value!.isEmpty) {
                              return "Email can't be empty";
                            }
                            return null;
                          }),
                        ),
                      ),
                    ],
                  ),
                  //End of email address input field

                  // SignupLoginSection(
                  //   controller: textController,
                  // ),
                  const SizedBox(height: 30),
                  //Password input filed
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: Styles.headLineStyle4,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        //  padding: const EdgeInsets.symmetric(horizontal: 10),
                        //  height: 56,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            //  borderRadius: BorderRadius.circular(40),
                            //border: Border.all(color: Colors.grey.shade300)
                            ),
                        child: TextFormField(
                          obscureText: obscureText,
                          controller: pswdController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)),
                            prefixIcon: const Icon(Icons.lock_outline_rounded),
                            hintText: 'minimum of 6 characters',
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                              child: obscureText
                                  ? const Icon(
                                      Icons.visibility_off_outlined,
                                      color: Colors.grey,
                                    )
                                  : const Icon(
                                      Icons.visibility_outlined,
                                      color: Colors.grey,
                                    ),
                            ),
                          ),
                          validator: ((value) {
                            if (value!.isEmpty) {
                              return "Password can't be empty";
                            }
                            return null;
                          }),
                        ),
                      )
                    ],
                  ),
                  //End of password input field

                  const SizedBox(height: 30),
                  //Forgot password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPassword()));
                        }),
                        child: Text(
                          'Forgot password',
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.primaryColor),
                        ),
                      ),
                    ],
                  ),

                  //Login Button
                  const SizedBox(height: 120),
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        // setState(() {

                        // });

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BottomNavBar()));
                      }
                    },
                    child: LongButtonContainer(
                      text: 'Login',
                      containerColor: Styles.mainTextColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: (() {}),
                          child: Row(
                            children: [
                              Text(
                                'Don\'t have an account?',
                                style: Styles.headLineStyle6
                                    .copyWith(color: Styles.primaryColor),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                'Sign up',
                                style: Styles.headLineStyle7
                                    .copyWith(color: Styles.primaryColor),
                              )
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
