import 'package:flutter_convert/content/footer.dart';
import 'package:flutter_convert/content/header.dart';
import 'package:flutter_convert/content/pilihan.dart';
import 'package:flutter_convert/content/sinopsis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_convert/content/succes_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'description.dart';
import 'notification_page.dart';

class TopupScreen extends StatefulWidget {
  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  const TopupScreen({super.key, Key});

  @override
  State<TopupScreen> createState() => _TopupScreenState();
}

class _TopupScreenState extends State<TopupScreen> {
  int selectContainer = -1;
  bool _isLoading = false;

  final TextEditingController _textEditingController = TextEditingController();
  final TextEditingController _id = TextEditingController();
  final TextEditingController _promo = TextEditingController();

  Future<void> _showConfirmationDialog() async {
    String nomorwa = _textEditingController.text;
    String id = _id.text;
    String promo = _promo.text;

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Detail TopUp',
            style:
                GoogleFonts.raleway(fontSize: 17, fontWeight: FontWeight.w600),
          ),
          content: Text(
            'Mohon konfirmasi Username anda sudah benar.\n\n'
            'ID:                               $id\n'
            'Kode Promo:              $promo\n'
            'Bayar dengan:           BRI\n'
            'Nomor Whatsapp:     $nomorwa.',
            style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Batal',
                style: TextStyle(color: Colors.blueGrey),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff1B4BF5),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                _performTopup();
              },
              child: const Text('Konfirmasi'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _performTopup() async {
    setState(() {
      _isLoading = true;
    });

    // Simulasi penundaan tindakan topup
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _isLoading = false;
    });

    // ignore: use_build_context_synchronously
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SuccesPage()),
    );
  }

  void _navigateToNotificationPage() {
    // Call this method to navigate to the NotificationPage and pass the input data
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NotificationPage(
          id: _id.text,
          promo: _promo.text,
          nomorwa: _textEditingController.text,
        ),
      ),
    );
  }

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
            onPressed: () {
              _navigateToNotificationPage();
            },
            icon: const Icon(
              Icons.notifications,
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
                  Container(
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
                                '1.  Informasi Pesanan',
                                style: GoogleFonts.inter(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Container(
                            width: double.infinity,
                            height: 2,
                            decoration:
                                const BoxDecoration(color: Colors.white),
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
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    12,
                                  ),
                                ),
                              ),
                              child: Center(
                                child: TextField(
                                  controller: _id,
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
                  const Pilihan(),
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
                            decoration:
                                const BoxDecoration(color: Colors.white),
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
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    12,
                                  ),
                                ),
                              ),
                              child: Center(
                                child: TextField(
                                  controller: _promo,
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
                                color: selectContainer == 0
                                    ? Colors.greenAccent
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset('assets/bri.png',
                                      width: 136, height: 40),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Harga',
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 19,
                                            color: selectContainer == 0
                                                ? Colors.white
                                                : const Color.fromARGB(
                                                    255, 121, 107, 107),
                                          ),
                                        ),
                                        Text(
                                          'Rp 2.751',
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.bold,
                                            color: selectContainer == 0
                                                ? Colors.white
                                                : const Color.fromARGB(
                                                    255, 121, 107, 107),
                                            fontSize: 20,
                                          ),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                '4.  No Whatsapp',
                                style: GoogleFonts.inter(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Container(
                            width: double.infinity,
                            height: 2,
                            decoration:
                                const BoxDecoration(color: Colors.white),
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
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    12,
                                  ),
                                ),
                              ),
                              child: Center(
                                child: TextField(
                                  controller: _textEditingController,
                                  style: GoogleFonts.inter(
                                    color: Colors.grey[800],
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "08xxxxxxxxxx",
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
                            child: Column(
                              children: [
                                Text(
                                  "Bukti pembelianmu akan kami kirimkan ke Whatsapp. Pastikan nomor handphone yang di input aktif",
                                  style: GoogleFonts.raleway(
                                      fontSize: 19, color: Colors.white),
                                ),
                              ],
                            )),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed:
                                _isLoading ? null : _showConfirmationDialog,
                            child: Text(
                              "Konfirmasi",
                              style: GoogleFonts.raleway(
                                  fontSize: 19,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                  ),
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
