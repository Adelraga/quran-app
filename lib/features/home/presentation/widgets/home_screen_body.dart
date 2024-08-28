import 'package:flutter/material.dart';
import 'package:quran_app/cors/Themeing/styles.dart';

import '../../../../cors/Helpers/constants.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    // List of Surah names and their respective Ayat counts

    return Stack(
      children: [
        // Background Image
        Image.asset(
          'assets/images/bg3.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // Positions the table at the bottom
            children: [
              SizedBox(
                height: 150,
              ),
              Text("قرأنى", style: Styles.font30Black700Weight),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Table(
                    border: TableBorder.all(color: Colors.red, width: 2),
                    children: [
                      TableRow(children: [
                        buildTableCell('Page Number', isHeader: true),
                        buildTableCell('Surah Name', isHeader: true),
                      ]),
                      ...surahData.map((surah) {
                        return TableRow(
                          children: [
                            buildTableCell(surah['name']),
                            buildTableCell(surah['page'].toString()),
                          ],
                        );
                      }).toList(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildTableCell(String text, {bool isHeader = false}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
            color: isHeader ? Colors.red : Colors.black,
          ),
        ),
      ),
    );
  }
}
