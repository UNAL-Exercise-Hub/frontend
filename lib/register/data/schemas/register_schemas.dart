const String registerQuery = """
              mutation RegisterUser(\$nombres: String, \$apellidos: String,\$fechaNacimiento: String, \$sexo: String, \$cel: Float, \$userEmail: String, \$userPassword: String) {
                registerUser(nombres: \$nombres, apellidos: \$apellidos, fecha_nacimiento: \$fechaNacimiento, sexo: \$sexo, cel: \$cel, email: \$userEmail, password: \$userPassword) {
                  message
                }
              }
            """;