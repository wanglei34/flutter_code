import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class PinCodeTextFieldPage extends StatefulWidget {
  const PinCodeTextFieldPage({Key? key}) : super(key: key);

  @override
  State<PinCodeTextFieldPage> createState() => _PinCodeTextFieldPageState();
}

class _PinCodeTextFieldPageState extends State<PinCodeTextFieldPage> {
  TextEditingController controller = TextEditingController(text: '');
  String thisText = '';
  int pinLength = 6;
  bool hasError = false;
  late String errorMessage;
  String res = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Material Pin Code Text Field Example',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: PinCodeTextField(
                      controller: controller,
                      pinBoxWidth: (MediaQuery.of(context).size.width - 90) / 6,
                      pinBoxHeight:
                          (MediaQuery.of(context).size.width - 90) / 6,
                      isCupertino: false,
                      maxLength: 6,
                      hideCharacter: false,
                      maskCharacter: "*",
                      highlight: true,
                      highlightAnimation: true,
                      highlightAnimationBeginColor: Colors.red,
                      highlightAnimationEndColor: Colors.blue,
                      highlightAnimationDuration: const Duration(seconds: 1),
                      highlightColor: Colors.green,
                      pinBoxDecoration:
                          ProvidedPinBoxDecoration.underlinedPinBoxDecoration,
                      pinTextStyle: const TextStyle(
                          fontSize: 20, color: Colors.deepPurple),
                      hasTextBorderColor: Colors.deepOrange,
                      onDone: (value) {
                        print("value==>$value");
                      },
                      pinTextAnimatedSwitcherTransition:
                          ProvidedPinBoxTextAnimation.rotateTransition,
                      pinTextAnimatedSwitcherDuration:
                          const Duration(milliseconds: 300),
                      errorBorderColor: Colors.pinkAccent,
                      onTextChanged: (chara) {
                        print("chara==>$chara");
                        setState(() {
                          res = chara;
                        });
                      },
                      autofocus: true,
                      wrapAlignment: WrapAlignment.start,
                      textDirection: TextDirection.ltr,
                      keyboardType: TextInputType.number,
                      pinBoxColor: Colors.white,
                      pinBoxBorderWidth: 1,
                      pinBoxRadius: 2,
                      hideDefaultKeyboard: false,
                      highlightPinBoxColor: Colors.indigo.shade200,
                    ),
                  ),
                  onLongPress: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  res,
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(letterSpacing: 10),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
