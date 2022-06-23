import 'mobx/index.dart';

part 'store.g.dart';

class MainStore = _MainStore with _$MainStore;

abstract class _MainStore with Store {
  @observable
  String value = 'test';

  @action
  Future<String?> updateValue() async {
    value = "NewValue";
    print('Updated...');
    return null;
  }
}
