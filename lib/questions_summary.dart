import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.sumarryData, {super.key});

  final List<Map<String, Object>> sumarryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: sumarryData.map((data) {
            return Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: data['user_answer'] == data['correct_answer']
                        ? Color.fromARGB(255, 129, 198, 247)
                        : Color.fromARGB(255, 253, 118, 250),
                  ),
                  child: Text(
                    ((data['index'] as int) + 1).toString(),
                    style: GoogleFonts.lato(),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          data['question'] as String,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          data['user_answer'] as String,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 166, 98, 221),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          data['correct_answer'] as String,
                          style: GoogleFonts.lato(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
