import 'package:bloc/bloc.dart';
import 'package:bwa_flutix/services/services.dart';
import 'package:equatable/equatable.dart';
import 'package:bwa_flutix/models/models.dart' as model;

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<LoadUser>((event, emit) async {
      model.User user = await UserServices.getUser(event.id);
      emit(UserLoaded(user));
    });

    on<SignOut>((event, emit) => {
          emit(UserInitial()),
        });
  }
}
