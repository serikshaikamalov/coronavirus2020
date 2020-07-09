import 'package:coronavirus2020/features/prevention/data/models/instruction.model.dart';

class PreventionLocalDataSource {
  Future<List<InstructionModel>> getData() async {
    List<InstructionModel> result = [
      InstructionModel(title: 'Закрывайте рот и нос при чихании и кашле'),
      InstructionModel(
          title:
              'Антисептиками и мылой с водой обрабатывайте руки и поверхности'),
      InstructionModel(title: 'Щеки, рот и нос закрывайте медицинской маской'),
      InstructionModel(
          title: 'Избегайте людных мест и контактов с больными людьми'),
      InstructionModel(
          title:
              'Только врач может поставить диагноз - вызовите врача, если заболели'),
      InstructionModel(
          title: 'Используйте индивидуальные средства личной гигиены'),
    ];

    return result;
  }
}
