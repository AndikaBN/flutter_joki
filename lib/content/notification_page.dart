import 'package:flutter/material.dart';
import 'package:flutter_convert/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class NotificationPage extends StatelessWidget {
  final String id;
  final String promo;
  final String nomorwa;

  const NotificationPage({
    Key? key,
    required this.id,
    required this.promo,
    required this.nomorwa,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1B4BF5),
        title: const Text('Notification Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Card(
            elevation: 5,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ID: $id', style: blackTextStyle.copyWith(fontSize: 20)),
                  Text(
                    'Kode Promo: $promo',
                    style: blackTextStyle.copyWith(fontSize: 20),
                  ),
                  Text('Bayar dengan: BRI',
                      style: blackTextStyle.copyWith(fontSize: 20)),
                  Text('Nomor Whatsapp: $nomorwa',
                      style: blackTextStyle.copyWith(fontSize: 20)),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Mohon Screnshoot dan kirim bukti transaksi Anda\nuntuk konfrimasi lebih lanjut melalui link whatsapp di bawah ini',
                    style: blackTextStyle.copyWith(
                        fontSize: 15, fontWeight: regular),
                  ),
                  Container(
                    height: 72,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {
                        _linkWa();
                      },
                      child: const Text("Kirim Bukti"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _linkWa() async {
    String nomorWa = '085932221889';
    String pesan = 'P Kirim Bukti';

    String link = "https://wa.me/$nomorwa?text=${Uri.parse(pesan)}";
    // ignore: deprecated_member_use
    if (await canLaunch(link)) {
      // ignore: deprecated_member_use
      await launch(link);
    } else {
      throw 'Could not launch Whatsapp';
    }
  }
}
