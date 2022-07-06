import 'package:flutter/material.dart';
import 'package:rishtey/models/dashboard_profile_model.dart';
import 'package:rishtey/utils/app_config.dart';

class InterestProfile extends StatelessWidget {
  User data;

  InterestProfile({Key? key,required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(

        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)),
elevation: 4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 10,),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                "https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg",
                fit: BoxFit.fitHeight,
                height: MediaQuery.of(context).size.height * 0.16,
                width: MediaQuery.of(context).size.height * 0.15,
              ),
            ),
            SizedBox(width: 30,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.profileId,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
                Text(
                  "${data.partnerAgeFrom} | ${data.height}",
                  style: TextStyle(fontSize: 16, ),
                ),
                Text(
                  "${data.religion}: ${data.cast}",
                  style: TextStyle(fontSize: 16, ),
                ),
                Container(

                  width: AppConfig.width*0.43,
                  child: Text(
                    "${data.motherTongue}-${data.birthPlace}",maxLines: 2,
                    style: TextStyle(fontSize: 16, ),
                  ),
                ),
                Text(
                    "${data.annualIncome}",
                ),
                Text(
                  "Send Interest",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800,color: Colors.pinkAccent),
                ),
              ],
            ),
            SizedBox(width: 20,),
          ],
        ),
      ),
    );
  }
}
