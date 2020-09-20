import 'package:flutter/material.dart';
import 'package:spiritual/components/common/card/rates_card.dart';

class RatesRepository {
  List<Widget> loadWidgets() {
    return [
      RatesCard(
        image: 'assets/avatars/avatar_1.jpg',
        text1: 'Shameem Reza',
        text2: 'Llamco nisi sunt velit quis sint anim nisi sunt Lorem in.',
        rateText: '6.3',
      ),
      RatesCard(
        image: 'assets/avatars/avatar_2.jpg',
        text1: 'Nazmoon Munny',
        text2: 'Llamco nisi sunt velit quis sint anim nisi sunt Lorem in.',
        rateText: '6.3',
      ),
      RatesCard(
        image: 'assets/avatars/avatar_3.jpg',
        text1: 'Wasif Salvin',
        text2: 'Llamco nisi sunt velit quis sint anim nisi sunt Lorem in.',
        rateText: '6.3',
      ),
      RatesCard(
        image: 'assets/avatars/avatar_4.jpg',
        text1: 'John Doe',
        text2: 'Llamco nisi sunt velit quis sint anim nisi sunt Lorem in.',
        rateText: '6.3',
      ),
      RatesCard(
        image: 'assets/avatars/avatar_5.jpg',
        text1: 'John Donne',
        text2: 'Llamco nisi sunt velit quis sint anim nisi sunt Lorem in.',
        rateText: '6.3',
      ),
      RatesCard(
        image: 'assets/avatars/avatar_6.jpg',
        text1: 'Aarish',
        text2: 'Llamco nisi sunt velit quis sint anim nisi sunt Lorem in.',
        rateText: '6.3',
      ),
    ];
  }
}
