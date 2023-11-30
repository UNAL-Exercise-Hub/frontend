const String loginQuery = """
              query Query(\$password: String, \$email: String) {
                loginUser(password: \$password, email: \$email) {
                  token
                  error
                }
              }
            """;