import 'package:adapter_pattern/mapper/news_mapper.dart';
import 'package:adapter_pattern/models/news_articel_model.dart';

void main() {
  final newsArticleModel =
      NewsArticleModel(title: 'title', date: '15/3/2020', imgUrl: null);

  final newsArticleEntity = newsArticleModel.toDomain();

  print(newsArticleEntity.imgUrl);
}
