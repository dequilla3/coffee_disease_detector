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
                details(
                    'The sooty molds are saprobic ascomycetes belonging to several different families of Dothideales. Sooty molds use the honeydew secreted by plants or sap-sucking insects, such as aphids and scale.\n'),
                detailsSubTitle('Symptoms'),
                details(
                    'Sooty mold is identified by splotchy black stains or coatings on leaves, stems, and fruit.\n'),
                detailsSubTitle('Some Causes'),
                details(
                    'The black residue of sooty mold is made up of dark fungal threads of several ascomycetes, such as species of Alternaria, Capnodium, Cladosporium, Fumago, and Scorias. These fungi grow in flowing sap or on honeydew excreted by aphids and other sucking insects.\n'),
                detailsSubTitle('Some Control'),
                details(
                    'Control measures include dusting or spraying for sucking insects, clearing sticky coatings of sap or honeydew on plant surfaces, and avoiding wounding plants.\n'),
                detailsSubTitle('Cultural Treatment'),
                details(
                    'eco-oil and eco-neem will both control a broad range of sap-sucking insects. Spray with either a couple of times to kill the pests. Ensure good coverage all over the plants so you dont miss any of the pests. Once the sooty mould starts to dry and flake hosing can help to remove the flaky bits faster.\n'),
                detailsSubTitle('Physical/Mechanical Treatment'),
                details(
                    'First control the aphids, scales or other pests that are creating the honeydew.\n\nAphids can often be washed off by a strong spray of water from the hose. \n\nThis action may also wash off some of the "honeydew" and sooty mould.\n\nRemaining sooty mould will eventually dry up and flake off the leaves.\n'),
                detailsSubTitle('Biological Treatment'),
                details(
                    'Sooty moulds are surface contaminants - that grow on honeydew excreted by sap-sucking insects. These insects shed droplets of honeydew onto surfaces below where they feed, such as leaves, stems, branches, and fruit. Honeydew contains high sugars and nutrients, which the sooty mould fungi use for growth. Sooty mould growth is most prevalent in poor air circulation and high humidity, providing extended wetness. Occasionally, sooty mould growth develops on sugary, sticky exudates produced by the plants leaves, with certain species like Cistus being more likely to produce such exudates.\n'),
                detailsSubTitle('Chemical Treatment'),
                details(
                    'Shell white oil/Orchard oil at 4 litres per 200 litres of water is also effective. \n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
