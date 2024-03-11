import 'package:image_processing/pages/details/berry_borrer.dart';
import 'package:image_processing/pages/details/catterpillar.dart';
import 'package:image_processing/pages/details/leaf_rust.dart';
import 'package:image_processing/pages/details/leaft_berry_spot.dart';
import 'package:image_processing/pages/details/scale_insect.dart';
import 'package:image_processing/pages/details/sooty_mold.dart';
import 'package:image_processing/pages/home_screen.dart';

class AppRoutes {
  static const homeScreen = '/';
  static const leafRust = '/leaf_rust_details';
  static const leafBerrySpot = '/leaf_berry_spot';
  static const berryBorrer = '/berry_borrer';
  static const sootyMold = '/sooty_mold';
  static const catterpillar = '/catterpillar';
  static const scaleInsect = '/scale_insect';

  static final routes = {
    homeScreen: (contex) => const HomeScreen(),
    leafRust: (contex) => const LeafRust(),
    leafBerrySpot: (contex) => const LeafBerrySpot(),
    berryBorrer: (contex) => const BerryBorrer(),
    sootyMold: (contex) => const SootyMold(),
    catterpillar: (contex) => const Catterpillar(),
    scaleInsect: (contex) => const ScaleInsect(),
  };
}
