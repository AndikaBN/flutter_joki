import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class topupScren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1B4BF5),
        leading: Image.asset(
          'assets/icons.png',
          width: 25,
        ),
        title: Text('Teknologi Infromasi'),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  child: Image.asset(
                    'assets/pubgmobile.png',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xff1B4BF5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              child: Image.asset(
                                'assets/iconpubg.png',
                                width: 86.0,
                                height: 86.0,
                              ),
                            ),
                          ),
                          SizedBox(width: 20.0),
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
                        Text(
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
                      padding: EdgeInsets.all(15.0),
                      child: InkWell(
                        onTap: () {},
                        child: Text(
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
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        'PUBG Mobile adalah sebuah permainan video battle royale gratis dimainkan yang dikembangkan oleh LightSpeed & Quantum Studio, sebuah divisi dari Tencent Games. Ini merupakan adaptasi permainan piranti genggam dari PlayerUnknown\'s Battlegrounds yang dirilis untuk Android dan IOS pada 19 Maret 2018.',
                        style: GoogleFonts.raleway(
                          height: 1.4,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 19,
                        ),
                      ),
                    ), //////////
                    Padding(
                      padding: EdgeInsets.all(15.0),
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
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: const Color(0xff1B4BF5),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              '1.  Informasi Pesanan',
                              style: GoogleFonts.inter(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
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
                                hintText: "Masukan User ID",
                                border: InputBorder.none,
                                hintStyle: TextStyle(
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
                      child: Text(
                        "Untuk menemukan ID Karakter Anda, masukan ke akun Anda di aplikasi. Klik avatar yang terletak di pojok kiri atas layar utama. Anda dapat menemukan ID Karakter Anda tepat  di bawah profil Anda",
                        style: GoogleFonts.raleway(
                            fontSize: 19, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: const Color(0xff1B4BF5),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              '2.  Pilihan Item',
                              style: GoogleFonts.inter(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        width: double.infinity,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 12,
                        childAspectRatio: 134 / 54,
                        shrinkWrap: true,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 3, top: 20),
                                      child: Text(
                                        '25 UC',
                                        style: GoogleFonts.inter(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w900,
                                          color: const Color(0xff1B4BF5),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, top: 5),
                                      child: Text(
                                        'Rp.4.700',
                                        style: GoogleFonts.inter(
                                          fontSize: 19,
                                          color: const Color(0xff1B4BF5),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Image.asset(
                                  "assets/uc.png",
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
