import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:pve/locale/zh_CN.dart';

//语言
class PveLocale extends Translations {
  //注册语言
  List<Translations> trans = [zhCN()];
  @override
  Map<String, Map<String, String>> get keys => getLocales();
  Map<String, Map<String, String>> getLocales(){
    Map<String, Map<String, String>> locale;
    locale=<String, Map<String, String>>{};
    for (var element in trans) {
      locale.addAll(element.keys);
    }
    return locale;
  }
}