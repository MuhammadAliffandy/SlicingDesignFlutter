import 'package:flutter/material.dart';

import 'component/Contentitem.dart';
import 'component/HeadTextContent.dart';
import 'component/HeadTextInfo.dart';
import 'component/ListTextInfo.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color warnaButton = Color(0xFFFE1A59);
    Color borderButton = Color.fromARGB(20, 254, 26, 91);
    Color warnaHijau = Color(0xFF36D362);
    Color warnaNila = Color(0xFF08CCCC);
    Color warnaBiru = Color(0xFF3757FF);
    Color warnaSoftBlack = Color.fromARGB(64, 0, 0, 0);
    Color warnaAbuAbu = Color(0xFFF4F5F6);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderScreen(
        warnaBiru: warnaBiru,
        borderButton: borderButton,
        warnaButton: warnaButton,
        warnaHijau: warnaHijau,
        warnaNila: warnaNila,
        warnaSoftBlack: warnaSoftBlack,
        warnaAbuAbu: warnaAbuAbu,
      ),
    );
  }
}

class OrderScreen extends StatefulWidget {
  OrderScreen({
    super.key,
    required this.warnaBiru,
    required this.borderButton,
    required this.warnaButton,
    required this.warnaHijau,
    required this.warnaNila,
    required this.warnaSoftBlack,
    required this.warnaAbuAbu,
  });

