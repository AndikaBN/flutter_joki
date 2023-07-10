// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Text(
          'Tentang PUBG Mobile PUBG Mobile adalah game mobile Battle Royale yang dikembangkan oleh Tencent Games dengan menggunakan Unreal Engine 4. Dengan fokus pada kualitas visual, peta, pengalaman menembak, dan aspek lainnya, game ini memberikan pengalaman Battle Royale yang nyata kepada pemain. Seratus pemain bertarung di medan tempur untuk menjadi tim terakhir yang bertahan. Pemain harus mencari item untuk survival dan memanfaatkan medan peta, kendaraan, dan item lainnya. Terdapat berbagai pilihan peta seperti Erangel, Miramar, Sanhok, Livik, dan banyak lagi. PUBG Mobile tidak hanya menjadi game populer, tetapi juga menjadi pusat yang menghubungkan pemain dari seluruh dunia. Ini adalah Battle Royale asli dan terbaik.',
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(
            color: const Color(0xff1B4BF5),
            fontSize: 19,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
