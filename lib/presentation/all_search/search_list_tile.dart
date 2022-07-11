import 'package:flutter/material.dart';
import 'package:rishtey/utils/app_config.dart';

import '../../../models/searched_profiles.dart';

class SearchList extends StatelessWidget {
  User data;

  SearchList({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.of(context).size.width,
      child: Card(
        shadowColor: Colors.grey,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                "https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg",
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.16,
                width: MediaQuery.of(context).size.height * 0.15,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Height - ${data.height}",
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  width: AppConfig.width * 0.43,
                  child: Text(
                    "${data.religion}: ${data.cast}",
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  width: AppConfig.width * 0.43,
                  child: Text(
                    "${data.motherTongue}",
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                Text(
                  data.education.toString(),
                ),
                const Text(
                  "Send Interest",
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.pinkAccent),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
