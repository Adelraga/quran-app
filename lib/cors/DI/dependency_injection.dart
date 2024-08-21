// import 'package:dio/dio.dart';
// import 'package:get_it/get_it.dart';
// import 'package:movie_app/cors/DI/dio_factory_logger.dart';


// final getIt = GetIt.instance;
// void initGetIt() {
//   Dio dio = DioFactory.getDio();
//   // singleton is the used of method we take acopy of it many times so we make it one time and reused it  /// here a singleton for apiservice
//   getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

//   /// here a singleton for apiservice

//   // TOP Rated
//   getIt.registerLazySingleton<TopRatedCubit>(() => TopRatedCubit(getIt()));
//   getIt.registerLazySingleton<MyRepo>(() => MyRepo(getIt()));

//   //categorylist
//   getIt.registerLazySingleton<CategoryListCubit>(
//       () => CategoryListCubit(getIt()));
//   getIt
//       .registerLazySingleton<CategoryListRepo>(() => CategoryListRepo(getIt()));
//   //character list
//   getIt.registerLazySingleton<CharactersListCubit>(
//       () => CharactersListCubit(getIt()));
//   getIt
//       .registerLazySingleton<CharacterListRepo>(() => CharacterListRepo(getIt()));
//   //character Details
//   getIt.registerLazySingleton<CharacterDetailCubit>(
//       () => CharacterDetailCubit(getIt()));
//   getIt
//       .registerLazySingleton<CharacterDetailRepo>(() => CharacterDetailRepo(getIt()));
  
//   // // movies with category
//   // getIt.registerLazySingleton<MoviesWithCategoryCubit>(
//   //     () => MoviesWithCategoryCubit(getIt()));
//   // getIt
//   //     .registerLazySingleton<MoviesWithCategoryRepo>(() => MoviesWithCategoryRepo(getIt()));
// }
