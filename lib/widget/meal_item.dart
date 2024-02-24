import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  const MealItem({required this.fTitle, required this.fImageUrl, super.key});
  final String fTitle;
  final String fImageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Card(
            margin: EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      fImageUrl,
                      height: 200.0,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Container(
                      color: Colors.black54,
                      child: Text(
                        fTitle,
                        style: TextStyle(fontSize: 26.0, color: Colors.white),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  )
                ]),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.schedule,
                            ),
                            SizedBox(width: 10),
                            Text("20")
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.work_off,
                            ),
                            SizedBox(width: 10),
                            Text("Simple")
                          ],
                        )
                      ]),
                )
              ],
            )));
  }
}
