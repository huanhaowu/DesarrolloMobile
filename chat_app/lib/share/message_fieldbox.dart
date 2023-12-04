import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {

  final textController = TextEditingController();
  final focusNode = FocusNode();

  final outlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(40)
  );

  MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: InputDecoration(
          hintText: "Digita tu mensaje terminado con un ?",
          enabledBorder: outlineInputBorder,
          filled: true,
          focusedBorder: outlineInputBorder,
          suffixIcon: IconButton(
          onPressed: (){
            final textValue = textController.value.text;
            print("send value = $textValue");

          },
             icon: Icon(Icons.send_outlined))
      ),
      onFieldSubmitted: (value) {
        print("Submmited $value");
        textController.clear();
      },
    );
  }
}
