import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Catterpillar extends StatelessWidget {
  const Catterpillar({super.key});

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
                diseaseTitle('CATERPILLAR INFESTATION'),
                details(
                    "Caterpillars are varied in name as some are called loopers or worms (i.e. cabbage loopers, hornworms and inchworms), and are one of the most common pests that can attack coffee tree plants. These insects can cause significant damage to the leaves and stems of the plant, which can ultimately lead to a decrease in yield."),
                detailsSubTitle('Symptoms'),
                details('• Cutworms: Soil pests.\n'
                    '• Borers: Borers.\n'
                    '• Moth or butterfly larvae.\n'
                    '• Destructive nature.'),
                detailsSubTitle('Causes'),
                details('• Caterpillars found near plants.\n'
                    '• Butterfly instincts aid in locating safe reproduction spots.'),
                detailsSubTitle('Control'),
                details('• Squish larvae or drop into soapy water.\n'
                    '• Caterpillars may relocate to another yard.\n'
                    '• Move away from affected plants.\n'
                    '• Prune off rolled or webbed leaves in trees.'),
                detailsSubTitle('Cultural Treatment'),
                details(
                    '• Hand removal: Quick and effective way to kill caterpillars.\n'
                    '• Homemade Solutions: Pepper spray: Mix fresh habanero peppers, garlic, water, vegetable oil, and dish soap. Spray caterpillars generously.\n'
                    '• Molasses and dish soap: Mix molasses and dish soap with warm water. Spray on leaves.\n'
                    '• Oil spray: Faster and simpler version of pepper spray. Use on canola oil, dish soap, and water.\n'
                    '• Vinegar spray: Kills and repels most garden pests, including caterpillars. Mix vinegar and water.'),
                detailsSubTitle('Physical/Mechanical Treatment'),
                details('• Relocate known hosts.\n'
                    '• Vacuum caterpillars.\n'
                    '• Dump vacuum container in soapy water.'),
                detailsSubTitle('Biological Treatment'),
                details('Bacillus thuringiensis spp. kurstaki (MOA 11A) (BTK)\n'
                    '• Targets young, feeding larvae.\n'
                    '• Requires thorough spray coverage for effectiveness.'),
                detailsSubTitle('Chemical Treatment'),
                details('Neem Oil Spray\n'
                    '• Botanical extract from Neem tree seeds.\n'
                    '• Kills small insect pests like caterpillars and mites.\n'
                    '• Stimulates caterpillar maturation.\n'
                    '• Safe and harmless for humans and pets.')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
