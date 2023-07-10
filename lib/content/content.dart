import 'package:flutter_convert/content/footer.dart';
import 'package:flutter_convert/content/header.dart';
import 'package:flutter_convert/content/input_nomor.dart';
import 'package:flutter_convert/content/pembayaran.dart';
import 'package:flutter_convert/content/pilihan.dart';
import 'package:flutter_convert/content/sinopsis.dart';
import 'package:flutter/material.dart';
import 'description.dart';
import 'info.dart';

class TopupScreen extends StatefulWidget {
  const TopupScreen({super.key});

  @override
  State<TopupScreen> createState() => _TopupScreenState();
}

class _TopupScreenState extends State<TopupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff1B4BF5),
        leading: Image.asset(
          'assets/icons.png',
          width: 25,
        ),
        title: const Text('TI WTC TOPUP'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Column(
                children: [
                  const Header(),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Sinopsis(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Informasi(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Pilihan(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Pembayaran(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const NomorWa(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Description(),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
