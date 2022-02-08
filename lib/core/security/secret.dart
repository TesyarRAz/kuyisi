class Secret {
  final String supabaseUrl;
  final String supabaseKey;

  Secret({
    required this.supabaseUrl,
    required this.supabaseKey,
  });

  factory Secret.fromJson(Map<String, dynamic> map) {
    return Secret(
      supabaseUrl: map["SUPABASE_URL"],
      supabaseKey: map["SUPABASE_KEY"],
    );
  }
}
