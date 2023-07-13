import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../curency.dart';
import '../json.dart';
import '../service.dart';

class Pilihan extends StatefulWidget {
  const Pilihan({super.key});

  @override
  State<Pilihan> createState() => _PilihanState();
}

class _PilihanState extends State<Pilihan> {
  final ProductService _productService = ProductService();
  late Future<List<Produk>> _produks;

  @override
  void initState() {
    super.initState();
    _fetchProducts();
  }

  Future<void> _fetchProducts() async {
    _produks = _productService.fetchProduct();
  }

  int selek = -1;

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
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: FutureBuilder<List<Produk>>(
              future: _produks,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final List<Produk> products = snapshot.data!;
                  return GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 12,
                    childAspectRatio: 134 / 54,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: products.map((product) {
                      List<Produk> prodak = snapshot.data!;
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selek = prodak.indexOf(product);
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                            color: selek == prodak.indexOf(product)
                                ? Colors.greenAccent
                                : Colors.white,
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 1, top: 20),
                                    child: Text(
                                      product.nama,
                                      style: GoogleFonts.inter(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w900,
                                        color: selek == prodak.indexOf(product)
                                            ? Colors.white
                                            : const Color(0xff1B4BF5),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 25, top: 5),
                                    child: Text(
                                      formatCurrency(product.harga),
                                      style: GoogleFonts.inter(
                                        fontSize: 19,
                                        color: selek == prodak.indexOf(product)
                                            ? Colors.white
                                            : const Color(0xff1B4BF5),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: SizedBox(
                                  width: 45,
                                  height: 45,
                                  child: Image.asset(
                                    "assets/${product.assets}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  );
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
