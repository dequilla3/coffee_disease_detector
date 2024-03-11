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
                    'Common disease caused by the plant-pathogenic fungus Cercospora coffeicola.\n'),
                detailsSubTitle('Symptoms'),
                details(
                    'Leaf Symptoms: \n• Circular spots with tan, gray, or white centers.\n• Lesions may be irregular in shape and cause leaf blight.\n• Lesions begin as small, chlorotic spots that expand to become deep 		brown.\n• Centers turn grayish-white and are encircled by a distinct ring of 			brown tissue.\n• Margins of the lesions are dark brown to reddish brown or purplish to 		black.\n• Dark-colored and silvery-colored sporulation of the pathogen may be 		visible.\n\nGreen Berries:\n• Initial brown color, sunken, longitudinal or irregular or oval in shape.\n• Ashy centers, rarely 0.2 inches, and sometimes encircled by a purple 		halo.\n• Infections can occur at any stage of berry development.\n\nRed Cherries:\n• Large, sunken, blackened areas develop, covered with a silvery 			sheen of fungal spores.\n• Infections that penetrate to the seed may cause pulp to adhere to the 		parchment during processing.\n• Diseased cherries may be subject to attack and further degradation 		by opportunistic bacteria or fungi.\n\nCrop Damage:\n• Damage to leaves causes defoliation, reduced photosynthetic leaf 		area, and loss of plant vigor.\n• Severe damage to cherries and seeds leads to general crop loss.\n• Coffee beans may be stained or off-grade, and parts of the cherry 		pulp may adhere to the parchment, resulting in difficulty in coffee 		milling and a sour taste of the processed beans.\n\n'),
                detailsSubTitle('Some Causes'),
                details(
                    'Seedlings are place too closely together.\nHot and wet weather.\n'),
                detailsSubTitle('Some Control'),
                details(
                    '• Use copper-based fungicide for protection before disease development and repeated spraying for new leaf growth.\n• Alternate application of other fungicide brands to prevent 	resistance.\n• Maintain adequate plant nutrition to control Cercospora leaf and 	berry disease.\n• Perform periodic tissue analysis and soil testing for appropriate fertilizer regime.\n• Practice sanitation and crop debris management to prevent pathogen harboring.\n• Choose planting locations avoiding high elevations and rainy areas.\n• Minimize plant stresses and ensure adequate soil drainage.\n• Grow coffee under shade or in an agroforestry setting.\n• Avoid over-irrigation and prune trees to increase air circulation.\n• Harvest cherries on time to prevent disease progression.\n• Control weeds and apply fungicide sprays to minimize plant stress and humidity.\n'),
                detailsSubTitle('Cultural Treatment'),
                details(
                    'Elimination of crop debris, weed hosts and provide 35–65% shade. In order to maintain adequate plant nutrition, nitrogen fertilizers are used. Plant only high-quality seeds, and destroy infected crops in time after the final harvest and before replanting. Select a reasonable planting density (10 ft × 10 ft for robusta while 8 ft × 8 ft for arabica). Avoid planting coffee transplants too deep in soils\n'),
                detailsSubTitle('Physical/Mechanical Treatment'),
                details(
                    'Remove contaminated material - strip off affected leaves or remove whole plants and dispose of them by burning or putting them out with your household waste. Avoid composting diseased material because the conditions in your compost heap are ideal for the incubation of next years fungal infection. Collect and dispose of any infected leaves littering the ground. Sterilise any plant containers and tools before using them again.\n'),
                detailsSubTitle('Biological Treatment'),
                details(
                    'Apply sulfur sprays or copper-based fungicides weekly at first sign of disease to prevent its spread. These organic fungicides will not kill leaf spot, but prevent the spores from germinating.\n'),
                detailsSubTitle('Chemical Treatment'),
                details(
                    'If you spot a fungal infection, immediately remove the affected leaves and dispose of them with your household waste before treating the remaining plants with a suitable systemic fungicide. Fungicide sprays are necessary for disease control in wet conditions, but proper fungicides, rates, and fungicide rotations such as Chlorothalonil and Chlorothalonil Mixtures, Strobilurins and Strobilurin Mixtures should be followed\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
