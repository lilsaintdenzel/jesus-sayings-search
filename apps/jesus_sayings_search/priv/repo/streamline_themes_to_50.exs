# Streamline Themes to 50% (approximately 57 themes)
# Further consolidate the 113 themes into ~57 essential themes for optimal UX

alias JesusSayingsSearch.Sayings.Saying

IO.puts("Starting to streamline themes by 50% to ~57 core themes...")

# Define comprehensive theme mappings to consolidate 113 themes into ~57
theme_mappings = %{
  # Core Identity of Jesus (consolidate from 6 to 3)
  "Jesus Identity" => ["Son of God", "I Am Statements", "Omniscience"],
  "Jesus Mission" => ["Mission", "Authority", "Divine Approval"],
  
  # Faith and Salvation (consolidate from 8 to 4)
  "Faith and Trust" => ["Faith", "Divine Possibility", "Commitment"],
  "Salvation" => ["Salvation", "Election", "Grace"],
  "Forgiveness" => ["Forgiveness", "Forgiveness and Reconciliation"],
  "Judgment" => ["Judgment", "Judgment Day", "Eternal Destiny"],
  
  # Love and Relationships (consolidate from 6 to 3)
  "Love and Relationships" => ["Love", "Family", "Relationships"],
  "Community and Unity" => ["Community", "Equality", "Universal Invitation"],
  "Conflict Resolution" => ["Non-retaliation", "Non-violence", "Opposition"],
  
  # Kingdom of Heaven (consolidate from 4 to 2)
  "Kingdom of Heaven" => ["Kingdom of Heaven", "Election"],
  "Parables" => ["Parable Teaching", "Parables Purpose"],
  
  # Character and Virtue (consolidate from 8 to 4)
  "Righteousness and Truth" => ["Righteousness", "Truth", "Perfection"],
  "Wisdom and Understanding" => ["Wisdom", "Understanding", "Vision and Sight"],
  "Humility and Service" => ["Humility", "Service"],
  "Character" => ["Character", "Integrity"],
  
  # Spiritual Life (consolidate from 8 to 4)
  "Prayer and Worship" => ["Prayer", "Worship"],
  "Scripture and Teaching" => ["Scripture", "Divine Teaching", "Instruction"],
  "Spiritual Growth" => ["Spiritual Growth", "Spirit vs Flesh", "Physical vs Spiritual"],
  "Temptation and Sin" => ["Temptation", "Unforgivable Sin"],
  
  # God and Divine Relationship (consolidate from 5 to 3)
  "God the Father" => ["God the Father", "God's Power", "God's Son"],
  "Divine Work" => ["Divine Work", "God's Messengers", "God's Patience"],
  "Heaven and Eternity" => ["Heaven", "Eternal Words"],
  
  # Healing and Miracles (consolidate from 4 to 2)
  "Healing and Miracles" => ["Healing", "Nature Miracles", "Miracles Context"],
  "Spiritual Warfare" => ["Spiritual Warfare"],
  
  # End Times and Future (consolidate from 6 to 3)
  "Second Coming" => ["Second Coming", "Prophecy"],
  "End Times" => ["Great Tribulation", "Days of Noah", "Apostasy"],
  "Preparation and Readiness" => ["Preparation", "Time"],
  
  # Opposition and Persecution (consolidate from 6 to 3)
  "Persecution and Suffering" => ["Persecution", "Betrayal", "Disciples' Desertion"],
  "Hypocrisy and Deception" => ["Hypocrisy", "Deception"],
  "Rejection" => ["Rejection", "Offense"],
  
  # Leadership and Authority (consolidate from 3 to 2)
  "Leadership" => ["Leadership", "Power and Abuse"],
  "Divine vs Human Perspective" => ["Divine vs Human Perspective", "Proportion"],
  
  # Life and Death (consolidate from 3 to 2)
  "Life and Death" => ["Life and Death", "Resurrection"],
  "Success and Failure" => ["Success and Failure", "Consequences"],
  
  # Practical Living (consolidate from 5 to 3)
  "Wealth and Materialism" => ["Wealth", "Luxury vs Simplicity"],
  "Daily Life" => ["Daily Life", "Work and Labor"],
  "Priorities" => ["Priorities", "Motives"],
  
  # Communication and Teaching (consolidate from 4 to 2)
  "Questions and Responses" => ["Questions", "Responses"],
  "Speech and Communication" => ["Speech and Communication", "Testimony"],
  
  # Special Events and Contexts (consolidate from 5 to 3)
  "Trial and Death" => ["Trial and Crucifixion", "Sacrifice"],
  "Temple and Tradition" => ["Temple", "Tradition"],
  "Future Events" => ["Future Events", "Secrecy"],
  
  # Rewards and Outcomes (consolidate from 3 to 2)
  "Rewards" => ["Rewards", "Reversal"],
  "Completion" => ["Completion", "Inherited Guilt"],
  
  # Special Teachings (consolidate remaining into broader categories)
  "Food and Nourishment" => ["Food and Nourishment"],
  "Comfort and Peace" => ["Comfort and Encouragement", "Peace"],
  "Escape and Desolation" => ["Escape", "Desolation"],
  "Sudden Events" => ["Sudden Judgment"],
  "Impossibility" => ["Impossibility"],
  "John the Baptist" => ["John's Character", "John's Greatness"]
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

IO.puts("\n=== THEME STREAMLINING TO 50% COMPLETE ===")
IO.puts("Updated #{updated_count} sayings")
IO.puts("Themes: 113 → #{length(themes_after)} (#{Float.round((113 - length(themes_after)) / 113 * 100, 1)}% reduction)")

IO.puts("\n=== FINAL STREAMLINED THEMES (#{length(themes_after)}) ===")
Enum.each(themes_after, &IO.puts("- #{&1}"))

IO.puts("\n🎯 Themes have been streamlined by 50% for optimal user experience!")