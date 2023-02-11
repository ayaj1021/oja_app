import 'package:flutter/material.dart';
import 'package:oja_app/App_styles/app_styles.dart';

class AllowPushNotification extends StatefulWidget {
  final String text;
  const AllowPushNotification({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<AllowPushNotification> createState() => _AllowPushNotificationState();
}

class _AllowPushNotificationState extends State<AllowPushNotification> {
  bool value = false;

  bool theme = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.grey.shade300),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.text,
            style: Styles.headLineStyle4,
          ),
          Switch(
            value: value,
            onChanged: ((onChanged) {
              setState(() {
                value = onChanged;
              });
            }),
            activeColor: Colors.green,
            inactiveTrackColor: Colors.red,
            // thumbColor: MaterialStateProperty.all(value
            //     ? const Color.fromARGB(245, 241, 238, 238)
            //     : const Color.fromARGB(245, 52, 4, 143)),
          )
        ],
      ),
    );
  }
}


// class ToggleButton extends StatefulWidget {
//   const ToggleButton({super.key});

//   @override
//   State<ToggleButton> createState() => _ToggleButtonState();
// }

// class _ToggleButtonState extends State<ToggleButton> {
//   bool value = false;

//   bool theme = true;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Switch(
//           value: value,
//           onChanged: ((onChanged) {
//             setState(() {
//               value = onChanged;
//             });
//           }),
//           activeColor: Colors.green,
//           inactiveTrackColor: Colors.red,
//           thumbColor: MaterialStateProperty.all(value
//               ? const Color.fromARGB(245, 241, 238, 238)
//               : const Color.fromARGB(245, 52, 4, 143)),
//         )
//       ],
//     );
//   }
// }
