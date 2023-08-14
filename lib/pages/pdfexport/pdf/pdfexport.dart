import 'dart:typed_data';
import 'package:eplusflutter/models/invoice.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';
import '../../../core/icon_constants.dart';
import 'package:uuid/uuid.dart';

File? filePdf;

Future<Uint8List> makePdf(
    Invoice invoice, Uint8List dataSender, Uint8List dataReceiver, bool isPreview) async {
  final pdf = Document();
  var data = await rootBundle.load("assets/times_new_roman.ttf");
  var dataBold = await rootBundle.load("assets/SVN_Times_New_Roman_Bold.ttf");
  var myFont = Font.ttf(data);
  var myFontBold = Font.ttf(dataBold);
  var myStyle = TextStyle(font: myFont, fontSize: 13);
  var myStyleBold = TextStyle(font: myFontBold, fontSize: 13);
  var myStyleBoldTall = TextStyle(font: myFontBold, fontSize: 17);

  final imageLogo =
      MemoryImage((await rootBundle.load(imgLogo)).buffer.asUint8List());
  final imageBackground = MemoryImage(
      (await rootBundle.load(imgBackgroundPdf)).buffer.asUint8List());
  // final imageSender = MemoryImage(dataSender);
  // final imageReceiver = MemoryImage(dataReceiver);
  pdf.addPage(
    MultiPage(
      pageFormat: PdfPageFormat.a4,
      header: (Context context) {
        //discover first page of this MultiPage here ???
        return Column(children: [
          // VerticalDivider(width: double.infinity),
          Container(
            margin: const EdgeInsets.only(left: 0, top: -40),
            height: 75,
            width: 75,
            child: Image(imageLogo),
          )
        ]);
      },
      footer: (Context context) {
        //discover first page of this MultiPage here ???
        return Column(children: [
          Container(
              height: 5, child: Divider(height: 1, color: PdfColors.grey600)),
          Row(children: [
            Spacer(),
            Container(
              margin: const EdgeInsets.only(right: 0, bottom: -80),
              height: 75,
              width: 130,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Head Office',
                        style: TextStyle(
                            fontSize: 6,
                            color: PdfColors.grey600,
                            fontWeight: FontWeight.bold)),
                    Text('No.15, No.14 Str.,',
                        style: TextStyle(
                            fontSize: 6,
                            color: PdfColors.grey600,
                            fontWeight: FontWeight.bold)),
                    Text('Nam Long Residential Area, Dist.7, HCMC',
                        style: TextStyle(
                            fontSize: 6,
                            color: PdfColors.grey600,
                            fontWeight: FontWeight.bold)),
                    Text('P   +84 (028) 3535 1632',
                        style: TextStyle(
                            fontSize: 6,
                            color: PdfColors.grey600,
                            fontWeight: FontWeight.bold)),
                    Text('W   www.eplus.com.vn',
                        style: TextStyle(
                            fontSize: 6,
                            color: PdfColors.grey600,
                            fontWeight: FontWeight.bold)),
                  ]),
            ),
          ])
        ]);
      },
      build: (context) {
        return [
          Stack(children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Image(imageBackground),
              ),
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        width: double.infinity,
                        child: Center(
                          child: Text('BIÊN BẢN GIAO NHẬN HÀNG HÓA',
                              style: myStyleBoldTall),
                        ),
                      ),
                      titleWithInputField(myStyleBold, myStyle, 'BÊN GIAO',
                          invoice.sender, true),
                      titleWithInputField(myStyle, myStyle, 'Địa chỉ',
                          invoice.addressSender, false),
                      titleWithInputField(myStyle, myStyle, 'Điện thoại',
                          invoice.phoneNumberSender, false),
                      titleWithInputField(myStyle, myStyle, 'Đại diện',
                          invoice.actorSender, false),
                      SizedBox(height: 20),
                      titleWithInputField(myStyleBold, myStyle, 'BÊN NHẬN',
                          invoice.receiver, true),
                      titleWithInputField(myStyle, myStyle, 'Địa chỉ',
                          invoice.addressReceiver, false),
                      titleWithInputField(myStyle, myStyle, 'Điện thoại',
                          invoice.phoneNumberReceiver, false),
                      titleWithInputField(myStyle, myStyle, 'Số CMND/CCCD',
                          invoice.cmndReceiver, false),
                      titleWithInputField(myStyle, myStyle, 'Và Đại diện',
                          invoice.actorReceiver, false),
                      SizedBox(height: 15),
                      Text(
                          'Hôm nay ngày :   ….. /  ….  / ….. , hai bên cùng nhau ký biên bản xác nhận việc giao, nhận hàng hóa, tài sản theo danh sách như sau:',
                          style: myStyle,
                          overflow: TextOverflow.visible),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Table(
                  border: TableBorder.all(color: PdfColors.black),
                  children: [
                    TableRow(
                      children: [
                        Padding(
                          child: Text(
                            'STT',
                            style: myStyle,
                            textAlign: TextAlign.center,
                          ),
                          padding: const EdgeInsets.all(10),
                        ),
                        Padding(
                          child: Text(
                            'TÊN HÀNG HÓA, SẢN PHẨM',
                            style: myStyle,
                            textAlign: TextAlign.center,
                          ),
                          padding: const EdgeInsets.all(10),
                        ),
                        Padding(
                          child: Text(
                            'SỐ LƯỢNG',
                            style: myStyle,
                            textAlign: TextAlign.center,
                          ),
                          padding: const EdgeInsets.all(10),
                        ),
                        Padding(
                          child: Text(
                            'ĐVT',
                            style: myStyle,
                            textAlign: TextAlign.center,
                          ),
                          padding: const EdgeInsets.all(10),
                        ),
                        Padding(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Note',
                              style: myStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          padding: const EdgeInsets.all(10),
                        ),
                      ],
                    ),
                    ...invoice.items.map(
                      (e) => TableRow(
                        children: [
                          Expanded(
                            child: paddedText(
                                (invoice.items.indexOf(e) + 1).toString(), myStyle),
                            flex: 2,
                          ),
                          Expanded(
                            child: paddedText(e.name, myStyle),
                            flex: 6,
                          ),
                          Expanded(
                            child: paddedText("${e.soluong}", myStyle),
                            flex: 3,
                          ),
                          Expanded(
                            child: paddedText(e.dvt, myStyle),
                            flex: 2,
                          ),
                          Expanded(
                            child: paddedText(e.note, myStyle),
                            flex: 4,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'Biên bản này được lập thành 02 bản (mỗi bên giữ 01 bản) có giá trị pháp lý như nhau.',
                        style: myStyle,
                        overflow: TextOverflow.visible),
                  ),
                ),
                SizedBox(height: 20),
                Table(
                  border: TableBorder.all(color: PdfColors.white, width: 0.01),
                  children: [
                    TableRow(
                      children: [
                        Padding(
                          child: Column(
                            children: [
                              Text(
                                'NGƯỜI GIAO HÀNG',
                                style: TextStyle(
                                    font: myFont,
                                    fontSize: 12,
                                    decoration: TextDecoration.underline),
                                textAlign: TextAlign.center,
                              ),
                              // Image(imageSender, height: 100, width: 100),
                              Text(
                                invoice.actorSender,
                                style: TextStyle(
                                  font: myFont,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(10),
                        ),
                        Padding(
                          child: Column(
                            children: [
                              Text(
                                'NGƯỜI NHẬN HÀNG',
                                style: TextStyle(
                                    font: myFont,
                                    fontSize: 12,
                                    decoration: TextDecoration.underline),
                                textAlign: TextAlign.center,
                              ),
                              // Image(imageReceiver, height: 100, width: 100),
                              Text(
                                invoice.actorReceiver,
                                style: TextStyle(
                                  font: myFont,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(10),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ])
        ];
      },
    ),
  );
  if (!isPreview) {
    savePdf(pdf);
  }
  return pdf.save();
}

Future<void> savePdf(Document pdf) async {
  // Directory output = await getTemporaryDirectory();
  // var uuid = const Uuid();
  // String uuidV4 = uuid.v4();
  // String nameFile = "${output.path}/$uuidV4.pdf";
  // var file = File(nameFile);
  // await file.writeAsBytes(await pdf.save());
  // filePdf = file;
}

Widget titleWithInputField(TextStyle styleTitle, TextStyle styleNormal,
    String title, String inputText, bool isFirst) {
  return Row(children: [
    Container(
      height: 20,
      width: 100,
      child: Align(
          alignment: isFirst ? Alignment.topLeft : Alignment.centerLeft,
          child: Text(title, style: styleTitle)),
    ),
    Expanded(
      child: Container(
        height: 20,
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(": $inputText", style: styleNormal)),
      ),
    ),
  ]);
}

Widget paddedText(
  final String text, TextStyle styleNormal,{
  final TextAlign align = TextAlign.left,
}) =>
    Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        text,
        textAlign: align,
        style: styleNormal,
      ),
    );
