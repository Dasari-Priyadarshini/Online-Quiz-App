import java.util.*;

public class QuizApp {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // List of quiz questions
        List<QuizQuestion> quiz = new ArrayList<>();
        quiz.add(new QuizQuestion(
                "Which language is used for Android development?",
                new String[]{"Java", "Python", "C#", "Ruby"},
                0));

        quiz.add(new QuizQuestion(
                "Which company developed Java?",
                new String[]{"Microsoft", "Apple", "Sun Microsystems", "Google"},
                2));

        quiz.add(new QuizQuestion(
                "Which keyword is used to inherit a class in Java?",
                new String[]{"this", "extends", "implements", "import"},
                1));

        int score = 0;

        // Quiz loop
        for (QuizQuestion q : quiz) {
            q.displayQuestion();
            System.out.print("Enter your answer (1-4): ");
            int userAnswer = sc.nextInt();

            if (q.isCorrect(userAnswer)) {
                System.out.println("Correct!\n");
                score++;
            } else {
                System.out.println("Wrong!\n");
            }
        }

        // Final score
        System.out.println("Quiz Finished!");
        System.out.println("Your Score: " + score + "/" + quiz.size());

        sc.close();
    }
}
