import 'package:bloc/bloc.dart';
import 'package:bwa_flutix/models/models.dart';
import 'package:equatable/equatable.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(OnInitialPage()) {
    on<GoToSplashPage>((event, emit) {
      emit(OnSplashPage());
    });

    on<GoToLoginPage>((event, emit) {
      emit(OnLoginPage());
    });

    on<GoToMainPage>((event, emit) {
      emit(OnMainPage());
    });

    on<GoToRegistrationPage>((event, emit) {
      emit(OnRegistrationPage(event.registrationData));
    });

    on<GoToPreferencePage>((event, emit) {
      emit(OnPreferencePage(event.registrationData));
    });

    on<GoToAccountConfirmationPage>((event, emit) {
      emit(OnAccountConfirmationPage(event.registrationData));
    });
  }
}
