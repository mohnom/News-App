import 'package:flutter/material.dart';
import 'package:sss/Screens/Busines.dart';
import 'package:sss/models/model_rating.dart';
class scroll extends StatelessWidget {
  scroll({super.key, required this.scrol2});
  modelscrol scrol2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push( MaterialPageRoute(builder: (BuildContext) {
            return BusinesScreen(Caategry: scrol2.type,);

          }));
          
        },
        child: Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(scrol2.Imagescrol), fit: BoxFit.fill)),
          child: Center(
              child: Text(
            scrol2.name,
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
