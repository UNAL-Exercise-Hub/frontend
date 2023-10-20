import 'package:front_end_unworkout/base/graphql/graphql_config.dart';
import 'package:front_end_unworkout/routines/data/schemas/routine_schemas.dart';
import 'package:front_end_unworkout/routines/domain/reposittories/routine_repository.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RoutineRepositoryImp implements IRoutineRepository {

  static GraphQLConfig graphQLConfig = GraphQLConfig();
  GraphQLClient client = graphQLConfig.clientToQuery();

  @override
  Future<void> getRoutine(int ID) async {
    try {
      await client.query(QueryOptions(
          document: gql(getRoutineQuery),
          fetchPolicy: FetchPolicy.noCache,
          variables: {
            "id_usuario": ID
          }
          ,
          pollInterval: const Duration(seconds: 10)));
    } catch (e){
      throw Exception("Fallo buscando la rutina");
    }
  }

}