import 'package:flutter/material.dart';
import 'package:makepdfs/models/invoice.dart';
import 'package:makepdfs/pages/detail.dart';

class InvoicePage extends StatelessWidget {
  InvoicePage({Key? key}) : super(key: key);

  final invoices = <Invoice>[
    Invoice(
        customer: 'David Thomas',
        address: '123 Fake St\r\nBermuda Triangle',
        items: [
          LineItem('TV 50inch', 10, 'VND', 'abc'),
          LineItem('TV 60inch', 10, 'VND', 'abc'),
          LineItem('TV 70inch', 10, 'VND', 'abc'),
          LineItem('TV 70inch', 10, 'VND', 'abc'),
          LineItem('TV 70inch', 10, 'VND', 'abc'),
        ],
        name: 'Create and deploy software package'),
    Invoice(
      customer: 'Michael Ambiguous',
      address: '82 Unsure St\r\nBaggle Palace',
      items: [
        LineItem('TV 80inch', 10, 'VND', 'abc'),
        LineItem('TV 90inch', 10, 'VND', 'abc'),
        LineItem('TV 70inch', 10, 'VND', 'abc'),
      ],
      name: 'Provide remote support after lunch',
    ),
    Invoice(
      customer: 'Marty McDanceFace',
      address: '55 Dancing Parade\r\nDance Place',
      items: [
        LineItem('TV 70inch', 50, 'VND', 'abc'),
        LineItem('TV 300inch', 60, 'VND', 'abc'),
        LineItem('TV 27icnh', 10, 'VND', 'abc'),
        LineItem('TV 30inch', 10, 'VND', 'abc'),
      ],
      name: 'Create software to teach robots how to dance',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoices'),
      ),
      body: ListView(
        children: [
          ...invoices.map(
            (e) => ListTile(
              title: Text(e.name),
              subtitle: Text(e.customer),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (builder) => DetailPage(invoice: e),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
