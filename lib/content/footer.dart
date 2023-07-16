import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xff1B4BF5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Teknologi Infromasi",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "Aplikasi resmi top up voucher games aman, murah dan instant di Indonesia. Nikmatin berbagai payment terlengkap dan proses cepat. Top up diamond Mobile Legends, UC PUBGM dan game populer lainnya",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: double.infinity,
              height: 2,
              decoration: const BoxDecoration(
                color: Color.fromARGB(235, 202, 202, 202),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Text(
            "All Reserved By Teknologi Infromasi  © Copyright 2023",
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
