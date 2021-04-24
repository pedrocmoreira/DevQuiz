import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/models/answer_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';

import '../core/app_images.dart';

class HomeController {
// O home controller vai abordar o usuário e os Quizzes

  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: "Pedro Moreira",
      photoUrl: "https://avatars.githubusercontent.com/u/40441565?v=4",
    );

    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        questions: [
          QuestionModel(
            title: "Está Curtindo o Flutter?",
            answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Amando Flutter"),
              AnswerModel(title: "Flutter é legal"),
              AnswerModel(title: "Show de bola!", isRight: true),
            ],
          )
        ],
        imagem: AppImages.blocks,
        level: Level.facil,
      )
    ];

    state = HomeState.success;
  }
}
