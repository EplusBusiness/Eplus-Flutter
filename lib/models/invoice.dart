class Invoice {
  final String dateSent;
  final String sender;
  final String addressSender;
  final String phoneNumberSender;
  final String actorSender;
  final String receiver;
  final String addressReceiver;
  final String phoneNumberReceiver;
  final String actorReceiver;
  final String cmndReceiver;
  final List<LineItem> items;

  Invoice({
    required this.dateSent,
    required this.sender,
    required this.addressSender,
    required this.phoneNumberSender,
    required this.actorSender,
    required this.receiver,
    required this.addressReceiver,
    required this.phoneNumberReceiver,
    required this.actorReceiver,
    required this.cmndReceiver,
    required this.items,
  });
}

class LineItem {
  final String name;
  final int soluong;
  final String dvt;
  final String note;

  LineItem(this.name, this.soluong, this.dvt, this.note);
}
