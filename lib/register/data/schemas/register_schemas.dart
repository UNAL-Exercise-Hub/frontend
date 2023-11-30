const String registerQuery = """
              mutation Mutation(\$email: String, \$password: String, \$nombres: String, \$apellidos: String, \$fechaNacimiento: String, \$sexo: String, \$cel: String) {
                registerUser(email: \$email, password: \$password, nombres: \$nombres, apellidos: \$apellidos, fecha_nacimiento: \$fechaNacimiento, sexo: \$sexo, cel: \$cel) {
                  message
                }
              }
            """;