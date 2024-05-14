import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SootyMold extends StatelessWidget {
  const SootyMold({super.key});

  @override
  Widget build(BuildContext context) {
    Text diseaseTitle(String text) {
      return Text(
        text,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      );
    }

    Text detailsSubTitle(String text) {
      return Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      );
    }

    Text details(String text) {
      return Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            FaIcon(FontAwesomeIcons.seedling),
            SizedBox(width: 5),
            Text(
              "Coffection",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.white, // Set the background color to white
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                diseaseTitle('SOOTY MOLD'),
                detailsSubTitle('Control'),
                details('• Dusting or spraying for sucking insects.\n'
                    '• Clearing sticky sap/honeydew coatings.\n'
                    '• Avoiding plant wounds.'),
                detailsSubTitle('Cultural Treatment'),
                details('Eco-Oil and Eco-Neem Control for Plants\n'
                    '• Controls broad range of sap-sucking insects.\n'
                    '• Sprays multiple times for effective pest control.\n'
                    '• Ensures complete plant coverage.\n'
                    '• Uses flake hosing for faster removal of flaky bits.'),
                detailsSubTitle('Physical/Mechanical Treatment'),
                details('• Control pests like aphids, scales.\n'
                    '• Wash aphids with hose spray.\n'
                    '• Wash off honeydew and sooty mould.\n'
                    '• Sooty mould will dry up and flake off leaves.'),
                detailsSubTitle('Biological Treatment'),
                details(
                    '• Surface contaminants that grow on honeydew excreted by sap-sucking insects.\n'
                    '• Use high sugars and nutrients from honeydew for growth.\n'
                    '• Prevalence in poor air circulation and high humidity.\n'
                    '• Growth can also occur on sugary, sticky exudates from plant leaves, with Cistus species more likely.'),
                detailsSubTitle('Chemical Treatment'),
                details('Shell White/Orchard Oil\n'
                    '• 4 litres per 200 litres of water.')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
