import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/doc_model.dart';
import '../services/api_service.dart';

final DocDataProvider = FutureProvider<DocModel>((ref) async {
  return ref.watch(DocProvider).getDoctors();
});
