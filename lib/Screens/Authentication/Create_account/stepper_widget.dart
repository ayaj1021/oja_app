import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(primary: Styles.primaryColor)),
        child: Stepper(
          type: StepperType.horizontal,
          steps: getSteps(),
          currentStep: currentStep,
          onStepContinue: (() {
            setState(() {
              currentStep += 1;
            });
          }),
          onStepCancel: currentStep == 0
              ? null
              : (() {
                  setState(() {
                    currentStep -= 1;
                  });
                }),
               
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
          isActive: currentStep >= 0,
          title: Container(),
          content: Container(),
        ),
        Step(
          isActive: currentStep >= 1,
          title: Container(
            
          ),
          content: Container(),
        ),
        Step(
          isActive: currentStep >= 2,
          title: Container(),
          content: Container(),
        ),
        Step(
          isActive: currentStep >= 3,
          title: Container(),
          content: Container(),
        ),
      ];
}
