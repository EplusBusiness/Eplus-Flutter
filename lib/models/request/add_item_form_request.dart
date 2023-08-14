import 'dart:convert';

class AddItemFormRequest {
  int? itemId = 0;
  String? note = '';
  int? amount = 0;

  AddItemFormRequest({
     this.itemId,
     this.note,
     this.amount,
  });

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() => {
    "itemId": itemId,
    "note": note,
    "amount": amount,
  };
}