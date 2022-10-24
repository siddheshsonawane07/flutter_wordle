import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../const/text_constants.dart';

developerinfo(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 50),
    child: GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                  child: Dialog(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24.0)),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 36, horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            child: Text(
                              TextConstants.gameTitle,
                              style: GoogleFonts.mulish(
                                  fontSize: 32, fontWeight: FontWeight.w700),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(TextConstants.wordle1,
                              style: GoogleFonts.mulish(
                                  fontSize: 15, fontWeight: FontWeight.w600)),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
        child: const Icon(Icons.info_outline)),
  );
}
