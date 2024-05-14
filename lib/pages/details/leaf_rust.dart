import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeafRust extends StatelessWidget {
  const LeafRust({super.key});

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
                diseaseTitle('COFFEE LEAF RUST (CLR)'),
                detailsSubTitle('Control'),
                details(
                    '• Recommended in Cooler Areas: Two copper sprays per year.\n'
                    '• Recommended in Warmer, Humid Areas: Three to four sprays, especially with high humidity and rainfall.\n'
                    '• Preventive Sprays: Copper sulfate and Triademifon.'),
                detailsSubTitle('Cultural Treatment'),
                details('• Maintaining healthy plants and sanitation.\n'
                    '• Removing weeds for nutrient competition and stress relief.\n'
                    '• Pruning for increased air flow and humidity reduction.\n'
                    '• Removing weak, old, or diseased plants.'),
                detailsSubTitle('Physical/Mechanical Treatment'),
                details(
                    'Checking with your local agricultural advisory (extension) agent for recommended practices. Do this before applying any plant protection products.\n'),
                detailsSubTitle('Physical/Mechanical Treatment'),
                details(
                    '"Check local agricultural advisory for recommended practices before applying plant protection products."'),
                detailsSubTitle('Biological Treatment'),
                details(
                    '• Biopesticides and essential oils can reduce coffee rust damage by up to 97%. '
                    '• Essential oils like cinnamon, citronella, lemongrass, cloves, tea tree, thyme, and eucalyptus show promising results in disease management. '
                    '• Mycoparasitic fungi and fungi living inside the coffee plant\'s tissue are crucial for managing coffee leaf rust. '
                    '• Bacterial groups Bacillus and Pseudomonas form beneficial associations with plants, preventing germination and development of rust-causing fungi. '
                    '• Bacterial groups can produce antimicrobial compounds that can attack rust fungi\'s cell walls and induce systemic resistance.'),
                detailsSubTitle('Chemical Treatment'),
                details(
                    'Note: The use of chemical fungicides can come with some issues, such as: '
                    '• High product costs. '
                    '• Repetitive use may lead to rust populations resistant to fungicides. '
                    '• Existing chemical control relies on two chemical groups, increasing efficiency. '
                    '• Residuals can hinder organic coffee market access, especially with systemic fungicides. '
                    '• Active ingredients in fungicides can harm the environment and humans.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
