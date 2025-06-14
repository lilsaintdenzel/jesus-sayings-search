# Streamline Themes to 100 Core Themes
# Further consolidate the 279 themes into approximately 100 essential themes

alias JesusSayingsSearch.Sayings.Saying

IO.puts("Starting to streamline themes to ~100 core themes...")

# Define comprehensive theme mappings to consolidate 279 themes into ~100
theme_mappings = %{
  # Core Identity and Nature of Jesus
  "Son of God" => ["Son of God", "Divine Voice", "Messiah", "Messiah's Nature", "Divine Power", "Divine Prerogative"],
  "I Am Statements" => ["I Am Statements", "Bread of God", "Living Bread", "Life-giving Bread", "True Bread"],
  "Mission" => ["Mission", "Mission to Sinners", "Great Commission", "Fulfillment"],
  "Authority" => ["Authority", "Divine Authority", "Authority to Forgive", "Son of Man Authority", "Judgment Authority"],
  "Omniscience" => ["Omniscience", "Heart Knowledge", "Revelation", "Seeing the Father"],
  
  # Faith and Salvation
  "Faith" => ["Faith", "Faith and Peace", "Faith and Possibility", "Great Faith", "Personal Faith", "Trust and Worry"],
  "Salvation" => ["Salvation", "Eternal Life", "Born Again", "Salvation's Origin", "Security", "Spiritual Resurrection"],
  "Forgiveness" => ["Forgiveness", "Authority to Forgive", "Call to Repentance", "Repentance"],
  "Grace" => ["God's Generosity", "Divine Mercy", "Mercy", "God's Love"],
  "Judgment" => ["Judgment", "Final Judgment", "Severe Judgment", "Present Judgment", "Accumulated Guilt"],
  
  # Love and Relationships
  "Love" => ["Love", "Love for God", "Love for Others", "Love for Enemies", "Love and Forgiveness", "Love Your Neighbor", "Love Growing Cold", "Love Proportional to Forgiveness"],
  "Forgiveness and Reconciliation" => ["Debt", "Defensive Response", "Conflict Resolution"],
  "Family" => ["Family", "Spiritual Family", "Children", "Marriage", "Children's Praise"],
  "Community" => ["Community", "Church", "Unity", "Church Discipline", "Welcoming Children"],
  "Relationships" => ["Relationships", "Hospitality", "Inclusivity", "Sides"],
  
  # Kingdom of Heaven
  "Kingdom of Heaven" => ["Kingdom of Heaven", "Kingdom of God", "Kingdom Entry", "Kingdom Greatness", "Kingdom Power", "Kingdom Priority", "Kingdom Readiness", "Kingdom Transfer"],
  "Parable Teaching" => ["Parable Teaching", "Sower", "Prodigal Son", "Good Samaritan", "Lost and Found"],
  "Election" => ["Election", "Divine Drawing", "Divine Enablement", "Gathering the Elect"],
  
  # Discipleship and Following Jesus
  "Discipleship" => ["Discipleship", "Cross-bearing", "Following Jesus", "Call", "Loyalty Test"],
  "Service" => ["Service", "Servant Leadership", "Service to Others", "Service to Christ", "Service and Sacrifice", "Ultimate Service"],
  "Sacrifice" => ["Sacrifice", "Ransom", "Crucifixion", "Blood of Covenant", "Burial Preparation", "Sacrifice and Reward"],
  "Humility" => ["Humility", "Humility and Exaltation", "Childlike Faith", "Greatness through Service"],
  "Obedience" => ["Obedience", "Obedience to Law", "God's Will", "Submission", "Complete Submission"],
  
  # Character and Virtue
  "Righteousness" => ["Righteousness", "Law and Righteousness", "Purity", "Golden Rule", "Beatitudes"],
  "Wisdom" => ["Wisdom vs Foolishness", "Discernment", "Understanding", "Wise Preparation", "Foolish Preparation"],
  "Truth" => ["Truth", "Truth and Freedom", "Truth Revelation", "Spirit and Truth", "Correct Judgment"],
  "Peace" => ["Peace", "Rest and Comfort", "Fear", "Not Stumbling"],
  "Compassion" => ["Compassion", "Caring for Needy", "Mercy"],
  
  # Spiritual Life and Growth
  "Prayer" => ["Prayer", "Lord's Prayer", "Gethsemane"],
  "Worship" => ["True Worship", "Spirit and Truth", "Sabbath", "Worship"],
  "Scripture" => ["Scripture", "Scripture and Power", "Scripture Fulfillment", "Prophetic Fulfillment"],
  "Spiritual Growth" => ["Spiritual Perception", "Inner Transformation", "Renewal", "New vs Old", "New Wine"],
  "Temptation" => ["Temptation", "Sin and Consequences", "Avoiding Sin", "Radical Commitment"],
  "Spirit vs Flesh" => ["Spirit vs Flesh", "Spirit", "Purification"],
  
  # God and Divine Relationship
  "God the Father" => ["God as Father", "Father's House", "Father-Son Relationship", "Father-Son Unity", "Divine Will", "God's Nature", "God of the Living"],
  "Divine Teaching" => ["Divine Teaching", "Christ as Teacher", "Teaching Moment"],
  "Divine Work" => ["Continuous Work", "Work of God", "Building on Others' Work", "Greater Works"],
  
  # Healing and Miracles
  "Healing" => ["Healing", "Cleansing", "Miraculous Power", "Sabbath Healing", "Paralytic", "Fever", "Progressive Healing", "Distant Healing", "Desire for Healing"],
  "Spiritual Warfare" => ["Spiritual Warfare", "Exorcism", "Demon Possession"],
  "Nature Miracles" => ["Nature Miracle", "Water to Wine", "No Waste"],
  "Resurrection" => ["Resurrection", "Resurrection Life", "Death and Life", "Death and Resurrection", "Resurrection Meeting"],
  
  # End Times and Future
  "Second Coming" => ["Second Coming", "End Times", "Glorious Return", "Signs", "Cosmic Signs", "Signs and Faith"],
  "Prophecy" => ["Passion Prediction", "Birth Pains", "End Times Signs", "Wars and End Times", "Gospel to All Nations"],
  "Preparation" => ["Preparation", "Readiness", "Wise Preparation", "Vigilance", "Time and Urgency", "Watchfulness"],
  "Future Events" => ["Future Recognition", "Future Celebration", "Future Fasting", "Ascension"],
  
  # Opposition and Conflict
  "Hypocrisy" => ["Hypocrisy", "Appearance vs Reality", "Hidden Sin", "Religious Hypocrisy", "Show", "Inner vs Outer"],
  "Persecution" => ["Persecution", "Suffering", "Betrayal", "Shared Suffering", "Persecution of Messengers"],
  "Rejection" => ["Rejection", "Prophet's Rejection", "Rejected Love", "Rejection and Vindication"],
  "Deception" => ["Deception", "False Claims", "False Messiahs", "False Prophets", "False Teaching", "False Conversion"],
  "Opposition" => ["Argument", "Disappointment", "Unbelief", "Grumbling", "Resistance to Change"],
  
  # Leadership and Authority
  "Leadership" => ["Leadership", "Worldly Leadership", "Religious Authority", "Servant Leadership"],
  "Power and Abuse" => ["Abuse of Power", "Wicked Servant", "Burdens", "Blocking the Kingdom"],
  "Equality" => ["Equality", "Different Abilities", "Personal Responsibility", "Balance"],
  
  # Life and Death
  "Life and Death" => ["Life and Death", "Soul's Value", "Soul's Worth", "Life from Jesus", "Life in Himself", "Life-giving Power"],
  "Eternal Destiny" => ["Eternal Destiny", "Eternal Punishment", "Inheritance", "Eternal Harvest"],
  "Judgment Day" => ["Final Judgment", "Separation", "Right and Left", "Too Late", "Unexpected Return"],
  
  # Practical Living
  "Wealth" => ["Wealth", "Money and God", "Generosity", "Stewardship", "Taxes", "Civic Duty", "Resources", "Redistribution"],
  "Daily Life" => ["Daily Needs", "Provision", "God's Care", "Normal Life", "Crossing Over"],
  "Work and Labor" => ["Sowing and Reaping", "Sowing", "Spiritual Harvest", "Minimum Effort", "Laziness"],
  "Priorities" => ["Priorities", "Kingdom Priority", "What Makes Sacred", "Summary of Law", "Greatest Commandment"],
  
  # Communication and Teaching
  "Questions" => ["Identity", "Testing", "Request", "Duration of Suffering"],
  "Responses" => ["Confirmation", "Affirmation", "Defensive Response"],
  "Instruction" => ["Commandments", "Way of Life", "Saltiness", "Salt and Light"],
  "Parables Purpose" => ["Parables' Purpose", "Spiritual Principle"],
  
  # Special Events and Contexts
  "Betrayal" => ["Betrayer", "Betrayer's Identity", "Betrayer's Woe", "Betrayer's Arrival", "Peter's Denial"],
  "Trial and Crucifixion" => ["King of Jews", "Forsakenness", "Manner of Arrest", "Last Supper", "Communion"],
  "Temple" => ["Temple Cleansing", "Temple Destruction", "Honoring Dead Prophets"],
  "Miracles Context" => ["Bridegroom", "Delay", "Sudden Arrival", "Hour Has Come"],
  
  # Rewards and Consequences
  "Rewards" => ["Reward", "Great Reward", "Faithful Service", "Memorial"],
  "Consequences" => ["Sin and Consequences", "Causing Others to Sin", "Shame and Glory", "Inheritance"],
  "Success and Failure" => ["Inadequacy", "Failure to Care", "Neglect", "Neglect of Christ"],
  
  # Spiritual Qualities
  "Character" => ["Goodness", "Beautiful Act", "Honor", "Human Value", "Affection"],
  "Understanding" => ["Understanding", "Surprise", "Unconscious Service", "Hidden Service"],
  "Commitment" => ["Loyalty Test", "Personal Faith", "Radical Commitment", "Perseverance"],
  
  # Miscellaneous Important Themes
  "Tradition" => ["Tradition vs God's Law", "Elijah", "Elijah and Suffering", "Elijah's Fate"],
  "Time" => ["Timing", "Urgency", "Unknown Timing", "Nearness", "Forewarning"],
  "Physical vs Spiritual" => ["Temporary vs Eternal", "Eternal Food", "Eternal Satisfaction", "Real Food and Drink", "Mutual Indwelling"],
  "Testimony" => ["Testimony", "Messianic Signs", "Witness", "Presence of Jesus"],
  "Completion" => ["Completing Evil", "Fulfillment", "Scripture Fulfillment", "Prophetic Fulfillment"],
  "Food and Nourishment" => ["Eating Flesh, Drinking Blood", "Bread of God", "Eternal Bread", "Spiritual Harvest"],
  "Cleansing" => ["Cleansing", "Inner vs Outer", "Purification", "Inner Transformation"],
  "Comfort and Encouragement" => ["Comfort", "Encouragement", "Don't Worry", "Overwhelming Sorrow"],
  "Vision and Sight" => ["Blind Guides", "Spiritual Perception", "Seeing the Father", "Progressive Healing"],
  "Speech and Communication" => ["Grumbling", "Pleading", "Self-Deception", "Correct Judgment"]
}

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
  new_theme = if saying.theme do
    find_new_theme.(saying.theme, theme_mappings)
  else
    saying.theme
  end
  
  # Only update if something changed
  if new_theme != saying.theme do
    case saying
         |> Ash.Changeset.for_update(:update, %{
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
themes_after = sayings_after |> Enum.map(&(&1.theme)) |> Enum.reject(&is_nil/1) |> Enum.uniq() |> Enum.sort()

IO.puts("\n=== THEME STREAMLINING COMPLETE ===")
IO.puts("Updated #{updated_count} sayings")
IO.puts("Themes: 279 → #{length(themes_after)}")

IO.puts("\n=== STREAMLINED THEMES (#{length(themes_after)}) ===")
Enum.each(themes_after, &IO.puts("- #{&1}"))

IO.puts("\n🎯 Themes have been streamlined to approximately 100 core themes for better organization!")