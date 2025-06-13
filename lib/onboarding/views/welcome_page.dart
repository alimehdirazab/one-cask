part of 'views.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorTheme().primary,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image with zoom-in effect
          Transform.scale(
            scale: 1.2,
            child: Image.asset(AppImages.background, fit: BoxFit.cover),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 340,
                  margin: const EdgeInsets.only(bottom: 32),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 32,
                  ),
                  decoration: BoxDecoration(
                    color: AppColorTheme().primary,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Welcome!',
                        style: AppTextTheme().ebGaramondHeadingLargeText
                            .copyWith(color: AppColorTheme().white),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Text text text',
                        style: AppTextTheme().latoBodyLargeText.copyWith(
                          color: AppColorTheme().white,
                        ),
                      ),
                      const SizedBox(height: 24),
                      CustomElevatedButton(
                        title: 'Scan Bottle',
                        buttonColor: AppColorTheme().secondary,
                        fontColor: AppColorTheme().black,
                        width: double.infinity,
                        radius: 8,
                        onTap: () {},
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Have an account? ',
                            style: AppTextTheme().latoBodyText.copyWith(
                              color: AppColorTheme().white,
                            ),
                          ),
                          const SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Sign in first',
                              style: AppTextTheme().ebGaramondBodyText.copyWith(
                                color: AppColorTheme().secondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
