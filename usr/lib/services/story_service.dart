import 'dart:async';

class StoryService {
  /// Simulates analyzing an image and generating a story.
  /// In a real app, this would upload the image to Supabase Storage
  /// and trigger an Edge Function to call OpenAI/Gemini.
  Future<String> generateStory(String imagePath) async {
    // SIMULATION: Artificial delay to mimic network request/AI processing
    await Future.delayed(const Duration(seconds: 2));

    // MOCK RESPONSE:
    // Since we can't actually see the image in this demo environment,
    // we return a random story from a predefined list to demonstrate the UI.
    
    final List<String> mockStories = [
      "A solitary coffee cup sits steaming on the wooden table. The aroma of roasted beans fills the morning air, promising a fresh start. Today is full of possibilities.",
      "Sunlight filters through the dense canopy of the ancient forest. Birds sing a melody of freedom as the leaves dance in the breeze. Nature's peace is timeless.",
      "The city skyline glows under the twilight sky. Cars streak by like comets, carrying dreamers to their destinations. The night is just beginning.",
      "A playful puppy chases its tail in the green grass. Laughter echoes nearby as simple joys take center stage. Happiness is found in the little moments.",
      "Old books stack high, whispering secrets of the past. Dust motes float in the shaft of light, marking the passage of time. Every page holds a new adventure."
    ];

    return mockStories[DateTime.now().second % mockStories.length];
  }
}
