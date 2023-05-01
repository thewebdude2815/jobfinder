import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:jobfinder/screens/account/follower.dart';
import 'package:jobfinder/screens/account/posts.dart';
import 'package:jobfinder/screens/account/profile.dart';
import 'package:jobfinder/screens/account/searchUser.dart';
import 'package:jobfinder/screens/account/settings.dart';
import 'package:jobfinder/screens/apply_jobs/apply_jobs.dart';
import 'package:jobfinder/screens/auth/forgot_password/forgot_password.dart';
import 'package:jobfinder/screens/auth/signup/signup.dart';
import 'package:jobfinder/screens/auth/verification_code/verification_code.dart';
import 'package:jobfinder/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:jobfinder/screens/browse/browse2.dart';
import 'package:jobfinder/screens/browse/browse3.dart';
import 'package:jobfinder/screens/browse/browse4.dart';
import 'package:jobfinder/screens/browse/categories.dart';
import 'package:jobfinder/screens/browse/search.dart';
import 'package:jobfinder/screens/choose_language/choose_language.dart';
import 'package:jobfinder/screens/choose_location/choose_location.dart';
import 'package:jobfinder/screens/company_details/company_details.dart';
import 'package:jobfinder/screens/filter/filter.dart';
import 'package:jobfinder/screens/job_details/job_details1.dart';
import 'package:jobfinder/screens/job_details/job_details2.dart';
import 'package:jobfinder/screens/jobs/applied_jobs_details.dart';
import 'package:jobfinder/screens/jobs/jobs.dart';
import 'package:jobfinder/screens/messages/messages_details.dart';
import 'package:jobfinder/screens/onboarding/onboarding.dart';
import 'package:jobfinder/screens/onboarding/onboarding2.dart';
import 'package:jobfinder/screens/onboarding/onboarding3.dart';
import 'package:jobfinder/screens/select_option/select_option.dart';
import 'package:jobfinder/screens/auth/signin/signin.dart';
import 'package:jobfinder/screens/splash/splash.dart';
import 'package:jobfinder/screens/start_information/interests.dart';
import 'package:jobfinder/screens/start_information/personal_info/education.dart';
import 'package:jobfinder/screens/start_information/personal_info/experience.dart';
import 'package:jobfinder/screens/start_information/personal_info/job_preferences.dart';
import 'package:jobfinder/screens/start_information/personal_info/location.dart';
import 'package:jobfinder/screens/start_information/personal_info/personal_info.dart';
import 'package:jobfinder/screens/start_information/set_location.dart';

class Routes {
  static String splashRoute = '/';
  static String onboardingRoute = '/onboarding-one';
  static String onboardingRoute2 = '/onboarding-two';
  static String onboardingRoute3 = '/onboarding-three';
  static String selectOptionRoute = '/select-option';
  static String siginRoute = '/signin';
  static String forgotPasswordRoute = '/forgot-password';
  static String sigupRoute = '/signup';
  static String verifyRoute = '/verify';
  static String setLocationRoute = '/set-location';
  static String personalInfoRoute = '/personal-info';
  static String educationRoute = '/education';
  static String experienceRoute = '/experience';
  static String interestsRoute = '/interests';
  static String locationRoute = '/location';
  static String jobPreferenceRoute = '/jobPreference';
  static String bottomNavBarRoute = '/bottomNavBar';
  static String appliedJobDetailRoute = '/applied-job-detail';
  static String settingsRoute = '/settings';
  static String messageDetailsRoute = '/messageDetails';
  static String browse2Route = '/browse2';
  static String browse3Route = '/browse3';
  static String browse4Route = '/browse4';
  static String chooseLocationRoute = '/chooseLocation';
  static String chooseLanguageRoute = '/chooseLanguage';
  static String categoriesRoute = '/categories';
  static String searchRoute = '/search';
  static String companyDetailsRoute = '/company_details';
  static String jobsRoute = '/jobs';
  static String applyJobsRoute = '/applyJobs';
  static String jobDetails1Route = '/jobDetails1';
  static String jobDetails2Route = '/jobDetails2';
  static String postsRoute = '/posts';
  static String searchUserRoute = '/searchUser';
  static String followerRoute = '/follower';
  static String profileRoute = '/profile';
  static String filterRoute = '/filter';

  static List<GetPage> getPages = [
    GetPage(
      name: splashRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: onboardingRoute,
      page: () => const OnBoarding(),
    ),
    GetPage(
      name: onboardingRoute2,
      page: () => const OnBoarding2(),
    ),
    GetPage(
      name: onboardingRoute3,
      page: () => const OnBoarding3(),
    ),
    GetPage(
      name: selectOptionRoute,
      page: () => const SelectOption(),
    ),
    GetPage(
      name: siginRoute,
      page: () => const Signin(),
    ),
    GetPage(
      name: forgotPasswordRoute,
      page: () => const ForgotPassword(),
    ),
    GetPage(
      name: sigupRoute,
      page: () => const Signup(),
    ),
    GetPage(
      name: verifyRoute,
      page: () => const VerificationCode(),
    ),
    GetPage(
      name: setLocationRoute,
      page: () => const SetLocation(),
    ),
    GetPage(
      name: personalInfoRoute,
      page: () => const PersonalInformation(),
    ),
    GetPage(
      name: educationRoute,
      page: () => const Education(),
    ),
    GetPage(
      name: experienceRoute,
      page: () => const Experience(),
    ),
    GetPage(
      name: locationRoute,
      page: () => const Location(),
    ),
    GetPage(
      name: jobPreferenceRoute,
      page: () => const JobPreferences(),
    ),
    GetPage(
      name: bottomNavBarRoute,
      page: () => const MainBottomNavBarScreen(),
    ),
    GetPage(
      name: jobsRoute,
      page: () => const Jobs(),
    ),
    GetPage(
      name: appliedJobDetailRoute,
      page: () => const AppliedJobsDetails(),
    ),
    GetPage(
      name: settingsRoute,
      page: () => const Settings(),
    ),
    GetPage(
      name: messageDetailsRoute,
      page: () => const MessagesDetails(),
    ),
    GetPage(
      name: browse2Route,
      page: () => const Browse2(),
    ),
    GetPage(
      name: browse3Route,
      page: () => const Browse3(),
    ),
    GetPage(
      name: browse4Route,
      page: () => const Browse4(),
    ),
    GetPage(
      name: categoriesRoute,
      page: () => const Categories(),
    ),
    GetPage(
      name: searchRoute,
      page: () => const Search(),
    ),
    GetPage(
      name: companyDetailsRoute,
      page: () => const CompanyDetails(),
    ),
    GetPage(
      name: applyJobsRoute,
      page: () => const AppliedJobs(),
    ),
    GetPage(
      name: jobDetails1Route,
      page: () => const JobDetails1(),
    ),
    GetPage(
      name: jobDetails2Route,
      page: () => const JobDetails2(),
    ),
    GetPage(
      name: chooseLocationRoute,
      page: () => const ChooseLocation(),
    ),
    GetPage(
      name: chooseLanguageRoute,
      page: () => const ChooseLanguage(),
    ),
    GetPage(
      name: postsRoute,
      page: () => const Posts(),
    ),
    GetPage(
      name: searchUserRoute,
      page: () => const SearchUser(),
    ),
    GetPage(
      name: followerRoute,
      page: () => const Followers(),
    ),
    GetPage(
      name: profileRoute,
      page: () => const Profile(),
    ),
    GetPage(
      name: filterRoute,
      page: () => const Filter(),
    ),
    GetPage(
      name: interestsRoute,
      page: () => const Interests(),
    ),
  ];
}
