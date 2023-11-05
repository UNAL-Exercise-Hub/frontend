import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLConfig {
  static HttpLink httpLink = HttpLink('http://localhost:8080/graphql');

  GraphQLClient clientToQuery() => GraphQLClient(
        link: httpLink,
        cache: GraphQLCache(),
      );
}
