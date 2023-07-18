import 'package:flutter/material.dart';

import '../../widget/vms_text_field/vms_text_field.dart';


class SenderTab extends StatefulWidget {
  const SenderTab({Key? key}) : super(key: key);

  @override
  State<SenderTab> createState() => _SenderTabState();
}

class _SenderTabState extends State<SenderTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            _buildSenderWidget(),
            _buildAddressWidget(),
            _buildPhoneWidget(),
            _buildUserInsteadWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildSenderWidget() {
    return VmsTextField(
      hint: "Sender",
      // nextFocusNode: passwordFocusNode,
      onTextChanged: (textChanged) {
      },
      fontSize: 35,
      autoFocus: false,
    );
  }

  Widget _buildAddressWidget() {
    return VmsTextField(
      hint: "Address",
      // focusNode: passwordFocusNode,
      onTextChanged: (textChanged) {
      },
      onSubmit: (_) {},
      fontSize: 35,
      autoFocus: false,
    );
  }

  Widget _buildPhoneWidget() {
    return VmsTextField(
      hint: "Phone number",
      keyboardType: TextInputType.phone,
      // focusNode: passwordFocusNode,
      onTextChanged: (textChanged) {
      },
      onSubmit: (_) {},
      fontSize: 35,
      autoFocus: false,
    );
  }

  Widget _buildUserInsteadWidget() {
    return VmsTextField(
      hint: "User Instead",
      // focusNode: passwordFocusNode,
      onTextChanged: (textChanged) {
      },
      onSubmit: (_) {},
      fontSize: 35,
      autoFocus: false,
    );
  }
}
