import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibuddy/core/bloc/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
    LoginCubit() : super(StateInitial());
}