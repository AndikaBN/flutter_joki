import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pembayaran extends StatefulWidget {
  const Pembayaran({
    Key? key,
  }) : super(key: key);

  @override
  State<Pembayaran> createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  int selectContainer = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: const Color(0xff1B4BF5),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '3.  Pilih Pembayaran',
                  style: GoogleFonts.inter(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              width: double.infinity,
              height: 2,
              decoration: BoxDecoration(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kode Promo',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Container(
                height: 44.0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      12,
                    ),
                  ),
                ),
                child: Center(
                  child: TextField(
                    style: GoogleFonts.raleway(
                      color: Colors.grey[800],
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      hintText: "Masukkan Kode Promo",
                      border: InputBorder.none,
                      hintStyle: GoogleFonts.inter(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: InkWell(
              onTap: () {
                setState(() {
                  selectContainer = 0;
                }); 
              },
              child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color:
                      selectContainer == 0 ? Colors.greenAccent : Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/bri.png', width: 136, height: 40),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Harga',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 19,
                              color: selectContainer == 0
                                  ? Colors.white
                                  : const Color.fromARGB(255, 121, 107, 107),
                            ),
                          ),
                          Text(
                            'Rp 2.751',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                color: selectContainer == 0
                                    ? Colors.white
                                    : const Color.fromARGB(255, 121, 107, 107),
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
