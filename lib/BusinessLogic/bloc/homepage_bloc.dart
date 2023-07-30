import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Data/Models/homepage_model.dart';
import '../../Data/Repository/homepage_repo.dart';
part 'homepage_event.dart';
part 'homepage_state.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  late HomePageModel data;
  final HomePageRepo homePageRepo;

  HomepageBloc(this.homePageRepo) : super(HomepageInitial()) {
    on<HomepageEvent>((event, emit) async {
      if (event is SendData) {
        emit(HomepageLoading());
        await Future.delayed(const Duration(seconds: 3), () async {
          data = await homePageRepo.fetchDetails(event.name, event.job);
          emit(HomepageLoaded(data));
        });
      }
    });
  }
}
