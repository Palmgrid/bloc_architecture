import 'package:bloc_architecture/presentation/bloc/home_screen_bloc/export.dart';
import 'package:bloc_architecture/widgets/spacer.dart';

import '../../../gen/colors.gen.dart';
import '../../export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<HomeScreenBloc, HomeScreenState>(
              builder: (context, state) {
                return Text(
                  state.counter.toString(),
                  style: TextStyle(
                    fontSize: sizes.fontRatio * 18,
                    color: ColorName.black,
                    fontWeight: FontWeight.w300,
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalValue(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FloatingActionButton(
              heroTag: 'button_add',
              elevation: 10,
              backgroundColor: ColorName.colorYellow,
              onPressed: () => context.read<HomeScreenBloc>().add(
                    IncrementEvent(
                      counter: context.read<HomeScreenBloc>().state.counter + 1,
                    ),
                  ),
              child: const Icon(
                Icons.add,
                color: ColorName.white,
              ),
            ),
            horizontalSpacer(16),
            FloatingActionButton(
              heroTag: 'button_subtract',
              elevation: 10,
              backgroundColor: ColorName.colorRed,
              onPressed: () => context.read<HomeScreenBloc>().add(
                    DecrementEvent(
                      counter: context.read<HomeScreenBloc>().state.counter - 1,
                    ),
                  ),
              child: const Icon(
                Icons.remove,
                color: ColorName.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
