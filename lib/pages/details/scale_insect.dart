import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScaleInsect extends StatelessWidget {
  const ScaleInsect({super.key});

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
                diseaseTitle('SCALE INSECT'),
                details(
                    'Scales insect may feed on host plants (draining nutrients), transit diseases and become especially problematic when they excrete large quantities of wax. High infestations may also be associated with "Black sooty mold which is powdery yet sticky, this is the most obvious symptom of major scale infestation.\n'),
                detailsSubTitle('Symptoms'),
                details(
                    '•	Scales or shell-like bumps on plant stems and the underside of leaves. These are the outer coverings of scale insect.\n\n•	Large populations may result in poor growth.\n\n•	Some species of scale insect excrete honeydew, which accumulates on the upper leaf surfaces. This can be colonized by a black non-parasitic fungus known as sooty mold.\n\n•	Some scale insects deposit their eggs under a covering of white waxy fibers in early summer.\n'),
                detailsSubTitle('Some Causes'),
                details(
                    'Scale insects suck the sap out of plants which causes deformed leaves, yellowing leaves, brown marks, and will cause them to eventually fall off if not treated in time. The appearance of sooty mold is another primary sign that indicates scale on plants.\n'),
                detailsSubTitle('Some Control'),
                details(
                    'Check susceptible plants frequently from spring onwards so action can be taken before a damaging population has developed. When choosing control options you can minimize harm to non-target animals by starting with the methods in the non-pesticide control section. If this is not sufficient to reduce the damage to acceptable levels then you may choose to use pesticides.\n'),
                detailsSubTitle('Cultural Treatment'),
                details(
                    'Monitor:\n\nMonitor plants for scale presence in spring, as no insecticide is effective once soft or hard shells form; wash and spray when insects are most vulnerable.\n\nUse water:\n\nUse a gentle hose blast to dislodge minor infestations, dispose of them in soapy water, and wipe down sooty mold-emitting leaves or stems.\n'),
                detailsSubTitle('Physical/Mechanical Treatment'),
                details(
                    'Prune branches: \nCut out the most heavily infested branches or stems and discard in the garbage or yard debris bin. Don’t compost affected plant material.\n'),
                detailsSubTitle('Biological Treatment'),
                details(
                    'Grow a variety of flowering plants to help attract and support natural enemies. Adults of predatory bugs, lacewings, lady beetles, and parasitic wasps live longer, lay more eggs, and kill more scales when they have plant nectar or pollen and insect honeydew to feed on.\n'),
                detailsSubTitle('Chemical Treatment'),
                details(
                    'If chemical controls are used, they should be used only in a minimal and highly targeted manner.\n\n•	Organic sprays, such as natural pyrethrum or plant oils can give good control of scale insect nymphs. These pesticides have a very short persistence and so may require reapplication to keep scale numbers in check. Plant oil products are less likely to affect larger insects such as ladybird adults \n\n•	Plant invigorators combine nutrients to stimulate plant growth with surfactants or fatty acids that have a physical mode of action These are not considered organic.•	To grow well, plants need a wide range of nutrients in various amounts, depending on the individual plant and its stage of growth. The three key plant nutrients usually derived from soil are nitrogen, phosphorus and potassium, while carbon, oxygen and hydrogen are absorbed from the air. Other vital soil nutrients include magnesium, calcium and sulphur. Farmers can add nutrients by applying fertilizers to boost plant growth and improve flowering and fruiting.\n\n•	nutrients to stimulate plant growth with surfactants or fatty acids that have a physical mode of action. These are not considered organic.\n\n•	More persistent contact-action insecticides include the synthetic pyrethroids lambda-cyhalothrin, deltamethrin and cypermethrin \n\n•	A systemic containing the active ingredient Flupyradifurone is available for use on ornamentals and selected edibles\n\n•	The systemic neonicotinoid insecticide acetamiprid is also available.\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
