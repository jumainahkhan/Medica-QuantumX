import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

Column buildVisitDetail() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Visit Detail",
            style: GoogleFonts.lato(
              fontSize: 18,
              color: HexColor('#6d69f0'),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        width: double.infinity,
        decoration: BoxDecoration(border: Border.all(color: Colors.black38)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter the date of your visit',
                      hintStyle: GoogleFonts.lato(
                          fontSize: 18, fontWeight: FontWeight.w500),
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.calendar_month,
                        color: HexColor('#6d69f0'),
                      ),
                    ),
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black38,
                height: 2,
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: TextField(
                          decoration: InputDecoration(
                    hintText: 'Name of the doctor',
                    hintStyle: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.w500),
                    border: InputBorder.none,
                    icon: Icon(Icons.person, color: HexColor('#6d69f0')),
                  )))
                ],
              ),
              const Divider(
                color: Colors.black38,
                height: 2,
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: TextField(
                          decoration: InputDecoration(
                    hintText: 'Name of the clinic',
                    hintStyle: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.w500),
                    border: InputBorder.none,
                    icon: Icon(Icons.local_hospital_outlined,
                        color: HexColor('#6d69f0')),
                  )))
                ],
              ),
              const Divider(
                color: Colors.black38,
                height: 2,
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: TextField(
                          decoration: InputDecoration(
                    hintText: 'Reason of Visit',
                    hintStyle: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.w500),
                    border: InputBorder.none,
                    icon:
                        Icon(Icons.question_answer, color: HexColor('#6d69f0')),
                  )))
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
