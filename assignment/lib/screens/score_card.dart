import 'package:assignment/network_layer/match_model.dart';
import 'package:flutter/material.dart';

class ScoreCard extends StatefulWidget {
  MatchModel? model;
   ScoreCard({Key? key,this.model}) : super(key: key);

  @override
  State<ScoreCard> createState() => _ScoreCardState();
}

class _ScoreCardState extends State<ScoreCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return SizedBox(
      height: size.height,
      width: size.width,
      child: Container(
        color: Colors.grey.shade200,
        padding:const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius:const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(width: 1.5, color: Colors.grey),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(widget.model?.data?.matchData?.teama?.logoUrl??"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJar2fDsIo8wpDFeCYNw6ac1QEqbKKDd6vVQ&usqp=CAU",height: 20,width: 20,),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children:const [
                          Text("India Innings"),
                          Text("212/2 (20 ov)")
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius:const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(width: 1.5, color: Colors.red),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(widget.model?.data?.matchData?.teamb?.logoUrl??"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJar2fDsIo8wpDFeCYNw6ac1QEqbKKDd6vVQ&usqp=CAU",height: 20,width: 20,),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: const[
                          Text("Afghanistan Innings"),
                          Text("111/8 (20 ov)")
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "BATTING",
              style: TextStyle(color: Colors.red, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DataTable(
                      showBottomBorder: true,
                      headingRowColor:
                      MaterialStateColor.resolveWith((states) =>
                      Colors.black12),
                      columns:
                     const <DataColumn>[
                        DataColumn(
                          label: Text(
                            'BATSMAN',
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'R',
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'B',
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '4R',
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '6S',
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'SR',
                          ),
                        ),
                      ],
                      rows:const [
                        DataRow(
                          cells: [
                            DataCell(
                                Text("Hazratullah")),
                            DataCell(
                                Text("0")),
                            DataCell(
                                Text("4")),
                            DataCell(
                                Text("0")),
                            DataCell(
                                Text("0")),
                            DataCell(
                                Text("0.00")),

                          ]
                      )
                      ]
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
