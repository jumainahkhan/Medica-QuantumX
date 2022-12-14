import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medica/Controller/MedLogController.dart';
import 'package:medica/Screens/AddManuallyScreen.dart/components/buildMedDetail.dart';
import 'package:medica/Screens/AddManuallyScreen.dart/components/buildVisitDetail.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Controller/UserDataController.dart';

class AddManuallyScreenBody extends StatefulWidget {
  const AddManuallyScreenBody({super.key});

  @override
  State<AddManuallyScreenBody> createState() => _AddManuallyScreenBodyState();
}

class _AddManuallyScreenBodyState extends State<AddManuallyScreenBody> {
  MedLogController medLogController = Get.put(MedLogController());
  UserDataController userDataController = Get.put(UserDataController());
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        appBar(context),
        Expanded(
          child: SingleChildScrollView(
            child: buildForm(),
          ),
        ),
        GestureDetector(
          onTap: () {
            // Map<String, dynamic> prescription = {
            //   'clinic': 'Saif Clinic',
            //   'dname': 'Dr. Saif',
            //   'djob': 'Dermatologist',
            //   'date': '12/12/2020',
            //   'reasonforvisit': 'Skin Rash ',
            //   'medicines': [
            //     {
            //       'name': 'Medicine1',
            //       'morning': 'yes',
            //       'afternoon': 'no',
            //       'night': 'yes'
            //     }
            //   ],
            // };
            // userDataController.addPrescription(prescription);
            // Navigator.pop(context);
            if (formKey.currentState!.validate()) {
              // If the form is valid, display a snackbar. In the real world,
              // you'd often call a server or save the information in a database.
              userDataController.addPrescription();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Data')),
              );
            }
          },
          child: Container(
              color: HexColor('#6d69f0'),
              height: 55,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.save,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Save",
                    style:
                        GoogleFonts.poppins(fontSize: 17, color: Colors.white),
                  ),
                ],
              )),
        )
      ],
    );
  }

  Padding appBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: HeroIcon(
              HeroIcons.arrowLeft,
              color: HexColor('#6d69f0'),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              CupertinoIcons.ellipsis_vertical,
              color: HexColor('#6d69f0'),
            ),
          ),

          //Container()
        ],
      ),
    );
  }

  buildForm() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Log Prescription",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    color: HexColor('#6d69f0'),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            buildVisitDetail(),
            const SizedBox(
              height: 30,
            ),
            buildMedDetail(),
            //buildMedDetail()
          ],
        ),
      ),
    );
  }
}
