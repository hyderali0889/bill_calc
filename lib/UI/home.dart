import 'package:flutter/material.dart';

class BillCalc extends StatefulWidget {
  const BillCalc({Key? key}) : super(key: key);

  @override
  State<BillCalc> createState() => _BillCalcState();
}

class _BillCalcState extends State<BillCalc> {
  int _TotalBill = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.purple.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(14.0)),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1),
                child: Center(
                  child: Text("\$ $_TotalBill ",
                      style: const TextStyle(
                          fontSize: 35.0, color: Colors.purple)),
                )),
          ),
          Center(
            child: Container(
                margin: const EdgeInsets.all(50),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black.withOpacity(0.4),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12.0)),
                child: Container(
                    padding: const EdgeInsets.all(50),
                    child: TextField(
                      onChanged: (String value) {
                        try {
                          setState(() {
                            _TotalBill = int.parse(value);
                          });
                        } catch (e) {
                          _TotalBill = 0;
                        }
                      },
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.monetization_on_rounded),
                          prefixIconColor: Colors.purple),
                      style: const TextStyle(
                        color: Colors.purple,
                        fontSize: 25.0,
                      ),
                    ))),
          )
        ],
      ),
    );
  }
}
