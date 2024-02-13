import 'package:flutter/material.dart';
import 'package:selaty/constants/resources/strings.dart';
import 'package:selaty/presentation/screens/ask_screen/ask_screen.dart';
import 'package:selaty/presentation/screens/done_screen/done_screen.dart';
import 'package:selaty/presentation/screens/forget_password/forgot_passwordscreen.dart';
import 'package:selaty/presentation/screens/fruits/fruits_screen.dart';
import 'package:selaty/presentation/screens/home/home_screen.dart';
import 'package:selaty/presentation/screens/login_screen/login_screen.dart';
import 'package:selaty/presentation/screens/mainview/categories_screen/categories_screen.dart';
import 'package:selaty/presentation/screens/mainview/favorit_screen/favorit_screen.dart';
import 'package:selaty/presentation/screens/mainview/main_view1.dart';
import 'package:selaty/presentation/screens/mainview/mainview.dart';
import 'package:selaty/presentation/screens/mainview/profile_screen/profile_screen.dart';
import 'package:selaty/presentation/screens/onboardingview/onboarding_Screen.dart';
import 'package:selaty/presentation/screens/profile/cart/cart_screen%20.dart';
import 'package:selaty/presentation/screens/profile/my_requist.dart';
import 'package:selaty/presentation/screens/profile/track_order.dart';
import 'package:selaty/presentation/screens/register_screen/register_screen.dart';
import 'package:selaty/presentation/screens/shopping_cart/shopping_cart.dart';
import 'package:selaty/presentation/screens/splashview/splash_screen.dart';
import 'package:selaty/presentation/screens/verifycode/verfycode_number.dart';
import 'package:selaty/presentation/screens/verifynumber_screen/verifynumber_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case askScreen:
        return MaterialPageRoute(builder: (_) => const AskScreen());

      case loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

      case forgotPasswordScreen:
        return MaterialPageRoute(builder: (_) => ForgotPasswordScreen());
      case fruitsScreen:
        return MaterialPageRoute(builder: (_) => const FruitsScreen());
      case shoppingCart:
        return MaterialPageRoute(builder: (_) => const ShoppingCart());
      case categoriesScreen:
        return MaterialPageRoute(builder: (_) => const CategoriesScreen());
      case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case verifyPhoneNumberScreen:
        return MaterialPageRoute(builder: (_) => VerifyPhoneNumberScreen());
      case codeNumber:
        return MaterialPageRoute(builder: (_) => VerifyCodeNumber());
      case doneScreen:
        return MaterialPageRoute(builder: (_) => const Done());
      case mainView:
        return MaterialPageRoute(builder: (_) => const MainView());
      case mainView1:
        return MaterialPageRoute(builder: (_) => const MainView1());
      case my_Requist:
        return MaterialPageRoute(builder: (_) => const My_Requist());
      case profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case favorite:
        return MaterialPageRoute(builder: (_) => const FavoriteScreen());
      case trackOrder:
        return MaterialPageRoute(builder: (_) => const TrackOder());
      case cartScreen:
        return MaterialPageRoute(builder: (_) => const CartScreen());
    }
    return null;
  }
}
