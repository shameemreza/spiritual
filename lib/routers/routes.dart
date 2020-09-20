import 'package:spiritual/components/drag_and_drop/widget/drag_and_drop.dart';
import 'package:spiritual/components/expandable/widget/expandable.dart';
import 'package:spiritual/components/follow/widget/follow.dart';
import 'package:spiritual/components/parallax/widget/parallax.dart';
import 'package:spiritual/components/parallax_content/widget/parallax_content.dart';
import 'package:spiritual/components/profile/widget/profile.dart';
import 'package:spiritual/components/rates/widget/rates.dart';
import 'package:spiritual/components/swipe_to_dismiss/widget/swipe_to_dismiss.dart';
import 'package:spiritual/components/image_gallery/widget/gallery.dart';

import 'package:spiritual/pages/cards/cards_list.dart';
import 'package:spiritual/pages/dialogs/dialogs_list.dart';
import 'package:spiritual/pages/forgot_password/forgot_password_page.dart';
import 'package:spiritual/pages/home/home_page.dart';
import 'package:spiritual/pages/lists/lists.dart';
import 'package:spiritual/pages/login/login_page.dart';
import 'package:spiritual/pages/parallax/parallax_list.dart';
import 'package:spiritual/pages/register/register_page.dart';
import 'package:spiritual/pages/small_components/checkbox_sliders.dart';
import 'package:spiritual/pages/tabs/tabs_page.dart';
import 'package:spiritual/pages/wizards/walkthrough_page.dart';

import '../pages/splash/splash_screen_page.dart';

class Routes {
  static final homePage = HomePage();
  static final splashScreenPage = SplashScreenPage();

  //LISTS
  static final components = Lists();
  static final expandable = Expandable();
  static final dragAndDrop = DragAndDrop();
  static final swipeToDismiss = SwipeToDismiss();

  //CARDS
  static final cardList = CardsList();
  static final rates = Rates();
  static final follow = Follow();
  static final profile = Profile();

  //DIALOGS
  static final dialogList = DialogList();

  //Login - Register
  static final register = RegisterPage();
  static final login = LoginPage();
  static final forgotPassword = ForgotPasswordPage();

  //parallax
  static final parallaxList = ParallaxList();
  static final parallax = Parallax();
  static final parallaxContent = ParallaxContent();

  static final checkboxSliders = CheckboxSliders();

  static final tabs = TabsPage();

  static final gallery = Gallery();
  static final walkthrough = WalkthroughPage();
}
