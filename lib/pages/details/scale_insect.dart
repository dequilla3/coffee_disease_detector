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
                    "Scales insect may feed on host plants (draining nutrients), transit diseases and become especially problematic when they excrete large quantities of wax. High infestations may also be associated with 'Black sooty mold which is powdery yet sticky, this is the most obvious symptom of major scale infestation."),
                detailsSubTitle('Symptoms'),
                details(
                    '• Exhibits shell-like bumps on plant stems and leaves.\n'
                    '• Large populations can lead to poor growth.\n'
                    '• Excretes honeydew on upper leaf surfaces, colonized by sooty mold.\n'
                    '• Eggs deposited under white waxy fibers in early summer.'),
                detailsSubTitle('Causes'),
                details(
                    '• Suck sap, causing deformed, yellowing, browning leaves.\n'
                    '• Potential for plant death if untreated.\n'
                    '• Sooty mold appearance as primary sign of scale.'),
                detailsSubTitle('Control'),
                details(
                    '• Regularly check susceptible plants from spring to prevent damaging population.\n'
                    '• Start non-pesticide control methods to minimize harm to non-target animals.\n'
                    '• If non-control methods don\'t reduce damage, consider using pesticides.'),
                detailsSubTitle('Cultural Treatment'),
                details('• Monitor plants for scale presence in spring.\n'
                    '• Wash and spray when insects are most vulnerable.\n'
                    '• Use gentle hose blast to dislodge minor infestations.\n'
                    '• Dispose of infestations in soapy water.'),
                detailsSubTitle('Physical/Mechanical Treatment'),
                details('• Cut heavily infested branches or stems.\n'
                    '• Discard in garbage or yard debris bin.\n'
                    '• Avoid composting affected plant material.'),
                detailsSubTitle('Biological Treatment'),
                details(
                    '• Attract predatory bugs, lacewings, lady beetles, parasitic wasps.\n'
                    '• Support longer life, egg lay, and scale killing with nectar, pollen, and honeydew.'),
                detailsSubTitle('Chemical Treatment'),
                details(
                    'If chemical controls are used, they should be used only in a minimal and highly targeted manner.\n'
                    '• Organic sprays like natural pyrethrum or plant oils control scale insect nymphs but require reapplication.\n'
                    '• Plant invigorators stimulate plant growth with physical surfactants or fatty acids.\n'
                    '• Plants require a wide range of nutrients, including nitrogen, phosphorus, potassium, carbon, oxygen, hydrogen, magnesium, calcium, and sulphur.\n'
                    '• Fertilizers can add nutrients to boost plant growth and improve flowering and fruiting.\n'
                    '• Synthetic pyrethroids lambda-cyhalothrin, deltamethrin, and cypermethrin are more persistent contact-action insecticides.\n'
                    '• Systemic insecticides like Flupyradifurone and acetamiprid are available for ornamentals and edibles.')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
