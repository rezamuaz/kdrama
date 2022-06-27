import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[850],
      borderRadius: BorderRadius.circular(10),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 5.0),
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://ik.imagekit.io/webart/kdrama/Japanese-cartoon-maker-Anime-maker-logo_o2oyMppw-.png?ik-sdk-version=javascript-1.4.3&updatedAt=1653839399167',
                  ),
                ),
                const SizedBox(width: 18.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hello,',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Sativa Priyanto',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Flexible(
                child: SizedBox(
              width: 50,
              height: 50,
              child: Material(child: Icon(Icons.notifications)),
            ))
          ],
        ),
      ),
    );
  }
}
