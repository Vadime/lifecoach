import 'package:flutter/material.dart';
import 'package:lifecoach/screens/payment_model_screen.dart';
import 'package:widgets/widgets.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginPage(
      onEmailSignUp: (email, password) {
        Navigation.flush(widget: const PaymentModelScreen());
      },
      onEmailSignIn: (email, password) {
        Navigation.flush(widget: const PaymentModelScreen());
      },
      onEmailSendPassword: (email) {
        Navigation.flush(widget: const PaymentModelScreen());
      },
      onPhoneSendCode: (code) {
        Navigation.flush(widget: const PaymentModelScreen());
      },
      onAppleLogin: () {
        Navigation.flush(widget: const PaymentModelScreen());
      },
      onGoogleLogin: () {
        Navigation.flush(widget: const PaymentModelScreen());
      },
    );
  }
}
