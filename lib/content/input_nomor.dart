import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'succes_page.dart';

class NomorWa extends StatefulWidget {
  const NomorWa({Key? key}) : super(key: key);

  @override
  _NomorWaState createState() => _NomorWaState();
}

class _NomorWaState extends State<NomorWa> {
  bool _isLoading = false;

  TextEditingController _textEditingController = TextEditingController();

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
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
                    style:
                        GoogleFonts.raleway(fontSize: 19, color: Colors.white),
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
              onPressed: _isLoading ? null : _showConfirmationDialog,
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
    );
  }

  Future<void> _showConfirmationDialog() async {
  String username = _textEditingController.text;

  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Detail TopUp'),
        content: Text('Mohon konfirmasi Username anda sudah benar: $username.'),
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
                backgroundColor: const Color(0xff1B4BF5)),
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

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SuccesPage()),
    );
  }
}
