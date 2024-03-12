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
                    'Caterpillars are varied in name as some are called loopers or worms (i.e. cabbage loopers, hornworms and inchworms), and are one of the most common pests that can attack coffee tree plants. These insects can cause significant damage to the leaves and stems of the plant, which can ultimately lead to a decrease in yield. \n'),
                detailsSubTitle('Symptoms'),
                details(
                    'Some are actually soil pests such as cutworms, while other are called borers, but one fact remains that they are always moth or butterfly larvae and can be extremely destructive.\n'),
                detailsSubTitle('Some Causes'),
                details(
                    'You end up with caterpillars mainly because butterflies lay their eggs on or near your plants. Like many valuable species in nature, butterfly instincts help them locate the safest spot conducive to reproduction.\n'),
                detailsSubTitle('Some Control'),
                details(
                    'You can squish the larvae or drop them into soapy water to destroy them, or they may choose to locate them to another part of the yard. Caterpillars are unlikely to return to the affected plant as long as theyve been moved far enough away. Prune off rolled or webbed leaves in trees if you can reach them.\n'),
                detailsSubTitle('Cultural Treatment'),
                details(
                    'Hand removal is the most effective and straightforward way to remove caterpillars quickly. \n\nDrop them into a bucket of soapy water to get rid of them.\n\nHomemade Solutions Pepper spray: \n\na)	You can kill caterpillars with fresh peppers. Wear gloves and eye protection and finely chop enough habanero peppers to fill 1/2 cup. Crush six garlic cloves. Puree the peppers and garlic with 2 cups of water, 1 tablespoon of vegetable oil, and 1 teaspoon of dish soap in the blender. Pour the mixture into a quart glass jar and cap it tightly. Set it in direct sun for two days. Strain the pepper solution through a coffee filter into a spray bottle. Spray caterpillars generously.\n\nb)	Molasses and dish soap: Mix a tablespoon of molasses and a teaspoon of dish soap with a liter of warm water. Once room temperature, spray the mix regularly over the leaves, top to bottom.\n\nc)	Oil spray: This stripped-down version of pepper spray is ready faster and with fewer ingredients; combine 2 tablespoons of canola oil (or any vegetable oil), 1 teaspoon of dish soap, and 2 cups of warm water. Funnel the solution into a spray bottle and spritz caterpillars liberally. Dont use this on orchids, squashes, or hairy-leafed plants.\n\nd)	Vinegar spray: A vinegar and water solution will kill and repel most garden pests, including caterpillars. Mix two tablespoons of vinegar with 1 gallon of water, and spray wherever youve seen caterpillars.\n'),
                detailsSubTitle('Physical/Mechanical Treatment'),
                details(
                    'Relocate or remove plants that are known hosts, if possible. Vacuum caterpillars off plants and dump the vacuum container in a bucket of soapy water.\n'),
                detailsSubTitle('Biological Treatment'),
                details(
                    'Bacillus thuringiensis spp. kurstaki, (MOA 11A) (BTK) (Dipel DF, Deliver, Javelin, Thuricide N/G) is most effective against the young, feeding larvae. The caterpillars must consume this bacterium for it to be effective, so thorough spray coverage is needed.\n'),
                detailsSubTitle('Chemical Treatment'),
                details(
                    'Spray Neem Oil:\nNeem oil sprays, a botanical extract from Neem tree seeds, kill small insect pests like caterpillars and mites through suffocation, affecting caterpillars by stunting their maturation. These commercially sold sprays are safe and harmless for humans and pets.\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
