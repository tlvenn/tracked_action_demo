// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainStore on _MainStore, Store {
  late final _$valueAtom = Atom(name: '_MainStore.value', context: context);

  @override
  String get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(String value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$updateValueTrackedAction = TrackedAction.createNoParam(
      () => super.updateValue(),
      name: '_MainStore.updateValue');
  TrackedActionStatus get updateValueStatus =>
      _$updateValueTrackedAction.status;

  @override
  Future<String?> updateValue() async => _$updateValueTrackedAction.execute();

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
