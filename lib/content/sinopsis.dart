import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sinopsis extends StatelessWidget {
  const Sinopsis({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: const Color(0xff1B4BF5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12.0),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(12.0),
                                  ),
                                  child: Image.asset(
                                    'assets/iconpubg.png',
                                    width: 86.0,
                                    height: 86.0,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20.0),
                              Text('PUBG MOBILE',
                                  style: GoogleFonts.raleway(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                height: 36,
                                width: 3,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Text(
                              'UC PUBGM KHUSUS UNTUK \n REGIONAL INDONESIA',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            onTap: () {},
                            child: const Text(
                              'UC PUBGM REGIONAL GLOBAL KLIK DISINI',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(
                            'PUBG Mobile adalah sebuah permainan video battle royale gratis dimainkan yang dikembangkan oleh LightSpeed & Quantum Studio, sebuah divisi dari Tencent Games. Ini merupakan adaptasi permainan piranti genggam dari PlayerUnknown\'s Battlegrounds yang dirilis untuk Android dan IOS pada 19 Maret 2018.',
                            style: GoogleFonts.raleway(
                              height: 1.4,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              fontSize: 19,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Tutorial:',
                                  style: GoogleFonts.raleway(
                                    fontSize: 19,
                                    color: Colors.white,
                                  )),
                              Text(
                                '1. Masukan ID',
                                style: GoogleFonts.raleway(
                                  fontSize: 19,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 1.4,
                              ),
                              Text(
                                '2. Pilih nominal UC',
                                style: GoogleFonts.raleway(
                                  fontSize: 19,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 1.4,
                              ),
                              Text(
                                '3. Pilih metode pembayaran',
                                style: GoogleFonts.raleway(
                                  fontSize: 19,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 1.4,
                              ),
                              Text(
                                '4. Masukan nomor Whatsapp dengan benar!',
                                style: GoogleFonts.raleway(
                                  fontSize: 19,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 1.4,
                              ),
                              Text(
                                '5. Klik beli sekarang dan lakukan pembayaran',
                                style: GoogleFonts.raleway(
                                  fontSize: 19,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 1.4,
                              ),
                              Text(
                                '6. UC akan masuk otomatis ke akun Anda',
                                style: GoogleFonts.raleway(
                                  fontSize: 19,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
  }
}