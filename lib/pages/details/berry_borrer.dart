import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BerryBorrer extends StatelessWidget {
  const BerryBorrer({super.key});

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
                diseaseTitle('COFFEE BERRY BORER (CBB)'),
                detailsSubTitle('Control'),
                details(
                    '• Sanitation: Remove all infected coffee fruit, both on and off the tree.\n'
                    '• CBB Trap: Create a homemade device using used water bottles and a lure filled with ethyl and methyl alcohol.\n'
                    '• Deploy 20-30 traps per hectare.'),
                detailsSubTitle('Cultural Treatment'),
                details(
                    '• During growth: Pick ripe berries as they ripen, increasing every 2-3 weeks in hot spots.\n'
                    '• After harvest: Collect blackened berries, burn them, and remove all berries for 3 months.\n'
                    '• If parasitoids are important, pick ripe berries every 2 weeks, leave fallen berries as a reservoir, and increase shade.\n'
                    '• After harvest: Prune bushes, remove branches too high to reach, cut out dead or dying branches, and keep stems to a maximum of four.\n'
                    '• Remove berries from bushes, pick up fallen berries, boil them, and bury them.'),
                detailsSubTitle(
                    'Physical/Mechanical Treatment: CBB Trap Creation'),
                details('• Use cut-open water bottles.\n'
                    '• Equip lure with 1:1 ethyl alcohol and methyl alcohol.\n'
                    '• Deploy 20-30 traps per hectare.'),
                detailsSubTitle('Biological Treatment'),
                details(
                    '• Use Beauveria bassiana fungus during insect flight periods,\n'
                    '• Dilute with water and spray regularly every two weeks,\n'
                    '• Kill insects and Stem Borer larvae upon contact,\n'
                    '• Non-toxic to humans and environment, but may infect other beneficial insects.'),
                detailsSubTitle('Chemical Treatment'),
                details('• Use chemicals as last resort,\n'
                    '• Follow label directions,\n'
                    '• Alternate application of other fungicide brands.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
