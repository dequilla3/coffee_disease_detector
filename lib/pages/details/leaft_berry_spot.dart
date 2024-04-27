import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeafBerrySpot extends StatelessWidget {
  const LeafBerrySpot({super.key});

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
                diseaseTitle('LEAF AND BERRY SPOT'),
                details(
                    'Common disease caused by the plant-pathogenic fungus Cercospora coffeicola.\n\n'
                    'This disease can spread rapidly with the affected leaves falling off (depending on severity of infection).'),
                detailsSubTitle('Symptoms'),
                details('`Leaf Symptoms:\n'
                    '• Circular spots with tan, gray, or white centers.\n'
                    '• Lesions may be irregular in shape and cause leaf blight.\n'
                    '• Lesions begin as small, chlorotic spots that expand to become deep brown.\n'
                    '• Centers turn grayish-white and are encircled by a distinct ring of brown tissue.\n'
                    '• Margins of the lesions are dark brown to reddish brown or purplish to black.\n'
                    '• Dark-colored and silvery-colored sporulation of the pathogen may be visible.\n\n'
                    'Green Berries:\n'
                    '• Initial brown color, sunken, longitudinal or irregular or oval in shape.\n'
                    '• Ashy centers, rarely 0.2 inches, and sometimes encircled by a purple halo.\n'
                    '• Infections can occur at any stage of berry development.\n\n'
                    'Red Cherries:\n'
                    '• Large, sunken, blackened areas develop, covered with a silvery sheen of fungal spores.\n'
                    '• Infections that penetrate to the seed may cause pulp to adhere to the parchment during processing.\n'
                    '• Diseased cherries may be subject to attack and further degradation by opportunistic bacteria or fungi.\n\n'
                    'Crop Damage:\n'
                    '• Damage to leaves causes defoliation, reduced photosynthetic leaf area, and loss of plant vigor.\n'
                    '• Severe damage to cherries and seeds leads to general crop loss.\n'
                    '• Coffee beans may be stained or off-grade, and parts of the cherry pulp may adhere to the parchment, resulting in difficulty in coffee milling and a sour taste of the processed beans.'),
                detailsSubTitle('Causes'),
                details('• Seedlings are placed too closely together.\n'
                    '• Hot and wet weather.'),
                detailsSubTitle('Ways to Control'),
                details(
                    '• Use copper-based fungicide for disease protection and repeated spraying for leaf growth.\n'
                    '• Alternate application of other fungicide brands to prevent resistance.\n'
                    '• Maintain adequate plant nutrition to control Cercospora leaf and berry disease.\n'
                    '• Perform periodic tissue analysis and soil testing for appropriate fertilizer regime.\n'
                    '• Practice sanitation and crop debris management to prevent pathogen harboring.\n'
                    '• Choose planting locations avoiding high elevations and rainy areas.\n'
                    '• Minimize plant stresses and ensure adequate soil drainage.\n'
                    '• Grow coffee under shade or in an agroforestry setting.\n'
                    '• Harvest cherries on time to prevent disease progression.'),
                detailsSubTitle('Cultural Treatment'),
                details('• Elimination of crop debris and weed hosts.\n'
                    '• Provision of 35–65% shade.\n'
                    '• Use of nitrogen fertilizers for plant nutrition.\n'
                    '• Planting high-quality seeds.\n'
                    '• Destroying infected crops post-harvest and before replanting.\n'
                    '• Selecting appropriate planting density.\n'
                    '• Avoiding planting coffee transplants too deep in soils.'),
                detailsSubTitle('Physical/Mechanical Treatment'),
                details('• Strip off affected leaves or plants.\n'
                    '• Dispose of contaminated material by burning or disposing of household waste.\n'
                    '• Avoid composting diseased material due to potential fungal infection.\n'
                    '• Collect and dispose of infected leaves.\n'
                    '• Sterilize plant containers and tools before reuse.'),
                detailsSubTitle('Biological Treatment'),
                details(
                    '• Apply sulfur sprays or copper-based fungicides weekly.\n'
                    '• Prevent spore germination, not leaf spot death.'),
                detailsSubTitle('Chemical Treatment'),
                details('• Essential in wet conditions.\n'
                    '• Proper fungicides, rates, rotations recommended.\n'
                    '• Use Chlorothalonil, Strobilurins.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
