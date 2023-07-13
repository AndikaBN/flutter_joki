import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccesPage extends StatefulWidget {
  const SuccesPage({Key? key}) : super(key: key);

  @override
  State<SuccesPage> createState() => _SuccesPageState();
}


class _SuccesPageState extends State<SuccesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff1B4BF5),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  "Ceklist.png",
                  width: 130.0,
                  height: 130.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                'Pembayaran Berhasil',
                style: GoogleFonts.raleway(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Selamat! Pembayaranmu sudah selesai',
                style: GoogleFonts.raleway(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  width: double.infinity,
                  height: 1,
                  decoration: const BoxDecoration(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Kembali",
                  style: GoogleFonts.raleway(
                      fontSize: 19,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
