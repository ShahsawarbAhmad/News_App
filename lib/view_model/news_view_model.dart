import 'package:my_news_app/models/categories_news_model.dart';
import 'package:my_news_app/models/news_channel_headlines_model.dart';
import 'package:my_news_app/repository/news_repository.dart';

class NewsViewModel {
  final _rep = NewsRespository();

  Future<NewsChannelHeadlinesModel> fetchNewsChannelHeadlinesApi(
      String channelName) async {
    final response = await _rep.fetchNewsChannelHeadlinesApi(channelName);

    return response;
  }

  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String channelName) async {
    final response = await _rep.fetchCategoriesNewsApi(channelName);

    return response;
  }
}
