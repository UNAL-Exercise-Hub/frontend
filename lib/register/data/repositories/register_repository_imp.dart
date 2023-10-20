import 'package:front_end_unworkout/base/graphql/graphql_config.dart';
import 'package:front_end_unworkout/register/data/schemas/register_schemas.dart';
import 'package:front_end_unworkout/register/domain/repositories/register_repository.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RegisterRepositoryImp implements IRegisterRepository {

  static GraphQLConfig graphQLConfig = GraphQLConfig();
  GraphQLClient client = graphQLConfig.clientToQuery();

  @override
  Future<void> register(int id_usuario, String nombres, String apellidos, String fecha_nacimiento, String sexo, BigInt cel, String email, String password) async {
    try {
      await client.query(QueryOptions(
          document: gql(registerQuery),
          fetchPolicy: FetchPolicy.noCache,
          variables: {
            "id_usuario": id_usuario,
            "nombres": nombres,
            "apellidos": apellidos,
            "fecha_nacimiento": fecha_nacimiento,
            "sexo": sexo,
            "cel": cel,
            "email": email,
            "password": password
          }
          ,
          pollInterval: const Duration(seconds: 10)));
    } catch (e){
      throw Exception("Fallo en el registro");
    }
  }
}