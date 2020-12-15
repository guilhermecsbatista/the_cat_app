import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:the_cat_app/app/shared/models/response_model.dart';
import 'package:the_cat_app/app/shared/repositories/thecatbackend_repository.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  final TheCatBackendRepository repository;

  _HomeControllerBase(this.repository) {
    fetGetBreeds();
  }

  @observable
  ResponseModel response;

  @observable
  bool loading = true;

  @observable
  int currentIndicator = 0;
  
  @action
  Future<void> fetGetBreeds() async {
    try {
      loading = true;
      response = await this.repository.fetchGet();
    } catch (error) {
      response.breeds = [];
    }
    loading = false;
  }

  @action
  changeCurrentIndicator(value) => currentIndicator = value;
}
