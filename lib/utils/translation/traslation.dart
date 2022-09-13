import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
        },
        'ar_AE': {
          'hello': 'नमस्ते दुनिया',
        }
      };
}
