const String getRoutineQuery = """
                                query RoutineUser(\$id: ID!) {
                                  routineUser(ID: \$id) {
                                    _id
                                    dias_semana {
                                      Duracion_Max
                                      Hora_inicio
                                      _id
                                      dia
                                      ejercicios
                                    }
                                    promedio
                                    usuario_id
                                  }
                                }
                              """;