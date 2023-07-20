import 'package:flutter/material.dart';
import 'package:flutter_convert/forms.dart';
import 'package:flutter_convert/shared_preferences.dart';
import 'package:flutter_convert/snackbar.dart';

import 'buttons.dart';
import 'theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  void login(BuildContext ctx, String email, String pass) async {
    if (email.isEmpty && pass.isEmpty) {
      CustomSnackBar.showToast(ctx, 'Inputan masih kosong!');
    } else {
      String pEmail = await SharedPrefUtils.readEmail();
      String pPassword = await SharedPrefUtils.readPassword();
      if (email == pEmail && pass == pPassword) {
        Navigator.pushNamedAndRemoveUntil(ctx, '/menu', (route) => false);
      } else {
        CustomSnackBar.showToast(ctx, 'Login Gagal!');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailCotroller = TextEditingController();
    final TextEditingController passwordCotroller = TextEditingController();

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 405,
            height: 260,
            margin: const EdgeInsets.only(
              top: 50,
              bottom: 60,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              CustomFormField(
                title: 'Alamat Email',
                controller: emailCotroller,
              ),
              const SizedBox(
                height: 8,
              ),
              CustomFormField(
                title: 'Password',
                obscureText: true,
                controller: passwordCotroller,
              ),
              const SizedBox(
                height: 38,
              ),
              CustomFillButton(
                title: 'Masuk',
                onPressed: () {
                  login(
                    context,
                    emailCotroller.text,
                    passwordCotroller.text,
                  );
                },
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextButton(
            title: 'Buat akun baru',
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up');
            },
          )
        ],
      ),
    );
  }
}
