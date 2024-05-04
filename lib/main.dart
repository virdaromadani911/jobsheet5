import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.centerLeft, // Atur posisi ke kiri
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Atur alignment untuk children
            children: [
              TeksUtama(
                teks1: 'ARSYAD MAULLANA',
                teks2: 'NIM : STI202102477 ',
              ),
              TeksUtama(
                teks1: 'REZA YULI SANTOSA',
                teks2: 'NIM : STI202102480',
              ),
              Container( 
                color: Colors.yellow, 
                child: TeksUtama(
                  teks1: 'VIRDA ROMADANI ',
                  teks2: 'NIM : STI202102493 ',
                ),
              ),
              TeksUtama(
                teks1: 'MUHAMMAD RIFKI',
                teks2: 'NIM : STI202102498',
              ),
              TeksUtama(
                teks1: 'SEPTI APRILIA WULANDARI',
                teks2: 'NIM : STI202102504 ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  TeksUtama({required this.teks1, required this.teks2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Atur alignment untuk children
      children: [
        Text(
          teks1,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          teks2,
          textDirection: TextDirection.ltr,
        ),
      ],
    );
  }
}
