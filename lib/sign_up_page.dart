import 'package:flutter/material.dart';
import 'package:flutter_convert/shared_preferences.dart';
import 'package:flutter_convert/snackbar.dart';
import 'package:flutter_convert/theme.dart';

import 'buttons.dart';
import 'forms.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  void register(
    BuildContext ctx,
    String nama,
    String email,
    String pass,
  ) {
    SharedPrefUtils.saveNama(nama);
    SharedPrefUtils.saveEmail(email);
    SharedPrefUtils.savePassword(pass);

    CustomSnackBar.showToast(ctx, 'Berhasil simpan!');
    Navigator.pushNamed(ctx, '/sign-in');
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController namaCotroller = TextEditingController();
    final TextEditingController emailCotroller = TextEditingController();
    final TextEditingController passwordCotroller = TextEditingController();
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 355,
            height: 160,
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
          Text(
            'Register Akun TopUp',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              CustomFormField(
                title: 'Nama',
                controller: namaCotroller,
              ),
              const SizedBox(
                height: 8,
              ),
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
                title: 'Register',
                onPressed: () {
                  register(
                    context,
                    namaCotroller.text,
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
            title: 'Sign In',
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
            },
          )
        ],
      ),
    );
  }
}
