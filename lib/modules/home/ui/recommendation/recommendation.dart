import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kdrama/modules/home/bloc/Recommended/recommendation_bloc.dart';
import 'package:kdrama/modules/home/ui/recommendation/recommendation_list.dart';

// class Recommendation extends StatelessWidget {
//   const Recommendation({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
//       child: FutureBuilder(
//         future: _data,
//         builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
//           if (snapshot.hasData) {
//             return Column(
//               children: [
//                 const SizedBox(
//                   child: Text(
//                     "Rekomendasi",
//                     style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 RecommendationList(
//                     imageList: snapshot.data!, notifyParent: refresh),
//                 const SizedBox(height: 10),
//                 Text(snapshot.data![currentIndex].title.toString(),
//                     style: const TextStyle(fontSize: 15))
//               ],
//             );
//           } else if (snapshot.hasError) {
//             return const Text('failed to load data');
//           }
//           // By default, show a loading spinner.
//           return const Center(child: CircularProgressIndicator());
//         },
//       ),
//     );
//   }
// }
class Recommendation extends StatefulWidget {
  const Recommendation({
    Key? key,
  }) : super(key: key);

  @override
  State<Recommendation> createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {
  dynamic currentIndex = 0;

  void refresh(dynamic setIndex) {
    setState(() {
      currentIndex = setIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: BlocBuilder<RecommendationBloc, RecommendationState>(
        builder: (context, state) {
          if (state is RecommendationLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is RecommendationLoaded) {
            return Column(
              children: [
                const SizedBox(
                  child: Text(
                    "Rekomendasi",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                ),
                const SizedBox(height: 10),
                RecommendationList(
                    imageList: state.rekomendasi, notifyParent: refresh),
                const SizedBox(height: 10),
                Text(state.rekomendasi[currentIndex].title.toString(),
                    style: const TextStyle(fontSize: 15))
              ],
            );
          }
          return Container();
        },
      ),
    );
  }
}
