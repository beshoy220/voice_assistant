import 'package:translator/translator.dart';

translate(String input) async {
  final translator = GoogleTranslator();
  final inputt = input;

  // var translation = await translator
  //     .translate(inputt, from: 'en', to: 'it');

  var finalTranslation =
      translator.translate(inputt, to: 'en').then((result) => result);
  return finalTranslation;
  // var translation = await translator
  //     .translate("I would buy a car, if I had money.", from: 'en', to: 'it');

  // print('Translated: ${await input.translate(to: 'en')}');

  // translator.baseUrl = "translate.google.cn";
  // translator.translateAndPrint("This means 'testing' in chinese", to: 'zh-cn');

  // print("translation: $translation");
}
