import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/news.dart';
import '../../model/result.dart';
import '../../provider/news_repository_provider.dart';
import '../../repository/news_repository.dart';

final homeViewModelProvider = ChangeNotifierProvider(
    (ref) => HomeViewModel(ref.read(newsRepositoryProvider)));

class HomeViewModel extends ChangeNotifier {
  HomeViewModel(this._repository);

  final NewsRepository _repository;

  // Result use case No.1
  Result<News>? _news;

  Result<News>? get news => _news;

  Future<void> fetchNews() {
    return _repository
        .getNews()
        .then((value) => _news = value)
        .whenComplete(notifyListeners);
  }
}
