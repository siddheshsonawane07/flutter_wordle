import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const/color_constants.dart';
import '../../../const/text_constants.dart';

gamehelp() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            child: Text(
              TextConstants.howToPlayTitle,
              style:
                  GoogleFonts.mulish(fontSize: 32, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(TextConstants.howToPlayText,
              style: GoogleFonts.mulish(
                  fontSize: 15, fontWeight: FontWeight.w600)),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: ColorConstants.primaryGreyLight,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    "A",
                    style: GoogleFonts.mulish(
                        fontSize: 26, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(TextConstants.howToPlayRole1,
                  style: GoogleFonts.mulish(
                      fontSize: 15, fontWeight: FontWeight.w600)),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: ColorConstants.primaryOrange,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    "A",
                    style: GoogleFonts.mulish(
                        fontSize: 26, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Flexible(
                child: Text(
                  TextConstants.howToPlayRole2,
                  style: GoogleFonts.mulish(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: ColorConstants.primaryGreen,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    "A",
                    style: GoogleFonts.mulish(
                        fontSize: 26, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                child: Text(
                  TextConstants.howToPlayRole3,
                  style: GoogleFonts.mulish(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }