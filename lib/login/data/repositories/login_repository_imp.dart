import 'package:front_end_unworkout/base/graphql/graphql_config.dart';
import 'package:front_end_unworkout/login/data/schemas/login_schemas.dart';
import 'package:front_end_unworkout/login/domain/repositories/login_repository.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class LoginRepositoryImp implements ILoginRepository {

  static GraphQLConfig graphQLConfig = GraphQLConfig();
  GraphQLClient client = graphQLConfig.clientToQuery();

  @override
  Future<void> login(String email, String password) async {
    //try {
      final repoResult = await client.query(QueryOptions(
          document: gql(loginQuery),
          fetchPolicy: FetchPolicy.noCache,
          variables: {"email": email, "password": password},
          pollInterval: const Duration(seconds: 10)));
     /* print("object");
      print("object00");
    } catch (e){
      print(e);
    }
    print("hola");*/
    if(repoResult.hasException){
      print("Error consultando");
      print(repoResult.exception.toString());
    }
    print(repoResult.data);
  }
}