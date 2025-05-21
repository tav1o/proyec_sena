import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeSearchPressed>((event, emit) async {
      emit(HomeLoadInProgress());
      final url = Uri.parse(
        'https://run.mocky.io/v3/085d585e-960b-4de2-ad77-9b0c9eb29025',
      );
      final response = await http.get(url);
      if (response.statusCode == 200) {
        emit(HomeLoadSuccess());
      } else {
        emit(HomeLoadFailure());
      }

    });
  }
}
