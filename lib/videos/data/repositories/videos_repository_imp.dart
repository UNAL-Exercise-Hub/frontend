import 'package:front_end_unworkout/base/graphql/graphql_config.dart';
import 'package:front_end_unworkout/videos/data/schemas/videos_schemas.dart';
import 'package:front_end_unworkout/videos/domain/repositories/videos_repository.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class VideosRepositoryImp implements IVideosRepository {
  static GraphQLConfig graphQLConfig = GraphQLConfig();
  GraphQLClient client = graphQLConfig.clientToQuery();

  @override
  Future<void> videos(int id) async {
    try {
      await client.query(QueryOptions(
          document: gql(videosQuery),
          fetchPolicy: FetchPolicy.noCache,
          variables: {"id": id},
          pollInterval: const Duration(seconds: 10)));
    } catch (e) {
      throw Exception("Error al obtener video");
    }
  }
}
