import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: "Change Password",
      body: ColumnWidget(
        margin: const EdgeInsets.all(20),
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFieldWidget(
            controller: PasswordController(""),
            autofocus: true,
          ),
          const SizedBox(height: 20),
          TextFieldWidget(
            controller: PasswordController(""),
            autofocus: true,
          ),
        ],
      ),
      primaryButton: ElevatedButtonWidget(
        "Change Password",
        onPressed: () {
          Navigation.pop();
        },
      ),
    );
  }
}
