import 'package:flutter/material.dart';

class AturKursi extends StatelessWidget {
  const AturKursi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          AturKursiWidget(),
        ]),
      ),
    );
  }
}

class AturKursiWidget extends StatelessWidget {
  const AturKursiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 838,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 179,
                child: Container(
                  width: 390,
                  height: 600,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 137,
                        top: 110,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 27,
                        top: 54,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            'A',
                            style: TextStyle(
                              color: const Color(0xFF3D3C3C),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 143,
                        top: 54,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            'C',
                            style: TextStyle(
                              color: const Color(0xFF3D3C3C),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 231,
                        top: 54,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            'D',
                            style: TextStyle(
                              color: const Color(0xFF3D3C3C),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 290,
                        top: 54,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            'E',
                            style: TextStyle(
                              color: const Color(0xFF3D3C3C),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 347,
                        top: 54,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            'F',
                            style: TextStyle(
                              color: const Color(0xFF3D3C3C),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 85,
                        top: 54,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            'B',
                            style: TextStyle(
                              color: const Color(0xFF3D3C3C),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 191,
                        top: 110,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 189,
                        top: 303,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 150,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 91,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 156,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 110,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 240,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 181,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 246,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 200,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 240,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 181,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 246,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 200,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 240,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 181,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 246,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 200,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 240,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 181,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 246,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 200,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 240,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 181,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 246,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 200,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 240,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x33C42D27),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 181,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFC42D27),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 246,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 200,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 190,
                        top: 205,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 780,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 721,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 786,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 740,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 780,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 721,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 786,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 740,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 780,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 721,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 786,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 740,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 780,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 721,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 786,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 740,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 780,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 721,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 786,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 740,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 780,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 721,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 786,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 740,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1182,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1123,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 1188,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 1142,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1182,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1123,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 1188,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 1142,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1182,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1123,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 1188,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 1142,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1182,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1123,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 1188,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 1142,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1182,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1123,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 1188,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 1142,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1182,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1123,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 1188,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 1142,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1404,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1345,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 1410,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 1364,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1404,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1345,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 1410,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 1364,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1404,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1345,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 1410,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 1364,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1404,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1345,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 1410,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 1364,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1404,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1345,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 1410,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 1364,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1404,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1345,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 1410,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 1364,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1050,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 991,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 1056,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 1010,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1050,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 991,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 1056,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 1010,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1050,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 991,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 1056,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 1010,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1050,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 991,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 1056,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 1010,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1050,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 991,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 1056,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 1010,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1050,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 991,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 1056,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 1010,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 960,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 901,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 966,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 920,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 960,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 901,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 966,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 920,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 960,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 901,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 966,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 920,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 960,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 901,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 966,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 920,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 960,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 901,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 966,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 920,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 960,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 901,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 966,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 920,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 186,
                        top: 927,
                        child: SizedBox(
                          width: 20,
                          height: 15,
                          child: Text(
                            '10',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 186,
                        top: 1006,
                        child: SizedBox(
                          width: 20,
                          height: 15,
                          child: Text(
                            '11',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 186,
                        top: 1160,
                        child: SizedBox(
                          width: 20,
                          height: 15,
                          child: Text(
                            '13',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 690,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 631,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 696,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 650,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 690,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 631,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 696,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 650,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 690,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 631,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 696,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 650,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 690,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 631,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 696,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 650,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 690,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 631,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 696,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 650,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 690,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 631,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 696,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 650,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 600,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 541,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 606,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 560,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 600,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 541,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 606,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 560,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 600,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 541,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 606,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 560,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 600,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 541,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 606,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 560,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 600,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 541,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 606,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 560,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 600,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 541,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 606,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 560,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 510,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 451,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 516,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 470,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 510,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 451,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 516,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 470,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 510,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 451,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 516,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 470,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 510,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 451,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 516,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 470,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 510,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 451,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 516,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 470,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 510,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 451,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 516,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 470,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 420,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 361,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 426,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 380,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 420,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 361,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 426,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 380,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 420,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 361,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 426,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 380,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 420,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 361,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 426,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 380,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 420,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 361,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 426,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 380,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 420,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 361,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 426,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 380,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 330,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 271,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 336,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 290,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 330,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 271,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 336,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 290,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 330,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 271,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 336,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 290,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 330,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 271,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 336,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 290,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 330,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 271,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 336,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 290,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 330,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 271,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 336,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 290,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 148,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 89,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 154,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 108,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 149,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x6672CD74),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 90,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFC42D27),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 286,
                        top: 155,
                        child: SizedBox(
                          width: 22,
                          height: 10,
                          child: Text(
                            '50.5',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 109,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 150,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 91,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 156,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 110,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 150,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 91,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 156,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 110,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 150,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x33C42D27),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 91,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFC42D27),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 156,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 110,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 189,
                        top: 385,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '4',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 189,
                        top: 477,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '5',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 189,
                        top: 567,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '6',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 189,
                        top: 655,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '7',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 189,
                        top: 747,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '8',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 870,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 811,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 876,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 830,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 870,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 811,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 876,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 830,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 870,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 811,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 876,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 830,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 870,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 811,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 876,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 830,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 870,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 811,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 876,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 830,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 870,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 811,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 876,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 830,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 189,
                        top: 837,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '9',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 113,
                        top: 1089,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '12',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 186,
                        top: 1089,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '12',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 260,
                        top: 1089,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '12',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 223,
                        top: 1089,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '12',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 149,
                        top: 1089,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '12',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1079,
                        child: Container(
                          width: 35,
                          height: 35,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 39,
                        top: 1088,
                        child: SizedBox(
                          width: 32,
                          height: 18,
                          child: Text(
                            'Exit',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 321,
                        top: 1088,
                        child: SizedBox(
                          width: 32,
                          height: 18,
                          child: Text(
                            'Exit',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 346,
                        top: 1079,
                        child: Container(
                          width: 35,
                          height: 35,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 113,
                        top: 1221,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '14',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 186,
                        top: 1221,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '14',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 260,
                        top: 1221,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '14',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 223,
                        top: 1221,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '14',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 149,
                        top: 1221,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '14',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1211,
                        child: Container(
                          width: 35,
                          height: 35,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 39,
                        top: 1220,
                        child: SizedBox(
                          width: 32,
                          height: 18,
                          child: Text(
                            'Exit',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 321,
                        top: 1220,
                        child: SizedBox(
                          width: 32,
                          height: 18,
                          child: Text(
                            'Exit',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 346,
                        top: 1211,
                        child: Container(
                          width: 35,
                          height: 35,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1314,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1255,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 1320,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 1274,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1314,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1255,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 1320,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 1274,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1314,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1255,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 1320,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 1274,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1314,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1255,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 1320,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 1274,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1314,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1255,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 1320,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 1274,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1314,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x33C42D27),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1255,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFC42D27),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 1320,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 1274,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 187,
                        top: 1279,
                        child: SizedBox(
                          width: 21,
                          height: 15,
                          child: Text(
                            '15',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1762,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1703,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 1768,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 1722,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1762,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1703,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 1768,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 1722,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1762,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1703,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 1768,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 1722,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1762,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1703,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 1768,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 1722,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1762,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1703,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 1768,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 1722,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1762,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x33C42D27),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1703,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFC42D27),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 1768,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 1722,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 187,
                        top: 1727,
                        child: SizedBox(
                          width: 21,
                          height: 15,
                          child: Text(
                            '20',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1672,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1613,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 1678,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 1632,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1672,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1613,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 1678,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 1632,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1672,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1613,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 1678,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 1632,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1672,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1613,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 1678,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 1632,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1672,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1613,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 1678,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 1632,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1672,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x33C42D27),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1613,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFC42D27),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 1678,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 1632,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 187,
                        top: 1637,
                        child: SizedBox(
                          width: 21,
                          height: 15,
                          child: Text(
                            '19',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 187,
                        top: 1371,
                        child: SizedBox(
                          width: 21,
                          height: 15,
                          child: Text(
                            '16',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1582,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1523,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 1588,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 1542,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1582,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1523,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 1588,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 1542,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1582,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1523,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 1588,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 1542,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1582,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1523,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 1588,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 1542,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1582,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1523,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 1588,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 1542,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1582,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x33C42D27),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1523,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFC42D27),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 1588,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 1542,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 187,
                        top: 1547,
                        child: SizedBox(
                          width: 21,
                          height: 15,
                          child: Text(
                            '18',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1494,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1435,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 1500,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 1454,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1494,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1435,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 1500,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 1454,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1494,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1435,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 1500,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 1454,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1494,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1435,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 1500,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 1454,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1494,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1435,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 1500,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 1454,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1494,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x33C42D27),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1435,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFC42D27),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 1500,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 1454,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 188,
                        top: 1459,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '17',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 110,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 27,
                        top: 54,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            'A',
                            style: TextStyle(
                              color: const Color(0xFF3D3C3C),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 143,
                        top: 54,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            'C',
                            style: TextStyle(
                              color: const Color(0xFF3D3C3C),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 231,
                        top: 54,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            'D',
                            style: TextStyle(
                              color: const Color(0xFF3D3C3C),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 290,
                        top: 54,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            'E',
                            style: TextStyle(
                              color: const Color(0xFF3D3C3C),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 347,
                        top: 54,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            'F',
                            style: TextStyle(
                              color: const Color(0xFF3D3C3C),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 85,
                        top: 54,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            'B',
                            style: TextStyle(
                              color: const Color(0xFF3D3C3C),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 191,
                        top: 110,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 189,
                        top: 303,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 150,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 91,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 156,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 110,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 240,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 181,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 246,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 200,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 240,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 181,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 246,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 200,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 240,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 181,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 246,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 200,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 240,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 181,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 246,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 200,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 240,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 181,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 246,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 200,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 240,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x33C42D27),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 181,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFC42D27),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 246,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 200,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 190,
                        top: 205,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 780,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 721,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 786,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 740,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 780,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 721,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 786,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 740,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 780,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 721,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 786,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 740,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 780,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 721,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 786,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 740,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 780,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 721,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 786,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 740,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 780,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 721,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 786,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 740,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1182,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1123,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 1188,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 1142,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1182,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1123,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 1188,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 1142,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1182,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1123,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 1188,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 1142,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1182,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1123,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 1188,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 1142,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1182,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1123,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 1188,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 1142,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1182,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1123,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 1188,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 1142,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1404,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1345,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 1410,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 1364,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1404,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1345,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 1410,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 1364,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1404,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1345,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 1410,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 1364,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1404,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1345,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 1410,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 1364,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1404,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1345,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 1410,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 1364,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1404,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1345,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 1410,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 1364,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1050,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 991,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 1056,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 1010,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1050,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 991,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 1056,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 1010,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1050,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 991,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 1056,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 1010,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1050,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 991,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 1056,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 1010,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1050,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 991,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 1056,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 1010,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1050,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 991,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 1056,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 1010,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 960,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 901,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 966,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 920,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 960,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 901,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 966,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 920,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 960,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 901,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 966,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 920,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 960,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 901,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 966,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 920,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 960,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 901,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 966,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 920,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 960,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 901,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 966,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 920,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 186,
                        top: 927,
                        child: SizedBox(
                          width: 20,
                          height: 15,
                          child: Text(
                            '10',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 186,
                        top: 1006,
                        child: SizedBox(
                          width: 20,
                          height: 15,
                          child: Text(
                            '11',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 186,
                        top: 1160,
                        child: SizedBox(
                          width: 20,
                          height: 15,
                          child: Text(
                            '13',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 690,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 631,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 696,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 650,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 690,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 631,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 696,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 650,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 690,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 631,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 696,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 650,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 690,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 631,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 696,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 650,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 690,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 631,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 696,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 650,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 690,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 631,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 696,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 650,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 600,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 541,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 606,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 560,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 600,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 541,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 606,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 560,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 600,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 541,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 606,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 560,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 600,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 541,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 606,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 560,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 600,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 541,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 606,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 560,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 600,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 541,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 606,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 560,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 510,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 451,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 516,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 470,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 510,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 451,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 516,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 470,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 510,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 451,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 516,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 470,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 510,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 451,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 516,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 470,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 510,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 451,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 516,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 470,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 510,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 451,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 516,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 470,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 420,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 361,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 426,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 380,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 420,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 361,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 426,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 380,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 420,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 361,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 426,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 380,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 420,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 361,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 426,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 380,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 420,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 361,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 426,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 380,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 420,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 361,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 426,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 380,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 330,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 271,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 336,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 290,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 330,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 271,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 336,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 290,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 330,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 271,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 336,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 290,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 330,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 271,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 336,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 290,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 330,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 271,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 336,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 290,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 330,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 271,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 336,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 290,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 148,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 89,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 154,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 108,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 149,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x6672CD74),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 90,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFC42D27),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 286,
                        top: 155,
                        child: SizedBox(
                          width: 22,
                          height: 10,
                          child: Text(
                            '50.5',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 109,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 150,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 91,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 156,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 110,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 150,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 91,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 156,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 110,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 150,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x33C42D27),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 91,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFC42D27),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 156,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 110,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 189,
                        top: 385,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '4',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 189,
                        top: 477,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '5',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 189,
                        top: 567,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '6',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 189,
                        top: 655,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '7',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 189,
                        top: 747,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '8',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 870,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 811,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 876,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 830,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 870,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 811,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 876,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 830,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 870,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 811,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 876,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 830,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 870,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 811,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 876,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 830,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 870,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 811,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 876,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 830,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 870,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 811,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 876,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 830,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 189,
                        top: 837,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '9',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 113,
                        top: 1089,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '12',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 186,
                        top: 1089,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '12',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 260,
                        top: 1089,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '12',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 223,
                        top: 1089,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '12',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 149,
                        top: 1089,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '12',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1079,
                        child: Container(
                          width: 35,
                          height: 35,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 39,
                        top: 1088,
                        child: SizedBox(
                          width: 32,
                          height: 18,
                          child: Text(
                            'Exit',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 321,
                        top: 1088,
                        child: SizedBox(
                          width: 32,
                          height: 18,
                          child: Text(
                            'Exit',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 346,
                        top: 1079,
                        child: Container(
                          width: 35,
                          height: 35,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 113,
                        top: 1221,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '14',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 186,
                        top: 1221,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '14',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 260,
                        top: 1221,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '14',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 223,
                        top: 1221,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '14',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 149,
                        top: 1221,
                        child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Text(
                            '14',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1211,
                        child: Container(
                          width: 35,
                          height: 35,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 39,
                        top: 1220,
                        child: SizedBox(
                          width: 32,
                          height: 18,
                          child: Text(
                            'Exit',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 321,
                        top: 1220,
                        child: SizedBox(
                          width: 32,
                          height: 18,
                          child: Text(
                            'Exit',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 346,
                        top: 1211,
                        child: Container(
                          width: 35,
                          height: 35,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1314,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1255,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 1320,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 1274,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1314,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1255,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 1320,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 1274,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1314,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1255,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 1320,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 1274,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1314,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1255,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 1320,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 1274,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1314,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1255,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 1320,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 1274,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1314,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x33C42D27),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1255,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFC42D27),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 1320,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 1274,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 187,
                        top: 1279,
                        child: SizedBox(
                          width: 21,
                          height: 15,
                          child: Text(
                            '15',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1762,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1703,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 1768,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 1722,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1762,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1703,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 1768,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 1722,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1762,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1703,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 1768,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 1722,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1762,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1703,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 1768,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 1722,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1762,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1703,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 1768,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 1722,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1762,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x33C42D27),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1703,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFC42D27),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 1768,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 1722,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 187,
                        top: 1727,
                        child: SizedBox(
                          width: 21,
                          height: 15,
                          child: Text(
                            '20',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1672,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1613,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 1678,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 1632,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1672,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1613,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 1678,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 1632,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1672,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1613,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 1678,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 1632,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1672,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1613,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 1678,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 1632,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1672,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1613,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 1678,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 1632,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1672,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x33C42D27),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1613,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFC42D27),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 1678,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 1632,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 187,
                        top: 1637,
                        child: SizedBox(
                          width: 21,
                          height: 15,
                          child: Text(
                            '19',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 187,
                        top: 1371,
                        child: SizedBox(
                          width: 21,
                          height: 15,
                          child: Text(
                            '16',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1582,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1523,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 1588,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 1542,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1582,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1523,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 1588,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 1542,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1582,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1523,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 1588,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 1542,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1582,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1523,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 1588,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 1542,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1582,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1523,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 1588,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 1542,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1582,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x33C42D27),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1523,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFC42D27),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 1588,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 1542,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 187,
                        top: 1547,
                        child: SizedBox(
                          width: 21,
                          height: 15,
                          child: Text(
                            '18',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1494,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 1435,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 1500,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 1454,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1494,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        top: 1435,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 78,
                        top: 1500,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 79,
                        top: 1454,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1494,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 123,
                        top: 1435,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 136,
                        top: 1500,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 1454,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1494,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 1435,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224,
                        top: 1500,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 1454,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1494,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x7FD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 269,
                        top: 1435,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC42D27),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 282,
                        top: 1500,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 283,
                        top: 1454,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1494,
                        child: Container(
                          width: 54,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: const Color(0x33C42D27),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 327,
                        top: 1435,
                        child: Container(
                          width: 54,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFC42D27),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 340,
                        top: 1500,
                        child: SizedBox(
                          width: 29,
                          height: 10,
                          child: Text(
                            '205.0',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 341,
                        top: 1454,
                        child: Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(),
                        ),
                      ),
                      Positioned(
                        left: 188,
                        top: 1459,
                        child: SizedBox(
                          width: 14,
                          height: 15,
                          child: Text(
                            '17',
                            style: TextStyle(
                              color: const Color(0xFFC42D27),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: -9,
                        child: Container(
                          transform: Matrix4.identity()
                            ..translate(0.0, 0.0)
                            ..rotateZ(1.57),
                          width: 18,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Colors.black.withValues(alpha: 0.50),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 390,
                  height: 67,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              Positioned(
                left: -112,
                top: -59,
                child: Container(
                  width: 242,
                  height: 155,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFE6E5),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 310,
                top: -7,
                child: Container(
                  width: 102,
                  height: 81,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF9E7BF),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 338,
                top: 27,
                child: Container(
                  width: 26.07,
                  height: 26,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(),
                ),
              ),
              Positioned(
                left: 8,
                top: 155,
                child: Container(
                  width: 104,
                  height: 5,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFC42D27),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 113,
                child: Container(
                  width: 390,
                  height: 46,
                  decoration: BoxDecoration(color: const Color(0xFFFFE6E5)),
                ),
              ),
              Positioned(
                left: 23,
                top: 129,
                child: SizedBox(
                  width: 30.34,
                  height: 15,
                  child: Text(
                    'PKU',
                    style: TextStyle(
                      color: const Color(0xFF3D3C3C),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 70.95,
                top: 129,
                child: SizedBox(
                  width: 80.24,
                  height: 15,
                  child: Text(
                    'CGK',
                    style: TextStyle(
                      color: const Color(0xFF3D3C3C),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 49.04,
                top: 127,
                child: Container(
                  width: 18.36,
                  height: 20,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(),
                ),
              ),
              Positioned(
                left: 112,
                top: 128,
                child: Container(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(1.57),
                  width: 18,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Colors.black.withValues(alpha: 0.50),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 8,
                top: 128,
                child: Container(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(1.57),
                  width: 18,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Colors.black.withValues(alpha: 0.50),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 7,
                top: 155,
                child: Container(
                  width: 105,
                  height: 5,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFC42D27),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -12,
                top: 159,
                child: Container(
                  width: 402,
                  height: 60,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFFA1A1A1),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 9,
                top: 171,
                child: Container(
                  width: 7,
                  height: 36,
                  decoration: BoxDecoration(color: const Color(0x26C42D27)),
                ),
              ),
              Positioned(
                left: 235,
                top: 170,
                child: Container(
                  width: 7,
                  height: 36,
                  decoration: BoxDecoration(color: const Color(0x26C42D27)),
                ),
              ),
              Positioned(
                left: 116,
                top: 192,
                child: SizedBox(
                  width: 89,
                  height: 15,
                  child: Text(
                    '7E | Rp. 50.470',
                    style: TextStyle(
                      color: const Color(0xFF3D3C3C),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 19,
                top: 169,
                child: SizedBox(
                  width: 188,
                  height: 15,
                  child: Text(
                    'MR. FAJRI AGUSTRYANSYAH',
                    style: TextStyle(
                      color: const Color(0xFF3D3C3C),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 216,
                top: 170,
                child: SizedBox(
                  width: 9,
                  height: 11,
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 8,
                top: 212,
                child: Container(
                  width: 234,
                  height: 5,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFC42D27),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 67,
                child: Container(
                  width: 390,
                  height: 46,
                  decoration: BoxDecoration(color: const Color(0xFFC42D27)),
                ),
              ),
              Positioned(
                left: 23,
                top: 72,
                child: Container(
                  width: 345,
                  height: 35,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 143.45,
                top: 82,
                child: SizedBox(
                  width: 30.34,
                  height: 15,
                  child: Text(
                    'PKU',
                    style: TextStyle(
                      color: const Color(0xFF3D3C3C),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 191.40,
                top: 82,
                child: SizedBox(
                  width: 80.24,
                  height: 15,
                  child: Text(
                    'CGK  (Pergi)',
                    style: TextStyle(
                      color: const Color(0xFF3D3C3C),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 169.48,
                top: 80,
                child: Container(
                  width: 18.36,
                  height: 20,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(),
                ),
              ),
              Positioned(
                left: 13,
                top: 0,
                child: Container(
                  width: 364,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 33, vertical: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 10,
                    children: [
                      Container(
                        width: 356,
                        height: 19,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 1.12,
                              child: Text(
                                '9:30',
                                style: TextStyle(
                                  color: const Color(0xFF0F0F0F),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 327,
                top: 754,
                child: Container(
                  width: 38,
                  height: 31,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFC42D27),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 6,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: const Color(0x7FC42D27),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 747,
                child: Container(
                  width: 127,
                  height: 38,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFC42D27),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 6,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: const Color(0x7FC42D27),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 6,
                top: 779,
                child: Container(
                  width: 390,
                  height: 63,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFFA1A1A1),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 265,
                top: 791,
                child: Container(
                  width: 99,
                  height: 35,
                  padding: const EdgeInsets.all(12),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFC42D27),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFFC42D27),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 8,
                    children: [
                      Text(
                        'OK',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 803,
                child: SizedBox(
                  width: 178,
                  height: 18,
                  child: Text(
                    'Harga Total : Rp. 50.470',
                    style: TextStyle(
                      color: const Color(0xFFC42D27),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 1,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 334,
                top: 756,
                child: Container(
                  width: 23,
                  height: 23,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(),
                ),
              ),
              Positioned(
                left: 26,
                top: 749,
                child: Container(
                  width: 30,
                  height: 30,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(),
                ),
              ),
              Positioned(
                left: 52,
                top: 756,
                child: SizedBox(
                  width: 97,
                  height: 15,
                  child: Text(
                    'Panduan status',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

String _formatPrice(double price) {
  if (price == 0) return '0';
  String s = price.toStringAsFixed(0);
  String result = '';
  int count = 0;
  for (int i = s.length - 1; i >= 0; i--) {
    if (count > 0 && count % 3 == 0) result = '.$result';
    result = s[i] + result;
    count++;
  }
  return result;
}
