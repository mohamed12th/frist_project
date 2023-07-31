class LoginStates{}

class LoginLoadingState extends LoginStates {}
class LoginSuccessStata extends LoginStates {
  final String masg ;

  LoginSuccessStata({required this.masg});
}
class LogunFailedState extends LoginStates {
  final String masg ;

  LogunFailedState({required this.masg});

}