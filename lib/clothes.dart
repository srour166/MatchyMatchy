import 'package:cluless1/usefulClasses.dart';
import 'package:cluless1/usefulClasses.dart';

class Clothes {
  Clothes(
      {this.imgPath,
      this.item,
      this.tag,
      this.season,
      this.weather,
      this.fanciness});

  String imgPath;
  List<Options> item;
  List<Options> tag;
  List<Seasons> season;
  List<Images> weather;
  List<Images> fanciness;
}

List<Clothes> clothes = <Clothes>[
  Clothes(
      imgPath: 'images/skirt.jpg',
      item: [options[1]],
      season: [seasons[0], seasons[3]],
      weather: [imgs[0], imgs[1]],
      fanciness: [imgs[5]]),
  Clothes(
      imgPath: 'images/shorts.jpg',
      item: [options[1]],
      season: [seasons[0], seasons[3]],
      weather: [imgs[0], imgs[1]],
      fanciness: [imgs[5]]),
  Clothes(
      imgPath: 'images/tshirt.jpg',
      item: [options[1]],
      season: [seasons[0], seasons[3]],
      weather: [imgs[0], imgs[1]],
      fanciness: [imgs[5]]),
  Clothes(
      imgPath: 'images/cardigan.jpg',
      item: [options[4]],
      season: [seasons[1], seasons[2]],
      weather: [imgs[1]],
      fanciness: [imgs[5]]),
  Clothes(
      imgPath: 'images/stripytshirt.jpg',
      item: [options[0]],
      season: [seasons[0], seasons[1], seasons[2], seasons[3]],
      weather: [imgs[0], imgs[1], imgs[2], imgs[3]],
      fanciness: [imgs[5]]),
  Clothes(
      imgPath: 'images/fluffysandals.jpg',
      item: [options[2]],
      season: [seasons[0]],
      weather: [imgs[0]],
      fanciness: [imgs[5]]),
  Clothes(
      imgPath: 'images/collaredshirt.jpeg',
      item: [options[0]],
      season: [seasons[0], seasons[1], seasons[2]],
      weather: [imgs[0], imgs[1]],
      fanciness: [imgs[5]]),
  Clothes(
      imgPath: 'images/navytrainers.jpg',
      item: [options[4]],
      season: [seasons[0], seasons[1]],
      weather: [imgs[0], imgs[1]],
      fanciness: [imgs[5]]),
];
