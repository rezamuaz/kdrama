import 'package:cached_network_image/cached_network_image.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

class EpisodeTerbaruItem extends StatelessWidget {
  const EpisodeTerbaruItem({super.key, required this.imageList});
  final List<dynamic> imageList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.50,
          crossAxisSpacing: 5.0,
        ),
        itemCount: imageList.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        primary: false,
        itemBuilder: (buildContext, index) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  flex: 7,
                  child: Stack(alignment: Alignment.center, children: [
                    ShaderMask(
                      shaderCallback: (rectangle) {
                        return const LinearGradient(
                                colors: [Colors.black, Colors.transparent],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter)
                            .createShader(Rect.fromLTRB(
                                0,
                                rectangle.height * 0.7,
                                rectangle.width,
                                rectangle.height));
                      },
                      blendMode: BlendMode.darken,
                      child: CachedNetworkImage(
                        alignment: Alignment.topCenter,
                        imageUrl: imageList[index].image.toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: const FractionalOffset(0.05, 0.03),
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).primaryColor),
                        child: const Text(
                          "Movie",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0.94, 0.9),
                      child: FractionallySizedBox(
                        widthFactor: 0.20,
                        heightFactor: 0.10,
                        alignment: Alignment.center,
                        child: Flag.fromCode(
                          FlagsCode.KR,
                          fit: BoxFit.cover,
                          flagSize: FlagSize.size_4x3,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.7, 0.93),
                      child: FractionallySizedBox(
                        alignment: Alignment.topCenter,
                        widthFactor: 0.7,
                        heightFactor: 0.10,
                        child: Text(
                          '${NumberFormat.compact(locale: 'id').format(int.parse(imageList[index].views.toString()))} Views',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white.withOpacity(0.6)),
                        ),
                      ),
                    )
                  ]),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 1, bottom: 1),
                    child: Text(
                      Jiffy(DateFormat("yyyy-MM-dd HH:mm:ss")
                              .parse("2022-06-13 05:18:04Z")
                              .toLocal())
                          .fromNow(),
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Text(
                    imageList[index].title.toString(),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
