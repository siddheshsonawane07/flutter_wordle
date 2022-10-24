import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../const/text_constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

developerinfo(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            child: Text(
              TextConstants.gameTitle,
              style:
                  GoogleFonts.mulish(fontSize: 32, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(TextConstants.wordle2,
                    style: GoogleFonts.mulish(
                        fontSize: 15, fontWeight: FontWeight.w600)),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                TextConstants.info1,
                style: GoogleFonts.mulish(
                    fontSize: 32, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Text(TextConstants.info2)],
          ),
          const Text(TextConstants.info3),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset('svg/linkedin.svg'),
              ),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset('svg/twitter.svg'),
              ),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset('svg/instagram.svg'),
              ),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset('svg/github.svg'),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
