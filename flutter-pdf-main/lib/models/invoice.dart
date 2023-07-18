class Invoice {
  final String customer;
  final String address;
  final String name;
  final List<LineItem> items;
  Invoice({
    required this.customer,
    required this.address,
    required this.items,
    required this.name,
  });
}

class LineItem {
  final String name;
  final int soluong;
  final String dvt;
  final String notes;

  LineItem(this.name, this.soluong, this.dvt, this.notes);
}
