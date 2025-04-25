import '../models/question.dart';
import '../models/answer.dart';
import '../models/personality.dart';

final List<Question> questions = [
  Question(
    questionText: "How do you approach a difficult decision?",
    answers: [
      Answer(text: "Analyze all options logically", personality: PersonalityType.Thinker.name),
      Answer(text: "Go with what feels right emotionally", personality: PersonalityType.Feeler.name),
      Answer(text: "Make a checklist and plan it out", personality: PersonalityType.Planner.name),
      Answer(text: "Take a leap and deal with results later", personality: PersonalityType.Adventurer.name),
    ],
  ),
  Question(
    questionText: "What excites you the most?",
    answers: [
      Answer(text: "Solving complex problems", personality: PersonalityType.Thinker.name),
      Answer(text: "Connecting deeply with others", personality: PersonalityType.Feeler.name),
      Answer(text: "Creating a clear path to your goals", personality: PersonalityType.Planner.name),
      Answer(text: "Exploring something new", personality: PersonalityType.Adventurer.name),
    ],
  ),
  
  Question(
    questionText: "What excites you the most?",
    answers: [
      Answer(text: "Solving complex problems", personality: PersonalityType.Thinker.name),
      Answer(text: "Connecting deeply with others", personality: PersonalityType.Feeler.name),
      Answer(text: "Creating a clear path to your goals", personality: PersonalityType.Planner.name),
      Answer(text: "Exploring something new", personality: PersonalityType.Adventurer.name),
    ],
  ),
  Question(
    questionText: "Which best describes your work style?",
    answers: [
      Answer(text: "Detail-focused and logical", personality: PersonalityType.Thinker.name),
      Answer(text: "People-centered and intuitive", personality: PersonalityType.Feeler.name),
      Answer(text: "Organized and systematic", personality: PersonalityType.Planner.name),
      Answer(text: "Flexible and spontaneous", personality: PersonalityType.Adventurer.name),
    ],
  ),
  Question(
    questionText: "How do you recharge after a long day?",
    answers: [
      Answer(text: "Quiet reflection or reading", personality: PersonalityType.Thinker.name),
      Answer(text: "Spending time with close friends", personality: PersonalityType.Feeler.name),
      Answer(text: "Planning tomorrow's tasks", personality: PersonalityType.Planner.name),
      Answer(text: "Doing something active or exciting", personality: PersonalityType.Adventurer.name),
    ],
  ),
  Question(
    questionText: "You're most comfortable when...",
    answers: [
      Answer(text: "Things make logical sense", personality: PersonalityType.Thinker.name),
      Answer(text: "Everyone is getting along", personality: PersonalityType.Feeler.name),
      Answer(text: "There's a clear structure", personality: PersonalityType.Planner.name),
      Answer(text: "You're free to try new things", personality: PersonalityType.Adventurer.name),
    ],
  ),
  Question(
    questionText: "Your biggest strength is...",
    answers: [
      Answer(text: "Thinking critically", personality: PersonalityType.Thinker.name),
      Answer(text: "Empathizing with others", personality: PersonalityType.Feeler.name),
      Answer(text: "Staying organized", personality: PersonalityType.Planner.name),
      Answer(text: "Being adventurous", personality: PersonalityType.Adventurer.name),
    ],
  ),
];


