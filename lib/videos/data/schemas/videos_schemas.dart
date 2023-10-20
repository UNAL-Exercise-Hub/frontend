const String videosQuery = """
            query VideoByID(\$id: ID!) {
              videoByID(ID: \$id) {
                ID
                Imagen
                Link
                Series
                Titulo
                Duracion
              }
            }
""";
