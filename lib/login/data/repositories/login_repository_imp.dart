import 'package:front_end_unworkout/base/graphql/graphql_config.dart';
import 'package:front_end_unworkout/login/data/schemas/login_schemas.dart';
import 'package:front_end_unworkout/login/domain/repositories/login_repository.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class LoginRepositoryImp implements ILoginRepository {

  static GraphQLConfig graphQLConfig = GraphQLConfig();
  GraphQLClient client = graphQLConfig.clientToQuery();

  @override
  Future<void> login(String email, String password) async {
    try {
      await client.query(QueryOptions(
          document: gql(loginQuery),
          fetchPolicy: FetchPolicy.noCache,
          variables: {"email": email, "password": password},
          pollInterval: const Duration(seconds: 10)));
    } catch (e) {
      throw Exception("Error en el ingreso");
    }
  }
}
