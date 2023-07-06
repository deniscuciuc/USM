void savePlayerRecord(Player player) {
  JSONObject json = loadJSONObject("recordList.json");

  JSONArray  sc = json.getJSONArray("scores");

  JSONObject foundPlayer = findPlayerByName(sc, player.getName());

  if (foundPlayer != null) {
    foundPlayer.setInt("score", player.getScore());
  } else {
    JSONObject nrec = new JSONObject();
    nrec.setString("name", player.name);
    nrec.setInt("score", player.score);
    sc.append(nrec);
  }
  saveJSONObject(json, "recordList.json");
}

JSONObject findPlayerByName(JSONArray sc, String findName) {
  for (int i = 0; i < sc.size(); i++) {
    JSONObject rec = sc.getJSONObject(i);
    String name = rec.getString("name");
    if (name == findName) return rec;
  }

  return null;
}


ArrayList<Player> loadPlayersRecords() {
  ArrayList<Player> result = new ArrayList<>();
  JSONObject json = loadJSONObject("recordList.json");
  JSONArray  sc = json.getJSONArray("scores");

  for (int i = 0; i < sc.size(); i++) {
    JSONObject rec = sc.getJSONObject(i);
    String name = rec.getString("name");
    int score = rec.getInt("score");
    Player p = new Player(name);
    p.setScore(score);
    result.add(p);
  }
  sortPlayerRecords(result);
  return result;
}