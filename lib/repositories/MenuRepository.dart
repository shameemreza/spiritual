import 'package:flutter/material.dart';
import 'package:spiritual/routers/routes.dart';

class MenuRepository {
  Map<Widget, Map<String, IconData>> loadModel() {
    return {
      Routes.components: {'LISTS': Icons.format_list_bulleted},
      Routes.cardList: {'CARDS': Icons.credit_card},
      Routes.walkthrough: {'ONBOARDING': Icons.view_array},
      Routes.login: {'LOGIN / REGISTER': Icons.input},
      Routes.gallery: {'GALLERY': Icons.image},
      Routes.checkboxSliders: {'COMPONENTS': Icons.tune},
      Routes.parallaxList: {'PARALLAX': Icons.layers},
      Routes.tabs: {'TABS': Icons.layers},
      Routes.dialogList: {'DIALOGS': Icons.chat}
    };
  }
}
