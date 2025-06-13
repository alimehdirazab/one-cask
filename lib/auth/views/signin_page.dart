part of 'views.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorTheme().primary,
      appBar: AppBar(
        leading: Icon(AppIcons().backArrow, color: AppColorTheme().grey),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Text(
              'Sign in',
              style: AppTextTheme().ebGaramondHeadingLargeText.copyWith(
                color: AppColorTheme().white,
              ),
            ),
            const SizedBox(height: 24),
            CustomTextField(labelText: 'Email'),
          ],
        ),
      ),
    );
  }
}
