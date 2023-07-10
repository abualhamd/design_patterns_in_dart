import '../entities/news_article.dart';
import '../models/news_articel_model.dart';

extension NewsAdapter on NewsArticleModel {
  NewsArticle toDomain() {
    return NewsArticle(
        title: title, date: date, imgUrl: imgUrl ?? 'default/image/path');
  }
}