  final Color warnaBiru;
  final Color borderButton;
  final Color warnaButton;
  final Color warnaHijau;
  final Color warnaNila;
  final Color warnaSoftBlack;
  final Color warnaAbuAbu;

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  bool showOrder = true;
  bool showInfo = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF4F5F6),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(widget.warnaBiru),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                ),
                side: MaterialStateProperty.all(
                  BorderSide(color: widget.borderButton, width: 5),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Text(
                'Pilih Metode Pembayaran',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            )),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 235,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          image: AssetImage(
                            'images/bg.png',
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      leading: IconButton(
                        icon: Icon(
                          Icons.chevron_left,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      actions: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.info_outline,
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      GradientText('Ringkasan Order',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                          colors: [
                            Color(0xFF7100CA),
                            Color(0xFFFF2323),
                          ]),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 300,
                        child: Text(
                          'Lakukan pembayaran sebelum batas waktu berakhir agar tidak kehilangan Peluang.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(widget.warnaButton),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10)),
                      maximumSize: MaterialStateProperty.all(Size(302, 80)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                      ),
                      side: MaterialStateProperty.all(
                        BorderSide(color: widget.borderButton, width: 5),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 40,
                        child: Center(
                          child: Text(
                            'Gagal',
                            style: TextStyle(
                                fontSize: 14,
                                color: widget.warnaButton,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                      ),
                      Text('BATAS BAYAR'),
                      Icon(Icons.arrow_circle_right_outlined,
                          color: Colors.white)
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  // CONTAINER ORDER WITH TIME
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(16),
                                    topLeft: Radius.circular(16),
                                    bottomLeft: Radius.circular(6),
                                    bottomRight: Radius.circular(6))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 10),
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: widget.warnaHijau,
                                  child: Icon(
                                    Icons.flag,
                                    color: Colors.white,
                                  ),
                                ),
                                title: Text(
                                  'Order ID',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                trailing: Text(
                                  '#8926358923',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(6),
                                    topLeft: Radius.circular(6),
                                    bottomLeft: Radius.circular(16),
                                    bottomRight: Radius.circular(16))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 10),
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: widget.warnaNila,
                                  child: Icon(
                                    Icons.timer,
                                    color: Colors.white,
                                  ),
                                ),
                                title: Text(
                                  'Tanggal Order',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                trailing: Text(
                                  '24 Agustus 2023',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // CONTAINER DETAIL ORDER

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 36),
                    child: Container(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(16),
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              )),
                          child: HeadTextContent(
                            title: '4 Item Order',
                            leadingIcon: Icons.timelapse_rounded,
                            trailingIcon: showOrder
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            warnaSoftBlack: widget.warnaSoftBlack,
                            functionButton: () {
                              setState(() {
                                showOrder
                                    ? showOrder = false
                                    : showOrder = true;
                              });
                            },
                          ),
                        ),

                        // CONTENT UI CHILD
                        Visibility(
                          visible: showOrder,
                          child: Column(
                            children: [
                              ContentItem(
                                warnaBiru: widget.warnaBiru,
                                warnaHijau: widget.warnaHijau,
                                // content
                                title: 'Paket PREMIUM SatuJuta\nMembership',
                                subTitle:
                                    'Berlisensi\nPT Satu Juta Kampung Inggris ',
                                indicatorContent: 'Rp. 1.000.000',
                                customRadius: BorderRadius.circular(6),
                              ),
                              ContentItem(
                                warnaBiru: widget.warnaBiru,
                                warnaHijau: widget.warnaHijau,
                                // content
                                title: 'Hotel Borobudur',
                                subTitle: 'Pilhan Hotel Anda',
                                indicatorContent: 'FREE',
                                customRadius: BorderRadius.circular(6),
                              ),
                              ContentItem(
                                warnaBiru: widget.warnaBiru,
                                warnaHijau: widget.warnaHijau,
                                // content
                                title: 'Emas Murni 24 Karat',
                                subTitle: 'Pilhan Hotel Anda',
                                indicatorContent: 'FREE',
                                customRadius: BorderRadius.circular(6),
                              ),
                              ContentItem(
                                warnaBiru: widget.warnaBiru,
                                warnaHijau: widget.warnaHijau,
                                // content
                                title: 'KIT Modul',
                                subTitle: 'Pilihan Hotel Anda',
                                indicatorContent: 'FREE',
                                customRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(6),
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                  ),

                  // CONTAINER INFORMATION USER

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          HeadTextContent(
                            title: 'Info Pengiriman',
                            leadingIcon: Icons.directions_car_sharp,
                            trailingIcon: showInfo
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            warnaSoftBlack: widget.warnaSoftBlack,
                            functionButton: () {
                              setState(() {
                                showInfo ? showInfo = false : showInfo = true;
                              });
                            },
                          ),
                          Visibility(
                            visible: showInfo,
                            child: Column(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: widget.warnaAbuAbu,
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Column(
                                            children: [
                                              HeadTextInfo(
                                                user: 'Anton Prabawanto',
                                                status: 'PENERIMA',
                                              ),
                                              ListTextInfo(
                                                leadingIcon:
                                                    Icons.phone_outlined,
                                                text: '+62456897657',
                                                trailingIcon: Icons.edit_square,
                                                warnaBiru: widget.warnaBiru,
                                              ),
                                              ListTextInfo(
                                                leadingIcon:
                                                    Icons.location_on_outlined,
                                                text:
                                                    'Jln Ambarawa No 1 Semarang - Jawa Timur',
                                                warnaBiru: widget.warnaBiru,
                                              ),
                                              ListTextInfo(
                                                leadingIcon:
                                                    Icons.markunread_outlined,
                                                text: '67364',
                                                warnaBiru: widget.warnaBiru,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: widget.warnaAbuAbu,
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Column(
                                            children: [
                                              HeadTextInfo(
                                                user: 'JNE REGULER',
                                                status: 'KURIR',
                                              ),
                                              ListTextInfo(
                                                leadingIcon:
                                                    Icons.timelapse_outlined,
                                                text: '2-3 Hari',
                                                trailingIcon: Icons.edit_square,
                                                warnaBiru: widget.warnaBiru,
                                              ),
                                              ListTextInfo(
                                                leadingIcon:
                                                    Icons.calendar_month,
                                                text: 'Pengiriman Tanggal : -',
                                                warnaBiru: widget.warnaBiru,
                                              ),
                                              ListTextInfo(
                                                leadingIcon:
                                                    Icons.text_snippet_outlined,
                                                text:
                                                    'No Resi: - \nPaket akan dikirimkan setelah pembayaran',
                                                trailingIcon: Icons.copy,
                                                warnaBiru: widget.warnaBiru,
                                              ),
                                              ListTextInfo(
                                                leadingIcon:
                                                    Icons.attach_money_outlined,
                                                text: 'Biaya Ongkir: -',
                                                warnaBiru: widget.warnaBiru,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  // CONTAINER TRANSAKSI USER

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 36, horizontal: 24),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(16),
                                    topLeft: Radius.circular(16),
                                    bottomLeft: Radius.circular(6),
                                    bottomRight: Radius.circular(6))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 10),
                              child: ListTile(
                                leading: Icon(
                                  Icons.receipt_long_outlined,
                                  color: Colors.black,
                                ),
                                title: Text(
                                  'ID TRANSAKSI',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                trailing: Text(
                                  '#8926358923',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 10),
                                child: ListTile(
                                  title: Text(
                                    'Biaya',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  trailing: Text(
                                    'Rp.1.000.000',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 10),
                                child: ListTile(
                                  title: Text(
                                    'Biaya Admin',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  trailing: Text(
                                    'Rp.5.000',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(6),
                                      topLeft: Radius.circular(6),
                                      bottomLeft: Radius.circular(16),
                                      bottomRight: Radius.circular(16))),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 10),
                                child: ListTile(
                                  title: Text(
                                    'Total Bayar',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  trailing: Text(
                                    'Rp.1.500.000',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // ===================
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
