import 'package:coronavirus2020/features/call-center/data/models/callcenter.model.dart';

class CallCenterLocalData {
  Future<List<CallCenterModel>> getData() async {
    List<CallCenterModel> result = [
      CallCenterModel(
          label: "Министерство здравоохранения", contacts: ["1406"]),
      CallCenterModel(
          label: "Национальный центр общественного здравоохранения МЗ РК",
          contacts: ["+7(717)276 80 43", "Телеграм-бот: @kz_hls_bot"]),
      CallCenterModel(label: "Министерство юстиции:", contacts: [
        "+7(717)258 00 58",
        "+7(708)693 56 31",
      ]),
    ];

    return result;
  }
}
