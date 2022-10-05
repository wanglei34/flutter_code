/**
 * 主题Model
 * Create by Songlcy
 */
import 'package:scoped_model/scoped_model.dart';

class ThemeStateModel extends Model {
  late int? _themeIndex = 0;
  get themeIndex => _themeIndex;

  void changeTheme(int themeIndex) async {
    _themeIndex = themeIndex;
    notifyListeners();
  }
}
