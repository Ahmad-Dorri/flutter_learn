import 'package:langeek_flutter/data/data.dart';
import 'package:langeek_flutter/data/services/api_result.dart';
import 'package:langeek_flutter/data/services/repositories/base_api_repository.dart';

class SubcategoryRepository extends BaseApiRepository {
  SubcategoryRepository({required super.dioClient});

  Future<ApiResult<Subcategory>> fetchSubcategory(int subcategoryId) async {
    return requestServer(
      'en/subcategory/$subcategoryId',
      (dataFromServer) {
        return Subcategory.fromJson(dataFromServer);
      },
    );
  }
}
