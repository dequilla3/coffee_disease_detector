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
                details(
                    'Coffee berry borer (CBB) is the most serious insect pest of coffee worldwide, causing more than US\$ 500M in damages annually. Reduction in the yield and quality of coffee results from the adult female CBB boring into the coffee fruit and building galleries for reproduction. Adult coffee berry borer beetles are black and about 1.5 mm long. Although it is difficult to see distinctive characteristics with the naked eye, short club shaped antenna and short stiff hairs covering the body can be seen under magnification. Many beetles can often be found in a single coffee berry.\n'),
                detailsSubTitle('Symptoms'),
                details(
                    'The first sign of coffee berry borer attack can be seen at the tip of the berry, around 8 weeks after flowering. A small hole about 1 mm big is often clearly visible.\n'),
                detailsSubTitle('Some Causes'),
                details(
                    'It is difficult to control once the borer is inside the coffee cherry, destroying its integrity.\n\nThe offspring can live inside the bean until next season.\n\nThe ability for short flight makes containment very difficult.\n'),
                detailsSubTitle('Some Control'),
                details(
                    '1.	Sanitation - Remove all coffee fruit, including fruit that is still on the tree, along with fruit that has fallen on the ground.\n\nNote: Transporting and handling infected beans contribute to 	the spread of the insect.\n'),
                detailsSubTitle('Cultural Treatment'),
                details(
                    'Control methods include collecting ripe and overripe berries, post-harvest sanitation, and pesticides, but ground collection is not always recommended due to labor shortages or uneconomic production costs.	During growth:To maintain a healthy berry tree, pick ripe berries as they ripen, increasing to every 2–3 weeks in hot spots.\n\nCollect blackened berries from the ground or bushes and burn them, leaving less than five ripe, overripe, or raisin berries per tree. For 3 months, remove all berries from the bushes and ground, and continually remove young berries.\n\nIf parasitoids are important, pick ripe berries every 2 weeks, leave fallen berries as a reservoir, and increase shade.\n\nMaintain healthy trees using the correct fertilizer, weed control, and pruning.\n\nAfter harvest:\n\nPrune bushes after harvest: (i) remove branches on which berries are too high to reach (keep bushes about 2 m high); (ii) cut out dead or dying branches; and (iii) keep stems to a maximum of four. Stumping is also recommended when trees are old, their yield has declined, or they are too tall to harvest easily.\n\nDo not leave any berries on the bushes; remove them, and also pick up fallen berries, boil them, and bury them.\n'),
                detailsSubTitle('Physical/Mechanical Treatment'),
                details(
                    'Create a CBB Trap - This can be a homemade device effective in trapping the insect during flight periods.\n\na.	Cut open used water bottles\n\nb.	Equip with a lure filled with a 1:1 ratio of ethyl alcohol and methyl alcohol.\n\nc.	Deploy 20 to 30 traps per one (1) hecatre.\n'),
                detailsSubTitle('Biological Treatment'),
                details(
                    'CBB Biological Control - During the flight periods of the insect’s lifecycle, use the naturally-occuring (non-toxic) fungus Beauveria bassiana:\n\na.	Dilute the fungus with water.\n\nb.	Spray it on a regular basis (about every two (2) weeks) as the residual action does not last long. The insect (along with Stem Borer larvae, if any) will be killed once it comes into contact with the fugus.\n\nNote: This fungus is not toxic to humans or to the 	environment, but it is a non-selective “Biocon” agent and 	may infect other beneficial insects. \n'),
                detailsSubTitle('Chemical Treatment'),
                details(
                    'CBB Chemical Control - Chemicals can be effective but it should be used as a last resort. When using chemical sprays, make sure to follow label directions. Alternate application of other fungicide brands so as not to build resistance. \n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
