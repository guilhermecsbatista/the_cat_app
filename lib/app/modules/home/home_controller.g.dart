// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(i<TheCatBackendRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$responseAtom = Atom(name: '_HomeControllerBase.response');

  @override
  ResponseModel get response {
    _$responseAtom.reportRead();
    return super.response;
  }

  @override
  set response(ResponseModel value) {
    _$responseAtom.reportWrite(value, super.response, () {
      super.response = value;
    });
  }

  final _$loadingAtom = Atom(name: '_HomeControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$currentIndicatorAtom =
      Atom(name: '_HomeControllerBase.currentIndicator');

  @override
  int get currentIndicator {
    _$currentIndicatorAtom.reportRead();
    return super.currentIndicator;
  }

  @override
  set currentIndicator(int value) {
    _$currentIndicatorAtom.reportWrite(value, super.currentIndicator, () {
      super.currentIndicator = value;
    });
  }

  final _$fetGetBreedsAsyncAction =
      AsyncAction('_HomeControllerBase.fetGetBreeds');

  @override
  Future<void> fetGetBreeds() {
    return _$fetGetBreedsAsyncAction.run(() => super.fetGetBreeds());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic changeCurrentIndicator(dynamic value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeCurrentIndicator');
    try {
      return super.changeCurrentIndicator(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
response: ${response},
loading: ${loading},
currentIndicator: ${currentIndicator}
    ''';
  }
}
