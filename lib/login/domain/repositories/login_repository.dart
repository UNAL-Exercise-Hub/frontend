abstract class ILoginRepository{
   Future<void> login(String email, String password);
}