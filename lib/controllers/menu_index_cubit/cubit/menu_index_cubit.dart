import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'menu_index_state.dart';

class MenuIndexCubit extends Cubit<MenuIndexState> {
  MenuIndexCubit()
      : super(
          const MenuIndexState(
            index: 0,
          ),
        );

  void updateIndex(int index) {
    emit(
      MenuIndexState(
        index: index,
      ),
    );
  }
}
