import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sasrecords/constants/app_colors.dart';
import 'package:sasrecords/widgets/custom_button.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({
    super.key,
  });
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 60,
          ),
          child: Container(
            height: height * 0.7,
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.9),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          btnText: 'Purchase',
                          action: () {
                            setState(() {
                              
                            });
                          },
                        ),
                        CustomButton(
                          btnText: 'Store',
                          action: () {
                            setState(() {
                             
                            });
                          },
                        ),
                        CustomButton(
                          btnText: 'Staff',
                          action: () {
                            setState(() {
                             
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          btnText: 'Split Unit',
                          action: () {
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          btnText: 'Shaver Unit',
                          action: () {
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          btnText: 'Buff Unit',
                          action: () {
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          btnText: 'Drum Unit',
                          action: () {
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          btnText: 'Cutting Unit',
                          action: () {
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          btnText: 'Stitching Unit',
                          action: () {
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          btnText: 'QC Unit',
                          action: () {
                            setState(() {});
                          },
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: height * 0.08,
                          width: width * 0.22,
                          decoration: BoxDecoration(
                              color: AppColors.redButton,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            "Local Sale",
                            style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textfieldColor),
                          )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: height * 0.1,
          width: width,
          decoration: BoxDecoration(
            color: AppColors.backGroundColor,
          ),
          child: Center(
            child: Text(
              '2024 © Shakeel and Sons',
              style: GoogleFonts.poppins(color: AppColors.textfieldColor),
            ),
          ),
        )
      ],
    );
  }
}
