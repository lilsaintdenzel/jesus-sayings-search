# Streamline Categories and Themes
# Consolidate similar categories and themes into a cleaner, more organized system

alias JesusSayingsSearch.Sayings.Saying

IO.puts("Starting to streamline categories and themes...")

# Define streamlined category mappings
category_mappings = %{
  # Consolidate commands and instructions
  "Command" => ["Command", "Instruction", "Commission"],
  "Teaching" => ["Teaching", "Statement", "Evidence", "Revelation"],
  "Question" => ["Question"],
  "Promise" => ["Promise"],
  "Warning" => ["Warning", "Rebuke"],
  "Healing" => ["Healing"],
  "Parable" => ["Parable"],
  "Prayer" => ["Prayer", "Confession"],
  "Prophecy" => ["Prophecy"],
  "Blessing" => ["Blessing", "Praise"],
  "Declaration" => ["Declaration", "Proclamation"],
  "Response" => ["Response", "Defense", "Affirmation"],
  "Comfort" => ["Comfort", "Invitation"],
  "Challenge" => ["Challenge", "Call"],
  "Lament" => ["Lament", "Cry", "Indictment"]
}

# Define streamlined theme mappings (consolidating 380 themes into ~50 core themes)
theme_mappings = %{
  # Core Themes
  "Faith" => ["Faith", "Faith and Peace", "Faith and Possibility", "Great Faith", "Faithful Service"],
  "Love" => ["Love", "Love for God", "Love for Others", "Love for Enemies", "Love and Forgiveness", "Love Your Neighbor", "Love Growing Cold", "Love Proportional to Forgiveness"],
  "Kingdom of Heaven" => ["Kingdom of Heaven", "Kingdom of God", "Kingdom Entry", "Kingdom Greatness", "Kingdom Power", "Kingdom Priority", "Kingdom Readiness", "Kingdom Transfer"],
  "Forgiveness" => ["Forgiveness", "Authority to Forgive", "Call to Repentance", "Repentance"],
  "Prayer" => ["Prayer", "Lord's Prayer"],
  "Discipleship" => ["Discipleship", "Cross-bearing", "Following Jesus", "Call"],
  "Salvation" => ["Salvation", "Eternal Life", "Born Again", "Salvation's Origin"],
  "Authority" => ["Authority", "Divine Authority", "Authority to Forgive", "Son of Man Authority", "Judgment Authority"],
  "Service" => ["Service", "Servant Leadership", "Service to Others", "Service to Christ", "Service and Sacrifice"],
  "Sacrifice" => ["Sacrifice", "Ransom", "Crucifixion", "Blood of Covenant", "Burial Preparation"],
  
  # Character and Virtue Themes
  "Humility" => ["Humility", "Humility and Exaltation", "Childlike Faith", "Greatness through Service"],
  "Mercy" => ["Mercy", "Compassion", "Caring for Needy"],
  "Truth" => ["Truth", "Truth and Freedom", "Truth Revelation", "Spirit and Truth"],
  "Peace" => ["Peace", "Rest and Comfort", "Fear"],
  "Wisdom" => ["Wisdom vs Foolishness", "Discernment", "Understanding", "Wise Preparation"],
  "Obedience" => ["Obedience", "Obedience to Law", "God's Will"],
  "Righteousness" => ["Righteousness", "Law and Righteousness", "Purity"],
  
  # Relationships
  "God the Father" => ["God as Father", "Father's House", "Father-Son Relationship", "Father-Son Unity", "Divine Will"],
  "Family" => ["Spiritual Family", "Children", "Marriage"],
  "Community" => ["Church", "Unity", "Church Discipline"],
  
  # Spiritual Life
  "Worship" => ["True Worship", "Spirit and Truth", "Sabbath"],
  "Scripture" => ["Scripture and Power", "Scripture Fulfillment", "Prophetic Fulfillment"],
  "Spiritual Growth" => ["Spiritual Perception", "Inner Transformation", "Renewal"],
  "Temptation" => ["Temptation", "Sin and Consequences", "Avoiding Sin"],
  
  # Jesus's Identity
  "Son of God" => ["Divine Identity", "Messianic Identity", "Identity of Jesus", "Divine Sonship"],
  "I Am Statements" => ["I Am Statements", "Bread of Life", "Living Water", "Good Shepherd"],
  "Mission" => ["Mission Statement", "Mission to Sinners", "Purpose"],
  
  # Parables and Stories
  "Parable Teaching" => ["Sower", "Prodigal Son", "Good Samaritan", "Lost and Found"],
  
  # End Times and Future
  "Second Coming" => ["Second Coming", "End Times", "Glorious Return", "Signs"],
  "Judgment" => ["Judgment", "Final Judgment", "Eternal Destiny", "Separation"],
  "Resurrection" => ["Resurrection", "Resurrection Life", "Death and Life"],
  
  # Practical Life
  "Wealth" => ["Wealth", "Money and God", "Generosity", "Stewardship"],
  "Leadership" => ["Leadership", "Worldly Leadership", "Religious Authority"],
  "Relationships" => ["Hospitality", "Forgiveness", "Conflict Resolution"],
  
  # Opposition and Conflict
  "Hypocrisy" => ["Hypocrisy", "Appearance vs Reality", "Hidden Sin", "Religious Hypocrisy"],
  "Persecution" => ["Persecution", "Suffering", "Betrayal"],
  "Spiritual Warfare" => ["Spiritual Warfare", "Exorcism", "Demon Possession"],
  
  # Miscellaneous Important Themes
  "Healing" => ["Healing", "Cleansing", "Miraculous Power"],
  "Provision" => ["Provision", "God's Care", "Daily Needs"],
  "Time and Urgency" => ["Timing", "Urgency", "Watchfulness", "Readiness"]
}

