
import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US' : {
      'Name' : 'Shahab Mustafa',
      // 'age' : '18',
      'Occupation' : 'Developer',
    },
    'ur_PK' : {
      'Name' : 'شہاب مصطفی',
      // 'age' : '18',
      'Occupation' : 'ڈویلپر',
    }
  };

}