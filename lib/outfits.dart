import 'package:cluless1/clothes.dart';
import 'package:cluless1/usefulClasses.dart';

class Outfit {
  Outfit({
    this.title,
    this.date,
    this.elements,
    this.tag,
    this.season,
    this.weather,
    this.fanciness,
  });

  String title;
  String date;
  List<Clothes> elements;
  List<Options> tag;
  List<Seasons> season;
  List<Images> weather;
  List<Images> fanciness;
}

List<Outfit> outfitsList = <Outfit>[
  Outfit(
      title: 'Clueless but embroidery',
      date: '24/07/20',
      elements: [clothes[0], clothes[1], clothes[3], clothes[7]],
      tag: [options[12], options[13]],
      season: [seasons[0], seasons[3]],
      weather: [imgs[0], imgs[1]],
      fanciness: [imgs[5]]),
  Outfit(
      title: 'Picnic on Friday',
      date: '16/08/20',
      elements: [clothes[6], clothes[2], clothes[3], clothes[5]],
      tag: [options[12], options[13]],
      season: [seasons[0], seasons[3]],
      weather: [imgs[0], imgs[1]],
      fanciness: [imgs[5]])
];