# Function to find new category
find_new_category = fn old_category, mappings ->
  Enum.find_value(mappings, fn {new_cat, old_cats} ->
    if old_category in old_cats, do: new_cat
  end) || old_category
end

# Function to find new theme
find_new_theme = fn old_theme, mappings ->
  Enum.find_value(mappings, fn {new_theme, old_themes} ->
    if old_theme in old_themes, do: new_theme
  end) || old_theme
end

# Get all sayings
sayings = Saying.read!()

IO.puts("Processing #{length(sayings)} sayings...")

# Update each saying
updates = Enum.map(sayings, fn saying ->
  new_category = if saying.category do
    find_new_category.(saying.category, category_mappings)
  else
    saying.category
  end
  
  new_theme = if saying.theme do
    find_new_theme.(saying.theme, theme_mappings)
  else
    saying.theme
  end
  
  # Only update if something changed
  if new_category != saying.category || new_theme != saying.theme do
    case saying
         |> Ash.Changeset.for_update(:update, %{
           category: new_category,
           theme: new_theme
         })
         |> Ash.update() do
      {:ok, _updated_saying} ->
        :updated
      {:error, error} ->
        IO.puts("Error updating saying #{saying.id}: #{inspect(error)}")
        :error
    end
  else
    :unchanged
  end
end)

updated_count = Enum.count(updates, &(&1 == :updated))

# Show final statistics
sayings_after = Saying.read!()
categories_after = sayings_after |> Enum.map(&(&1.category)) |> Enum.reject(&is_nil/1) |> Enum.uniq() |> Enum.sort()
themes_after = sayings_after |> Enum.map(&(&1.theme)) |> Enum.reject(&is_nil/1) |> Enum.uniq() |> Enum.sort()

IO.puts("\n=== STREAMLINING COMPLETE ===")
IO.puts("Updated #{updated_count} sayings")
IO.puts("Categories: 33 → #{length(categories_after)}")
IO.puts("Themes: 380 → #{length(themes_after)}")

IO.puts("\n=== NEW CATEGORIES ===")
Enum.each(categories_after, &IO.puts("- #{&1}"))

IO.puts("\n=== NEW THEMES ===")
Enum.each(themes_after, &IO.puts("- #{&1}"))

IO.puts("\n🎉 Categories and themes have been streamlined for better search and organization!")