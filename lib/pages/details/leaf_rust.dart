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
                details(
                    'Coffee Leaf Rust or Hemileia vastratix (also called bu its spanish name, “Roya”) has severely damaged many coffee growing areas worldwide.\n'),
                detailsSubTitle('Symptoms'),
                details(
                    'The symptoms of coffee rust include small, yellowish, oily spots on the upper leaf surface that expand into larger round spots that turn bright orange to red and finally brown with a yellow border. The rust pustules are powdery and orange-yellow on the underleaf surface. Later the pustules turn black.\n'),
                detailsSubTitle('Some Causes'),
                details(
                    'Rust is a fungal disease, causing premature leaf fall. It is thought that coffee rust is affected by temperature. Higher elevation (cooler), show less infestation that lower attitude (warmer). \n'),
                detailsSubTitle('Some Control'),
                details(
                    'In higher attitudes where the temperature is cooler, two (2) copper sprays are recommended per year. \n\nIn the lower areas where the temperature is warmer but with high humidity and plenty of rainfall, three to four (3-4) sprays, depending on the weather\n\nPreventive sprays need to be applied before any symptoms apprear.\n a.	Copper sulfate is a preventive spray. \n b.	Triademifon is a systemic curative spray.\n'),
                detailsSubTitle('Cultural Treatment'),
                details(
                    'Maintaining healthy plants and good sanitation practices\n\nRemoving weeds that may compete with the coffee plant for nutrients or stress the coffee plants. This also contributes to maintaining tree health.\n\nPruning, which increases air flow through the trees and reduces humidity.\n\nRemoving plants that are weak, old or already affected by other diseases or pests.\n'),
                detailsSubTitle('Physical/Mechanical Treatment'),
                details(
                    'Checking with your local agricultural advisory (extension) agent for recommended practices. Do this before applying any plant protection products.\n'),
                detailsSubTitle('Biological Treatment'),
                details(
                    'Biopesticides and essential oils can reduce coffee rust damage by up to 97%, promoting plant defense and disease resistance. These products, including plant extracts, also show promising results in disease management.The use of essential oils such as cinnamon, citronella, lemongrass, cloves, tea tree, thyme and eucalyptus has also shown promising results in coffee rust management.\n\nTwo types of fungi are known to be particularly important for coffee leaf rust:\n\n1.Mycoparasitic fungi which “eat” other fungi such as coffee leaf rust.\n2.Fungi capable of living inside the tissue of the coffee plant and working as bodyguards.\n\nThey protect the plant against attacks by diseases like rust. Both types of beneficial organisms might be exploited on coffee farms as sustainable tools for managing coffee leaf rust. There are several bacterial groups that form beneficial associations with plants. These mainly belong to the bacterial groups Bacillus and Pseudomonas. These bacteria can benefit the coffee plants in three main ways: \n\na)	Competing for space or nutrients because many bacteria live both within and on tissues of plants. This prevents germination and/or the development of the fungus causing coffee rust. \n\nb)	Producing antimicrobial compounds that can attack the cell walls of the coffee rust fungi.\n\nc)	Inducing systemic resistance to the rust. Systemic resistance in plants is a resistance mechanism that is activated by a prior infection.\n'),
                detailsSubTitle('Chemical Treatment'),
                details(
                    'Note: The use of chemical fungicides can come with some issues, such as:  \n\nHigh cost of the products. Continuous and repetitive use may promote the selection of rust populations that are resistant to fungicides. So far, chemical control of coffee rust relies on only two chemical groups, which makes the products losing efficiency more probable.\n\nResidues can prevent growers from the high-value organic coffee market. This is particularly true with systemic fungicides. These are fungicides that are absorbed into the plant.\n\nActive ingredients in fungicides may bring harm to the environment and humans.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
