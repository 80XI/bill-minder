import 'package:billminder/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../utils/color_pallette.dart';

class ViewBills extends StatefulWidget {
  const ViewBills({super.key});

  @override
  State<ViewBills> createState() => _ViewBillsState();
}

class _ViewBillsState extends State<ViewBills> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ph(context, 75.66),
      width: pw(context, 100),
      color: Pallette.billminder_secondary,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: pw(context, 4),
            vertical: ph(context, 1)
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Container(
            //   child: Text("Bills",
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: pw(context, 5)
            //     ),
            //   ),
            // ),
            Container(
              height: ph(context, 72),
              child: ListView.builder(
                itemCount: 18,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.symmetric(
                      vertical: ph(context, 1.5)
                    ),
                    height: ph(context, 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Pallette.billminder_bill_tiles
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Electricity",
                            style: TextStyle(
                              fontSize: pw(context, 6),
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.share),
                                Icon(Icons.edit),
                                Icon(Icons.delete,
                                  color: Colors.red,
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Quaterly",
                              style: TextStyle(
                                fontSize: pw(context, 5)
                              ),
                            ),
                            Text("\$120",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: pw(context, 5)
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  );
                }),
            )


          ],
        ),

      ),
    );
  }
}
