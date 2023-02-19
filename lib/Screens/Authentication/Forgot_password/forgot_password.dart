import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';
import 'package:oja_app/Screens/Authentication/Forgot_password/reset_password.dart';
import 'package:oja_app/Screens/Authentication/login_screen.dart';
import 'package:oja_app/Widgets/Button_containers/long_button_container.dart';
import 'package:oja_app/Widgets/Login_section_widgets/email_login.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});
  final TextEditingController textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    }),
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Forgot password?',
                    style: Styles.headLineStyle1,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Don\'t worry! it happens. A verification will be sent to the\nemail address associated with your account',
                    style: Styles.headLineStyle3
                        .copyWith(color: Styles.mainTextColor),
                  ),
                  const SizedBox(height: 30),

                  //Email input field area
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
                  const SizedBox(height: 350),
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResetPassword()));
                      }
                    },
                    child: LongButtonContainer(
                      text: 'Enter',
                      containerColor: Styles.mainTextColor,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
