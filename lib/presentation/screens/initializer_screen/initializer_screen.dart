import 'package:lottie/lottie.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../widgets/spacer.dart';
import '../../export.dart';

class InitializerScreen extends StatefulWidget {
  const InitializerScreen({Key? key}) : super(key: key);

  @override
  State<InitializerScreen> createState() => _InitializerScreenState();
}

class _InitializerScreenState extends State<InitializerScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => context.read<InitializerBloc>().add(
            NavigateToHome(),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    initializeResources(context: context);
    return BlocConsumer<InitializerBloc, InitializerState>(
      listener: (context, state) {
        switch (state.status) {
          case InitializerStatus.navigateToHome:
            Navigator.pushReplacementNamed(
              context,
              AppRoutes.homeScreen,
            );
            break;
          default:
            break;
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: ColorName.primaryColor.withOpacity(0.8),
          key: _scaffoldKey,
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset(
                  Assets.lottie.flutterAnimation,
                  width: sizes.widthRatio*100,
                  height: sizes.heightRatio*100,
                  fit: BoxFit.cover,
                ),
                verticalSpacer(20),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3.5,
                  child: LinearProgressIndicator(
                    color: ColorName.primaryColor.withOpacity(0.8),
                    backgroundColor: ColorName.colorYellow,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
