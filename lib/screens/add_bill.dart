import 'package:billminder/components/textfield.dart';
import 'package:billminder/utils/color_pallette.dart';
import 'package:billminder/utils/size_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/bill_note_textfield.dart';
import '../components/bill_textfield.dart';
import '../models/bill_model.dart';

class AddBill extends StatefulWidget {
  AddBill({super.key});

  @override
  State<AddBill> createState() => _AddBillState();
}

class _AddBillState extends State<AddBill> {
  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController frequencyController = TextEditingController();
  TextEditingController startdateController = TextEditingController();
  TextEditingController enddateController = TextEditingController();
  TextEditingController notifyController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Bill',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Pallette.billminder_primary,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: ph(context, 90),
          color: Pallette.billminder_secondary,
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: pw(context, 5)
            ),
            child: Column(
              children: [
                BillTextField(
                    label: 'Name',
                    controllerName: nameController,
                    textInputAction: TextInputAction.next,
                    hintText: '',
                    isRequired: true,
                ),
                BillTextField(
                    label: 'Amount',
                    controllerName: amountController,
                    textInputAction: TextInputAction.next,
                    hintText: '',
                    isRequired: true,
                ),
                BillTextField(
                    label: 'Frequency',
                    controllerName: frequencyController,
                    textInputAction: TextInputAction.next,
                    hintText: '',
                    isRequired: true,
                ),
                BillTextField(
                    label: 'Start Date',
                    controllerName: startdateController,
                    textInputAction: TextInputAction.next,
                    hintText: '',
                    isRequired: true,
                ),
                BillTextField(
                    label: 'End Date',
                    controllerName: enddateController,
                    textInputAction: TextInputAction.next,
                    hintText: '',
                ),
                BillTextField(
                    label: 'Notify Me At',
                    controllerName: notifyController,
                    textInputAction: TextInputAction.next,
                    hintText: '',
                    isRequired: true,
                ),
                Container(
                  height: ph(context, 15),
                  child: BillNotesTextField(
                    label: 'Add Note',
                    controllerName: noteController,
                    textInputAction: TextInputAction.done,
                    hintText: '',
                  ),
                ),
                InkWell(
                  onTap: () {
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: ph(context, 2)
                    ),
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: pw(context, 20),
                      height: ph(context, 4.5),
                      decoration: BoxDecoration(
                        color: Pallette.billminder_secondary_two,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2), // Adjust the opacity as needed
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          'Save',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}