import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helper/themes.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Title(
            color: primaryTextColor,
            child: Container(
              child: Text(
                "Checkout",
                style: GoogleFonts.poppins(
                    fontSize: figmaFontsize(24), fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        body: Container(
            child: Column(children: [
          Card(
            elevation: 2,
            margin: EdgeInsets.all(16),
            child: Container(
              height: 137, // Sesuaikan dengan ketinggian yang diinginkan
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: primaryColor,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Alamat Pengiriman',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text.rich(
                    TextSpan(
                      text: 'Nama Penerima: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'John Doe',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Text.rich(
                    TextSpan(
                      text: 'Alamat: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'Jl. Contoh No. 123',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Text.rich(
                    TextSpan(
                      text: 'Kota: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'Jakarta',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 2,
            margin: EdgeInsets.all(16),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gambar Produk
                  Container(
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Image.asset(
                      promote1, // Ganti dengan path asset gambar
                      width: 80, // Sesuaikan dengan lebar yang diinginkan
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16), // Berikan jarak antara gambar dan teks

                  // Informasi Produk
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Judul Produk
                        Text(
                          'Kalung',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                            height: 8), // Berikan jarak antara judul dan harga

                        // Harga Produk
                        Text(
                          'Rp 100.000', // Ganti dengan data harga produk
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color:
                                primaryColor, // Sesuaikan dengan warna yang diinginkan
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 2,
            margin: EdgeInsets.all(16),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Total Harga: ',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Rp. 100.000',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                  // Total Harga


                  // Baris Total Harga
                  SizedBox(height: 8),
                  Row(
                    children: [
                      // Icon Dompet
                      Icon(
                        Icons.account_balance_wallet,
                        color: primaryColor,
                      ),
                      SizedBox(width: 8),

                      // Payment
                      Text(
                        'Payment:',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      // Choose Method
                      GestureDetector(
                        onTap: () {
                          // Fungsi yang akan dijalankan saat onTap
                          // Misalnya, tampilkan opsi metode pembayaran
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            'Choose Method',
                            style: GoogleFonts.poppins(
                              color: primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

            ),
          ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    minimumSize: Size(
                      screenWidth * 0.933, // Adjust the width as needed
                      screenHeight * 0.070, // Adjust the height as needed
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Checkout',
                    style: headerText,
                  ),
                ),
              ),
        ])));
  }
}
