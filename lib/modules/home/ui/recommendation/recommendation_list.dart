import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:kdrama/modules/home/repositories/models/rekomendasi_model.dart';

class RecommendationList extends StatelessWidget {
  final Function notifyParent;
  const RecommendationList(
      {super.key, required this.imageList, required this.notifyParent});
  final List<RekomendasiModel> imageList;

  @override
  Widget build(BuildContext context) {
    // var widthScreen = MediaQuery.of(context).size.width;
    // var heightScreen = MediaQuery.of(context).size.height;
    // var orientasiScreen = MediaQuery.of(context).orientation;

    return CarouselSlider.builder(
        options: CarouselOptions(
          initialPage: 2,
          aspectRatio: 16 / 8,
          pauseAutoPlayOnTouch: true,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.scale,
          onPageChanged: (index, reason) {
            notifyParent(index);
          },
          viewportFraction: 0.45,
        ),
        itemCount: imageList.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            Card(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: imageList[itemIndex].image.toString())),
            ));
  }
}
