import 'package:my_web_porto/resources/colors/app_colors.dart';
import 'package:my_web_porto/resources/dummy/app_dummy.dart';
import 'package:my_web_porto/resources/images/app_images.dart';
import 'package:my_web_porto/resources/theme/app_theme.dart';

abstract class Resource {
  static final AppColors appColors = AppColors();
  static final AppTheme appTheme = AppTheme();
  static final AppImages appImages = AppImages();
  static final AppDummy appDummy = AppDummy();
}
