import 'package:cluless1/filters.dart';

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
      item: [options[0], options[4]],
      season: [seasons[0], seasons[3]],
      weather: [imgs[0], imgs[1]],
      fanciness: [imgs[5]]),
  Clothes(
      imgPath: 'images/shorts.jpg',
      item: [options[0], options[4]],
      season: [seasons[0], seasons[3]],
      weather: [imgs[0], imgs[1]],
      fanciness: [imgs[5]]),
  Clothes(
      imgPath: 'images/tshirt.jpg',
      item: [options[0], options[4]],
      season: [seasons[0], seasons[3]],
      weather: [imgs[0], imgs[1]],
      fanciness: [imgs[5]]),
];
