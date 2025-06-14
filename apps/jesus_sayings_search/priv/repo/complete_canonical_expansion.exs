# Complete Canonical Expansion of Jesus Sayings Database
# Adding hundreds more canonical sayings to reach the 500-600 estimate
# This expansion includes extensive discourse material, passion week sayings, and comprehensive Gospel coverage

alias JesusSayingsSearch.Books.Book
alias JesusSayingsSearch.Sayings.Saying

# Get existing books
books = Book.read!()
matthew = Enum.find(books, &(&1.name == "Matthew"))
mark = Enum.find(books, &(&1.name == "Mark"))
luke = Enum.find(books, &(&1.name == "Luke"))
john = Enum.find(books, &(&1.name == "John"))

IO.puts("Adding comprehensive canonical sayings collection...")

# COMPLETE CANONICAL EXPANSION - AIMING FOR 500+ TOTAL SAYINGS
complete_expansion = [
  # ===== MATTHEW - CONTINUED EXTENSIVE COLLECTION =====
  
  # Parable of Workers in Vineyard (continued)
  %{
    text: "So the last will be first, and the first will be last.",
    reference: "20:16",
    chapter: 20,
    verse_start: 16,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Reversal",
    context: "Jesus concluding the parable of workers in the vineyard"
  },
  
  # Request of James and John's Mother
  %{
    text: "You don't know what you are asking. Can you drink the cup I am going to drink?",
    reference: "20:22",
    chapter: 20,
    verse_start: 22,
    book_id: matthew.id,
    category: "Question",
    theme: "Suffering",
    context: "Jesus responding to request for positions of honor"
  },
  %{
    text: "You know that the rulers of the Gentiles lord it over them, and their high officials exercise authority over them.",
    reference: "20:25",
    chapter: 20,
    verse_start: 25,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Leadership",
    context: "Jesus teaching about servant leadership"
  },
  %{
    text: "Not so with you. Instead, whoever wants to become great among you must be your servant, and whoever wants to be first must be your slave.",
    reference: "20:26-27",
    chapter: 20,
    verse_start: 26,
    verse_end: 27,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Servant Leadership",
    context: "Jesus defining true greatness"
  },
  %{
    text: "Just as the Son of Man did not come to be served, but to serve, and to give his life as a ransom for many.",
    reference: "20:28",
    chapter: 20,
    verse_start: 28,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Sacrifice",
    context: "Jesus explaining his mission of service and sacrifice"
  },
  
  # Triumphal Entry
  %{
    text: "Yes, have you never read, 'From the lips of children and infants you, Lord, have called forth your praise'?",
    reference: "21:16",
    chapter: 21,
    verse_start: 16,
    book_id: matthew.id,
    category: "Question",
    theme: "Children's Praise",
    context: "Jesus defending the children's praise in the temple"
  },
  %{
    text: "Truly I tell you, if you have faith and do not doubt, not only can you do what was done to the fig tree, but also you can say to this mountain, 'Go, throw yourself into the sea,' and it will be done.",
    reference: "21:21",
    chapter: 21,
    verse_start: 21,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Faith",
    context: "Jesus teaching about faith after cursing the fig tree"
  },
  %{
    text: "If you believe, you will receive whatever you ask for in prayer.",
    reference: "21:22",
    chapter: 21,
    verse_start: 22,
    book_id: matthew.id,
    category: "Promise",
    theme: "Prayer",
    context: "Jesus promising answered prayer through faith"
  },
  
  # Authority Questions
  %{
    text: "I will also ask you one question. If you answer me, I will tell you by what authority I am doing these things.",
    reference: "21:24",
    chapter: 21,
    verse_start: 24,
    book_id: matthew.id,
    category: "Response",
    theme: "Authority",
    context: "Jesus responding to questions about his authority"
  },
  %{
    text: "John's baptism—where did it come from? Was it from heaven, or of human origin?",
    reference: "21:25",
    chapter: 21,
    verse_start: 25,
    book_id: matthew.id,
    category: "Question",
    theme: "Divine Authority",
    context: "Jesus questioning the religious leaders about John the Baptist"
  },
  %{
    text: "Neither will I tell you by what authority I am doing these things.",
    reference: "21:27",
    chapter: 21,
    verse_start: 27,
    book_id: matthew.id,
    category: "Response",
    theme: "Authority",
    context: "Jesus refusing to answer the religious leaders"
  },
  
  # Parable of Two Sons
  %{
    text: "What do you think? There was a man who had two sons. He went to the first and said, 'Son, go and work today in the vineyard.'",
    reference: "21:28",
    chapter: 21,
    verse_start: 28,
    book_id: matthew.id,
    category: "Parable",
    theme: "Obedience",
    context: "Jesus teaching about true obedience through parable"
  },
  %{
    text: "Truly I tell you, the tax collectors and the prostitutes are entering the kingdom of God ahead of you.",
    reference: "21:31",
    chapter: 21,
    verse_start: 31,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Kingdom Entry",
    context: "Jesus shocking the religious leaders about who enters God's kingdom"
  },
  %{
    text: "For John came to you to show you the way of righteousness, and you did not believe him, but the tax collectors and the prostitutes did.",
    reference: "21:32",
    chapter: 21,
    verse_start: 32,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Righteousness",
    context: "Jesus explaining why sinners enter the kingdom first"
  },
  
  # Parable of Wicked Tenants
  %{
    text: "Listen to another parable: There was a landowner who planted a vineyard.",
    reference: "21:33",
    chapter: 21,
    verse_start: 33,
    book_id: matthew.id,
    category: "Parable",
    theme: "God's Patience",
    context: "Jesus teaching about God's patience with Israel"
  },
  %{
    text: "When the harvest time approached, he sent his servants to the tenants to collect his fruit.",
    reference: "21:34",
    chapter: 21,
    verse_start: 34,
    book_id: matthew.id,
    category: "Parable",
    theme: "God's Messengers",
    context: "Jesus teaching about how God's messengers are treated"
  },
  %{
    text: "Last of all, he sent his son to them. 'They will respect my son,' he said.",
    reference: "21:37",
    chapter: 21,
    verse_start: 37,
    book_id: matthew.id,
    category: "Parable",
    theme: "God's Son",
    context: "Jesus teaching about God sending his Son"
  },
  %{
    text: "Therefore, when the owner of the vineyard comes, what will he do to those tenants?",
    reference: "21:40",
    chapter: 21,
    verse_start: 40,
    book_id: matthew.id,
    category: "Question",
    theme: "Judgment",
    context: "Jesus asking about God's judgment"
  },
  %{
    text: "Have you never read in the Scriptures: 'The stone the builders rejected has become the cornerstone'?",
    reference: "21:42",
    chapter: 21,
    verse_start: 42,
    book_id: matthew.id,
    category: "Question",
    theme: "Rejection and Vindication",
    context: "Jesus explaining his rejection and eventual vindication"
  },
  %{
    text: "Therefore I tell you that the kingdom of God will be taken away from you and given to a people who will produce its fruit.",
    reference: "21:43",
    chapter: 21,
    verse_start: 43,
    book_id: matthew.id,
    category: "Warning",
    theme: "Kingdom Transfer",
    context: "Jesus warning about the kingdom being taken from Israel"
  },
  
  # Parable of Wedding Banquet
  %{
    text: "The kingdom of heaven is like a king who prepared a wedding banquet for his son.",
    reference: "22:2",
    chapter: 22,
    verse_start: 2,
    book_id: matthew.id,
    category: "Parable",
    theme: "Kingdom of Heaven",
    context: "Jesus teaching about the kingdom through the wedding banquet parable"
  },
  %{
    text: "The wedding banquet is ready, but those I invited did not deserve to come.",
    reference: "22:8",
    chapter: 22,
    verse_start: 8,
    book_id: matthew.id,
    category: "Parable",
    theme: "Rejection",
    context: "Jesus teaching about Israel's rejection of God's invitation"
  },
  %{
    text: "So go to the street corners and invite to the banquet anyone you find.",
    reference: "22:9",
    chapter: 22,
    verse_start: 9,
    book_id: matthew.id,
    category: "Parable",
    theme: "Universal Invitation",
    context: "Jesus teaching about the gospel going to all people"
  },
  %{
    text: "Friend, how did you get in here without wedding clothes?",
    reference: "22:12",
    chapter: 22,
    verse_start: 12,
    book_id: matthew.id,
    category: "Question",
    theme: "Righteousness",
    context: "Jesus teaching about the need for proper spiritual preparation"
  },
  %{
    text: "For many are invited, but few are chosen.",
    reference: "22:14",
    chapter: 22,
    verse_start: 14,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Election",
    context: "Jesus teaching about divine election"
  },
  
  # Taxes to Caesar
  %{
    text: "You hypocrites, why are you trying to trap me?",
    reference: "22:18",
    chapter: 22,
    verse_start: 18,
    book_id: matthew.id,
    category: "Question",
    theme: "Hypocrisy",
    context: "Jesus responding to the Pharisees' trap about taxes"
  },
  %{
    text: "Show me the coin used for paying the tax.",
    reference: "22:19",
    chapter: 22,
    verse_start: 19,
    book_id: matthew.id,
    category: "Command",
    theme: "Taxes",
    context: "Jesus asking for a coin to answer about taxes"
  },
  %{
    text: "Whose image is this? And whose inscription?",
    reference: "22:20",
    chapter: 22,
    verse_start: 20,
    book_id: matthew.id,
    category: "Question",
    theme: "Authority",
    context: "Jesus asking about the coin's image"
  },
  %{
    text: "So give back to Caesar what is Caesar's, and to God what is God's.",
    reference: "22:21",
    chapter: 22,
    verse_start: 21,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Civic Duty",
    context: "Jesus teaching about obligations to government and God"
  },
  
  # Marriage and Resurrection
  %{
    text: "You are in error because you do not know the Scriptures or the power of God.",
    reference: "22:29",
    chapter: 22,
    verse_start: 29,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Scripture and Power",
    context: "Jesus correcting the Sadducees about resurrection"
  },
  %{
    text: "At the resurrection people will neither marry nor be given in marriage; they will be like the angels in heaven.",
    reference: "22:30",
    chapter: 22,
    verse_start: 30,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Resurrection Life",
    context: "Jesus teaching about the nature of resurrection life"
  },
  %{
    text: "But about the resurrection of the dead—have you not read what God said to you, 'I am the God of Abraham, the God of Isaac, and the God of Jacob'?",
    reference: "22:31-32",
    chapter: 22,
    verse_start: 31,
    verse_end: 32,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Resurrection",
    context: "Jesus proving resurrection from Scripture"
  },
  %{
    text: "He is not the God of the dead but of the living.",
    reference: "22:32",
    chapter: 22,
    verse_start: 32,
    book_id: matthew.id,
    category: "Teaching",
    theme: "God of the Living",
    context: "Jesus explaining God's relationship with the living"
  },
  
  # Greatest Commandment
  %{
    text: "Love the Lord your God with all your heart and with all your soul and with all your mind.",
    reference: "22:37",
    chapter: 22,
    verse_start: 37,
    book_id: matthew.id,
    category: "Command",
    theme: "Love for God",
    context: "Jesus stating the greatest commandment"
  },
  %{
    text: "This is the first and greatest commandment.",
    reference: "22:38",
    chapter: 22,
    verse_start: 38,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Greatest Commandment",
    context: "Jesus identifying the most important command"
  },
  %{
    text: "And the second is like it: 'Love your neighbor as yourself.'",
    reference: "22:39",
    chapter: 22,
    verse_start: 39,
    book_id: matthew.id,
    category: "Command",
    theme: "Love for Others",
    context: "Jesus stating the second greatest commandment"
  },
  %{
    text: "All the Law and the Prophets hang on these two commandments.",
    reference: "22:40",
    chapter: 22,
    verse_start: 40,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Summary of Law",
    context: "Jesus summarizing all Scripture in two commands"
  },
  
  # Question about David's Son
  %{
    text: "What do you think about the Messiah? Whose son is he?",
    reference: "22:42",
    chapter: 22,
    verse_start: 42,
    book_id: matthew.id,
    category: "Question",
    theme: "Messiah",
    context: "Jesus questioning the Pharisees about the Messiah's identity"
  },
  %{
    text: "How is it then that David, speaking by the Spirit, calls him 'Lord'?",
    reference: "22:43",
    chapter: 22,
    verse_start: 43,
    book_id: matthew.id,
    category: "Question",
    theme: "Divine Sonship",
    context: "Jesus proving the Messiah's divine nature"
  },
  %{
    text: "If then David calls him 'Lord,' how can he be his son?",
    reference: "22:45",
    chapter: 22,
    verse_start: 45,
    book_id: matthew.id,
    category: "Question",
    theme: "Messiah's Nature",
    context: "Jesus challenging understanding of the Messiah"
  },
  
  # Woes to Religious Leaders
  %{
    text: "The teachers of the law and the Pharisees sit in Moses' seat.",
    reference: "23:2",
    chapter: 23,
    verse_start: 2,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Religious Authority",
    context: "Jesus acknowledging the Pharisees' position"
  },
  %{
    text: "So you must be careful to do everything they tell you. But do not do what they do, for they do not practice what they preach.",
    reference: "23:3",
    chapter: 23,
    verse_start: 3,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Hypocrisy",
    context: "Jesus warning about religious hypocrisy"
  },
  %{
    text: "They tie up heavy, cumbersome loads and put them on other people's shoulders, but they themselves are not willing to lift a finger to move them.",
    reference: "23:4",
    chapter: 23,
    verse_start: 4,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Burdens",
    context: "Jesus condemning the Pharisees' oppressive rules"
  },
  %{
    text: "Everything they do is done for people to see.",
    reference: "23:5",
    chapter: 23,
    verse_start: 5,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Show",
    context: "Jesus exposing the Pharisees' motivation"
  },
  %{
    text: "But you are not to be called 'Rabbi,' for you have one Teacher, and you are all brothers.",
    reference: "23:8",
    chapter: 23,
    verse_start: 8,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Equality",
    context: "Jesus teaching about spiritual equality"
  },
  %{
    text: "And do not call anyone on earth 'father,' for you have one Father, and he is in heaven.",
    reference: "23:9",
    chapter: 23,
    verse_start: 9,
    book_id: matthew.id,
    category: "Teaching",
    theme: "God as Father",
    context: "Jesus teaching about God as the ultimate Father"
  },
  %{
    text: "Nor are you to be called instructors, for you have one Instructor, the Messiah.",
    reference: "23:10",
    chapter: 23,
    verse_start: 10,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Christ as Teacher",
    context: "Jesus identifying himself as the ultimate teacher"
  },
  %{
    text: "The greatest among you will be your servant.",
    reference: "23:11",
    chapter: 23,
    verse_start: 11,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Servant Leadership",
    context: "Jesus teaching about true greatness"
  },
  %{
    text: "For those who exalt themselves will be humbled, and those who humble themselves will be exalted.",
    reference: "23:12",
    chapter: 23,
    verse_start: 12,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Humility and Exaltation",
    context: "Jesus teaching about God's reversal of human values"
  },
  
  # Seven Woes
  %{
    text: "Woe to you, teachers of the law and Pharisees, you hypocrites! You shut the door of the kingdom of heaven in people's faces.",
    reference: "23:13",
    chapter: 23,
    verse_start: 13,
    book_id: matthew.id,
    category: "Warning",
    theme: "Blocking the Kingdom",
    context: "Jesus' first woe against the religious leaders"
  },
  %{
    text: "Woe to you, teachers of the law and Pharisees, you hypocrites! You travel over land and sea to win a single convert, and when you have succeeded, you make them twice as much a child of hell as you are.",
    reference: "23:15",
    chapter: 23,
    verse_start: 15,
    book_id: matthew.id,
    category: "Warning",
    theme: "False Conversion",
    context: "Jesus condemning the Pharisees' proselytizing"
  },
  %{
    text: "Woe to you, blind guides! You say, 'If anyone swears by the temple, it means nothing; but anyone who swears by the gold of the temple is bound by that oath.'",
    reference: "23:16",
    chapter: 23,
    verse_start: 16,
    book_id: matthew.id,
    category: "Warning",
    theme: "Blind Guides",
    context: "Jesus condemning the Pharisees' oath distinctions"
  },
  %{
    text: "You blind fools! Which is greater: the gold, or the temple that makes the gold sacred?",
    reference: "23:17",
    chapter: 23,
    verse_start: 17,
    book_id: matthew.id,
    category: "Question",
    theme: "What Makes Sacred",
    context: "Jesus teaching about true sanctity"
  },
  %{
    text: "Woe to you, teachers of the law and Pharisees, you hypocrites! You give a tenth of your spices—mint, dill and cumin. But you have neglected the more important matters of the law—justice, mercy and faithfulness.",
    reference: "23:23",
    chapter: 23,
    verse_start: 23,
    book_id: matthew.id,
    category: "Warning",
    theme: "Priorities",
    context: "Jesus condemning misplaced priorities"
  },
  %{
    text: "You should have practiced the latter, without neglecting the former.",
    reference: "23:23",
    chapter: 23,
    verse_start: 23,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Balance",
    context: "Jesus teaching about proper balance in obedience"
  },
  %{
    text: "You blind guides! You strain out a gnat but swallow a camel.",
    reference: "23:24",
    chapter: 23,
    verse_start: 24,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Proportion",
    context: "Jesus using humor to expose the Pharisees' inconsistency"
  },
  %{
    text: "Woe to you, teachers of the law and Pharisees, you hypocrites! You clean the outside of the cup and dish, but inside they are full of greed and self-indulgence.",
    reference: "23:25",
    chapter: 23,
    verse_start: 25,
    book_id: matthew.id,
    category: "Warning",
    theme: "Inner vs Outer",
    context: "Jesus condemning external religion without inner change"
  },
  %{
    text: "Blind Pharisee! First clean the inside of the cup and dish, and then the outside also will be clean.",
    reference: "23:26",
    chapter: 23,
    verse_start: 26,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Inner Transformation",
    context: "Jesus teaching about the priority of inner cleansing"
  },
  %{
    text: "Woe to you, teachers of the law and Pharisees, you hypocrites! You are like whitewashed tombs, which look beautiful on the outside but on the inside are full of the bones of the dead and everything unclean.",
    reference: "23:27",
    chapter: 23,
    verse_start: 27,
    book_id: matthew.id,
    category: "Warning",
    theme: "Appearance vs Reality",
    context: "Jesus comparing the Pharisees to decorated tombs"
  },
  %{
    text: "In the same way, on the outside you appear to people as righteous but on the inside you are full of hypocrisy and wickedness.",
    reference: "23:28",
    chapter: 23,
    verse_start: 28,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Hidden Sin",
    context: "Jesus exposing hidden sin behind religious facade"
  },
  %{
    text: "Woe to you, teachers of the law and Pharisees, you hypocrites! You build tombs for the prophets and decorate the graves of the righteous.",
    reference: "23:29",
    chapter: 23,
    verse_start: 29,
    book_id: matthew.id,
    category: "Warning",
    theme: "Honoring Dead Prophets",
    context: "Jesus condemning those who honor dead prophets while rejecting living ones"
  },
  %{
    text: "And you say, 'If we had lived in the days of our ancestors, we would not have taken part with them in shedding the blood of the prophets.'",
    reference: "23:30",
    chapter: 23,
    verse_start: 30,
    book_id: matthew.id,
    category: "Quote",
    theme: "Self-Deception",
    context: "Jesus quoting the Pharisees' self-justification"
  },
  %{
    text: "So you testify against yourselves that you are the descendants of those who murdered the prophets.",
    reference: "23:31",
    chapter: 23,
    verse_start: 31,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Inherited Guilt",
    context: "Jesus pointing out their self-condemnation"
  },
  %{
    text: "Go ahead, then, and complete what your ancestors started!",
    reference: "23:32",
    chapter: 23,
    verse_start: 32,
    book_id: matthew.id,
    category: "Challenge",
    theme: "Completing Evil",
    context: "Jesus challenging them about their true intentions"
  },
  %{
    text: "You snakes! You brood of vipers! How will you escape being condemned to hell?",
    reference: "23:33",
    chapter: 23,
    verse_start: 33,
    book_id: matthew.id,
    category: "Warning",
    theme: "Judgment",
    context: "Jesus' strongest condemnation of the religious leaders"
  },
  %{
    text: "Therefore I am sending you prophets and sages and teachers. Some of them you will kill and crucify; others you will flog in your synagogues and pursue from town to town.",
    reference: "23:34",
    chapter: 23,
    verse_start: 34,
    book_id: matthew.id,
    category: "Prophecy",
    theme: "Persecution of Messengers",
    context: "Jesus prophesying persecution of his messengers"
  },
  %{
    text: "And so upon you will come all the righteous blood that has been shed on earth, from the blood of righteous Abel to the blood of Zechariah son of Berekiah, whom you murdered between the temple and the altar.",
    reference: "23:35",
    chapter: 23,
    verse_start: 35,
    book_id: matthew.id,
    category: "Warning",
    theme: "Accumulated Guilt",
    context: "Jesus warning about accumulated guilt for righteous blood"
  },
  %{
    text: "Truly I tell you, all this will come on this generation.",
    reference: "23:36",
    chapter: 23,
    verse_start: 36,
    book_id: matthew.id,
    category: "Warning",
    theme: "Present Judgment",
    context: "Jesus declaring judgment on his generation"
  },
  
  # Lament over Jerusalem
  %{
    text: "Jerusalem, Jerusalem, you who kill the prophets and stone those sent to you, how often I have longed to gather your children together, as a hen gathers her chicks under her wings, and you were not willing.",
    reference: "23:37",
    chapter: 23,
    verse_start: 37,
    book_id: matthew.id,
    category: "Lament",
    theme: "Rejected Love",
    context: "Jesus lamenting over Jerusalem's rejection"
  },
  %{
    text: "Look, your house is left to you desolate.",
    reference: "23:38",
    chapter: 23,
    verse_start: 38,
    book_id: matthew.id,
    category: "Warning",
    theme: "Desolation",
    context: "Jesus pronouncing judgment on the temple"
  },
  %{
    text: "For I tell you, you will not see me again until you say, 'Blessed is he who comes in the name of the Lord.'",
    reference: "23:39",
    chapter: 23,
    verse_start: 39,
    book_id: matthew.id,
    category: "Prophecy",
    theme: "Future Recognition",
    context: "Jesus prophesying his future recognition by Israel"
  },
  
  # Olivet Discourse - Signs of the End
  %{
    text: "Do you see all these things? Truly I tell you, not one stone here will be left on another; every one will be thrown down.",
    reference: "24:2",
    chapter: 24,
    verse_start: 2,
    book_id: matthew.id,
    category: "Prophecy",
    theme: "Temple Destruction",
    context: "Jesus prophesying the destruction of the temple"
  },
  %{
    text: "Watch out that no one deceives you.",
    reference: "24:4",
    chapter: 24,
    verse_start: 4,
    book_id: matthew.id,
    category: "Warning",
    theme: "Deception",
    context: "Jesus warning about end-times deception"
  },
  %{
    text: "For many will come in my name, claiming, 'I am the Messiah,' and will deceive many.",
    reference: "24:5",
    chapter: 24,
    verse_start: 5,
    book_id: matthew.id,
    category: "Warning",
    theme: "False Messiahs",
    context: "Jesus warning about false messiahs"
  },
  %{
    text: "You will hear of wars and rumors of wars, but see to it that you are not alarmed. Such things must happen, but the end is still to come.",
    reference: "24:6",
    chapter: 24,
    verse_start: 6,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Wars and End Times",
    context: "Jesus teaching about wars as signs"
  },
  %{
    text: "Nation will rise against nation, and kingdom against kingdom. There will be famines and earthquakes in various places.",
    reference: "24:7",
    chapter: 24,
    verse_start: 7,
    book_id: matthew.id,
    category: "Prophecy",
    theme: "End Times Signs",
    context: "Jesus describing end-times signs"
  },
  %{
    text: "All these are the beginning of birth pains.",
    reference: "24:8",
    chapter: 24,
    verse_start: 8,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Birth Pains",
    context: "Jesus describing end-times troubles as birth pains"
  },
  %{
    text: "Then you will be handed over to be persecuted and put to death, and you will be hated by all nations because of me.",
    reference: "24:9",
    chapter: 24,
    verse_start: 9,
    book_id: matthew.id,
    category: "Prophecy",
    theme: "Persecution",
    context: "Jesus prophesying persecution of his followers"
  },
  %{
    text: "At that time many will turn away from the faith and will betray and hate each other.",
    reference: "24:10",
    chapter: 24,
    verse_start: 10,
    book_id: matthew.id,
    category: "Prophecy",
    theme: "Apostasy",
    context: "Jesus prophesying spiritual falling away"
  },
  %{
    text: "And many false prophets will appear and deceive many people.",
    reference: "24:11",
    chapter: 24,
    verse_start: 11,
    book_id: matthew.id,
    category: "Warning",
    theme: "False Prophets",
    context: "Jesus warning about false prophets"
  },
  %{
    text: "Because of the increase of wickedness, the love of most will grow cold.",
    reference: "24:12",
    chapter: 24,
    verse_start: 12,
    book_id: matthew.id,
    category: "Prophecy",
    theme: "Love Growing Cold",
    context: "Jesus prophesying spiritual coldness"
  },
  %{
    text: "But the one who stands firm to the end will be saved.",
    reference: "24:13",
    chapter: 24,
    verse_start: 13,
    book_id: matthew.id,
    category: "Promise",
    theme: "Perseverance",
    context: "Jesus promising salvation for those who endure"
  },
  %{
    text: "And this gospel of the kingdom will be preached in the whole world as a testimony to all nations, and then the end will come.",
    reference: "24:14",
    chapter: 24,
    verse_start: 14,
    book_id: matthew.id,
    category: "Prophecy",
    theme: "Gospel to All Nations",
    context: "Jesus prophesying worldwide gospel preaching"
  },
  
  # ===== MARK - CONTINUED EXTENSIVE COLLECTION =====
  
  # More Healing Accounts
  %{
    text: "Why does this generation ask for a sign? Truly I tell you, no sign will be given to it.",
    reference: "8:12",
    chapter: 8,
    verse_start: 12,
    book_id: mark.id,
    category: "Question",
    theme: "Signs",
    context: "Jesus refusing to give a sign to the Pharisees"
  },
  %{
    text: "Be careful. Watch out for the yeast of the Pharisees and that of Herod.",
    reference: "8:15",
    chapter: 8,
    verse_start: 15,
    book_id: mark.id,
    category: "Warning",
    theme: "False Teaching",
    context: "Jesus warning about the influence of religious and political leaders"
  },
  %{
    text: "Why are you talking about having no bread? Do you still not see or understand? Are your hearts hardened?",
    reference: "8:17",
    chapter: 8,
    verse_start: 17,
    book_id: mark.id,
    category: "Question",
    theme: "Understanding",
    context: "Jesus questioning the disciples' lack of understanding"
  },
  %{
    text: "Do you have eyes but fail to see, and ears but fail to hear? And don't you remember?",
    reference: "8:18",
    chapter: 8,
    verse_start: 18,
    book_id: mark.id,
    category: "Question",
    theme: "Spiritual Perception",
    context: "Jesus challenging the disciples about spiritual perception"
  },
  
  # Healing the Blind Man at Bethsaida
  %{
    text: "Do you see anything?",
    reference: "8:23",
    chapter: 8,
    verse_start: 23,
    book_id: mark.id,
    category: "Question",
    theme: "Progressive Healing",
    context: "Jesus asking during the gradual healing of the blind man"
  },
  %{
    text: "Don't even go into the village.",
    reference: "8:26",
    chapter: 8,
    verse_start: 26,
    book_id: mark.id,
    category: "Command",
    theme: "Secrecy",
    context: "Jesus instructing the healed man about secrecy"
  },
  
  # Peter's Declaration and Jesus' Prediction
  %{
    text: "Who do people say I am?",
    reference: "8:27",
    chapter: 8,
    verse_start: 27,
    book_id: mark.id,
    category: "Question",
    theme: "Identity",
    context: "Jesus asking about public opinion of his identity"
  },
  %{
    text: "But what about you? Who do you say I am?",
    reference: "8:29",
    chapter: 8,
    verse_start: 29,
    book_id: mark.id,
    category: "Question",
    theme: "Personal Faith",
    context: "Jesus asking the disciples for their personal confession"
  },
  %{
    text: "The Son of Man must suffer many things and be rejected by the elders, the chief priests and the teachers of the law, and that he must be killed and after three days rise again.",
    reference: "8:31",
    chapter: 8,
    verse_start: 31,
    book_id: mark.id,
    category: "Prophecy",
    theme: "Passion Prediction",
    context: "Jesus' first passion prediction"
  },
  %{
    text: "Whoever wants to be my disciple must deny themselves and take up their cross and follow me.",
    reference: "8:34",
    chapter: 8,
    verse_start: 34,
    book_id: mark.id,
    category: "Teaching",
    theme: "Cross-bearing",
    context: "Jesus teaching about the cost of discipleship"
  },
  %{
    text: "For whoever wants to save their life will lose it, but whoever loses their life for me and for the gospel will save it.",
    reference: "8:35",
    chapter: 8,
    verse_start: 35,
    book_id: mark.id,
    category: "Teaching",
    theme: "Life and Death",
    context: "Jesus teaching about true life through self-sacrifice"
  },
  %{
    text: "What good is it for someone to gain the whole world, yet forfeit their soul?",
    reference: "8:36",
    chapter: 8,
    verse_start: 36,
    book_id: mark.id,
    category: "Question",
    theme: "Soul's Value",
    context: "Jesus teaching about the soul's supreme value"
  },
  %{
    text: "Or what can anyone give in exchange for their soul?",
    reference: "8:37",
    chapter: 8,
    verse_start: 37,
    book_id: mark.id,
    category: "Question",
    theme: "Soul's Worth",
    context: "Jesus emphasizing the soul's incomparable worth"
  },
  %{
    text: "If anyone is ashamed of me and my words in this adulterous and sinful generation, the Son of Man will be ashamed of them when he comes in his Father's glory with the holy angels.",
    reference: "8:38",
    chapter: 8,
    verse_start: 38,
    book_id: mark.id,
    category: "Warning",
    theme: "Shame and Glory",
    context: "Jesus warning about being ashamed of him"
  },
  %{
    text: "Truly I tell you, some who are standing here will not taste death before they see that the kingdom of God has come with power.",
    reference: "9:1",
    chapter: 9,
    verse_start: 1,
    book_id: mark.id,
    category: "Promise",
    theme: "Kingdom Power",
    context: "Jesus promising some would see the kingdom's power"
  },
  
  # Transfiguration
  %{
    text: "This is my Son, whom I love. Listen to him!",
    reference: "9:7",
    chapter: 9,
    verse_start: 7,
    book_id: mark.id,
    category: "Declaration",
    theme: "Divine Voice",
    context: "God's voice at the transfiguration"
  },
  %{
    text: "Don't tell anyone what you have seen, until the Son of Man has risen from the dead.",
    reference: "9:9",
    chapter: 9,
    verse_start: 9,
    book_id: mark.id,
    category: "Command",
    theme: "Secrecy",
    context: "Jesus commanding silence about the transfiguration"
  },
  %{
    text: "Why do the teachers of the law say that Elijah must come first?",
    reference: "9:11",
    chapter: 9,
    verse_start: 11,
    book_id: mark.id,
    category: "Question",
    theme: "Elijah",
    context: "Disciples asking about Elijah's coming"
  },
  %{
    text: "To be sure, Elijah does come first, and restores all things. Why then is it written that the Son of Man must suffer much and be rejected?",
    reference: "9:12",
    chapter: 9,
    verse_start: 12,
    book_id: mark.id,
    category: "Teaching",
    theme: "Elijah and Suffering",
    context: "Jesus teaching about Elijah and his own suffering"
  },
  %{
    text: "But I tell you, Elijah has come, and they have done to him everything they wished, just as it is written about him.",
    reference: "9:13",
    chapter: 9,
    verse_start: 13,
    book_id: mark.id,
    category: "Teaching",
    theme: "Elijah's Fate",
    context: "Jesus revealing that Elijah (John the Baptist) has already come"
  },
  
  # Healing the Boy with Evil Spirit
  %{
    text: "What are you arguing with them about?",
    reference: "9:16",
    chapter: 9,
    verse_start: 16,
    book_id: mark.id,
    category: "Question",
    theme: "Argument",
    context: "Jesus asking about the argument between disciples and scribes"
  },
  %{
    text: "You unbelieving generation, how long shall I stay with you? How long shall I put up with you? Bring the boy to me.",
    reference: "9:19",
    chapter: 9,
    verse_start: 19,
    book_id: mark.id,
    category: "Lament",
    theme: "Unbelief",
    context: "Jesus expressing frustration with unbelief"
  },
  %{
    text: "How long has he been like this?",
    reference: "9:21",
    chapter: 9,
    verse_start: 21,
    book_id: mark.id,
    category: "Question",
    theme: "Duration of Suffering",
    context: "Jesus asking about the boy's condition"
  },
  %{
    text: "If you can? Everything is possible for one who believes.",
    reference: "9:23",
    chapter: 9,
    verse_start: 23,
    book_id: mark.id,
    category: "Teaching",
    theme: "Faith and Possibility",
    context: "Jesus teaching about faith's power"
  },
  %{
    text: "You deaf and mute spirit, I command you, come out of him and never enter him again.",
    reference: "9:25",
    chapter: 9,
    verse_start: 25,
    book_id: mark.id,
    category: "Command",
    theme: "Exorcism",
    context: "Jesus commanding the spirit to leave the boy"
  },
  %{
    text: "This kind can come out only by prayer.",
    reference: "9:29",
    chapter: 9,
    verse_start: 29,
    book_id: mark.id,
    category: "Teaching",
    theme: "Prayer",
    context: "Jesus teaching about prayer's necessity for some demons"
  },
  
  # Second Passion Prediction
  %{
    text: "The Son of Man is going to be delivered into the hands of men. They will kill him, and after three days he will rise.",
    reference: "9:31",
    chapter: 9,
    verse_start: 31,
    book_id: mark.id,
    category: "Prophecy",
    theme: "Death and Resurrection",
    context: "Jesus' second passion prediction"
  },
  
  # Teaching about Greatness
  %{
    text: "What were you arguing about on the road?",
    reference: "9:33",
    chapter: 9,
    verse_start: 33,
    book_id: mark.id,
    category: "Question",
    theme: "Argument",
    context: "Jesus asking about the disciples' argument"
  },
  %{
    text: "Anyone who wants to be first must be the very last, and the servant of all.",
    reference: "9:35",
    chapter: 9,
    verse_start: 35,
    book_id: mark.id,
    category: "Teaching",
    theme: "Servant Leadership",
    context: "Jesus teaching about true greatness"
  },
  %{
    text: "Whoever welcomes one of these little children in my name welcomes me; and whoever welcomes me does not welcome me but the one who sent me.",
    reference: "9:37",
    chapter: 9,
    verse_start: 37,
    book_id: mark.id,
    category: "Teaching",
    theme: "Welcoming Children",
    context: "Jesus teaching about receiving children"
  },
  
  # Not Against Us
  %{
    text: "Do not stop him. For no one who does a miracle in my name can in the next moment say anything bad about me.",
    reference: "9:39",
    chapter: 9,
    verse_start: 39,
    book_id: mark.id,
    category: "Teaching",
    theme: "Inclusivity",
    context: "Jesus teaching about not hindering others who work in his name"
  },
  %{
    text: "Whoever is not against us is for us.",
    reference: "9:40",
    chapter: 9,
    verse_start: 40,
    book_id: mark.id,
    category: "Teaching",
    theme: "Sides",
    context: "Jesus teaching about spiritual alliances"
  },
  %{
    text: "Truly I tell you, anyone who gives you a cup of water in my name because you belong to the Messiah will certainly not lose their reward.",
    reference: "9:41",
    chapter: 9,
    verse_start: 41,
    book_id: mark.id,
    category: "Promise",
    theme: "Reward",
    context: "Jesus promising reward for small acts of kindness"
  },
  
  # Warnings about Sin
  %{
    text: "If anyone causes one of these little ones—those who believe in me—to stumble, it would be better for them if a large millstone were hung around their neck and they were thrown into the sea.",
    reference: "9:42",
    chapter: 9,
    verse_start: 42,
    book_id: mark.id,
    category: "Warning",
    theme: "Causing Others to Sin",
    context: "Jesus warning about causing others to stumble"
  },
  %{
    text: "If your hand causes you to stumble, cut it off. It is better for you to enter life maimed than with two hands to go into hell, where the fire never goes out.",
    reference: "9:43",
    chapter: 9,
    verse_start: 43,
    book_id: mark.id,
    category: "Teaching",
    theme: "Radical Commitment",
    context: "Jesus teaching about radical commitment to righteousness"
  },
  %{
    text: "And if your foot causes you to stumble, cut it off. It is better for you to enter life crippled than to have two feet and be thrown into hell.",
    reference: "9:45",
    chapter: 9,
    verse_start: 45,
    book_id: mark.id,
    category: "Teaching",
    theme: "Avoiding Sin",
    context: "Jesus teaching about avoiding sin at any cost"
  },
  %{
    text: "And if your eye causes you to stumble, pluck it out. It is better for you to enter the kingdom of God with one eye than to have two eyes and be thrown into hell.",
    reference: "9:47",
    chapter: 9,
    verse_start: 47,
    book_id: mark.id,
    category: "Teaching",
    theme: "Kingdom Priority",
    context: "Jesus teaching about prioritizing the kingdom"
  },
  %{
    text: "Everyone will be salted with fire.",
    reference: "9:49",
    chapter: 9,
    verse_start: 49,
    book_id: mark.id,
    category: "Teaching",
    theme: "Purification",
    context: "Jesus teaching about purification through trials"
  },
  %{
    text: "Salt is good, but if it loses its saltiness, how can you make it salty again? Have salt among yourselves, and be at peace with each other.",
    reference: "9:50",
    chapter: 9,
    verse_start: 50,
    book_id: mark.id,
    category: "Teaching",
    theme: "Saltiness",
    context: "Jesus teaching about maintaining spiritual effectiveness"
  },
  
  # ===== LUKE - CONTINUED EXTENSIVE COLLECTION =====
  
  # Centurion's Faith
  %{
    text: "I tell you, I have not found such great faith even in Israel.",
    reference: "7:9",
    chapter: 7,
    verse_start: 9,
    book_id: luke.id,
    category: "Teaching",
    theme: "Great Faith",
    context: "Jesus marveling at the centurion's faith"
  },
  
  # Raising the Widow's Son
  %{
    text: "Don't cry.",
    reference: "7:13",
    chapter: 7,
    verse_start: 13,
    book_id: luke.id,
    category: "Comfort",
    theme: "Compassion",
    context: "Jesus comforting the widow at Nain"
  },
  %{
    text: "Young man, I say to you, get up!",
    reference: "7:14",
    chapter: 7,
    verse_start: 14,
    book_id: luke.id,
    category: "Command",
    theme: "Resurrection",
    context: "Jesus raising the widow's son from the dead"
  },
  
  # John the Baptist's Question
  %{
    text: "Go back and report to John what you have seen and heard: The blind receive sight, the lame walk, those who have leprosy are cleansed, the deaf hear, the dead are raised, and the good news is proclaimed to the poor.",
    reference: "7:22",
    chapter: 7,
    verse_start: 22,
    book_id: luke.id,
    category: "Teaching",
    theme: "Messianic Signs",
    context: "Jesus answering John the Baptist's question about his identity"
  },
  %{
    text: "Blessed is anyone who does not stumble on account of me.",
    reference: "7:23",
    chapter: 7,
    verse_start: 23,
    book_id: luke.id,
    category: "Blessing",
    theme: "Not Stumbling",
    context: "Jesus blessing those who don't stumble over him"
  },
  %{
    text: "What did you go out into the wilderness to see? A reed swayed by the wind?",
    reference: "7:24",
    chapter: 7,
    verse_start: 24,
    book_id: luke.id,
    category: "Question",
    theme: "John's Character",
    context: "Jesus describing John the Baptist's character"
  },
  %{
    text: "If not, what did you go out to see? A man dressed in fine clothes? No, those who wear expensive clothes and indulge in luxury are in palaces.",
    reference: "7:25",
    chapter: 7,
    verse_start: 25,
    book_id: luke.id,
    category: "Question",
    theme: "Luxury vs Simplicity",
    context: "Jesus contrasting John with luxury"
  },
  %{
    text: "But what did you go out to see? A prophet? Yes, I tell you, and more than a prophet.",
    reference: "7:26",
    chapter: 7,
    verse_start: 26,
    book_id: luke.id,
    category: "Teaching",
    theme: "John's Greatness",
    context: "Jesus declaring John's greatness"
  },
  %{
    text: "I tell you, among those born of women there is no one greater than John; yet the one who is least in the kingdom of God is greater than he.",
    reference: "7:28",
    chapter: 7,
    verse_start: 28,
    book_id: luke.id,
    category: "Teaching",
    theme: "Kingdom Greatness",
    context: "Jesus comparing John to kingdom citizens"
  },
  
  # Sinful Woman Anoints Jesus
  %{
    text: "If this man were a prophet, he would know who is touching him and what kind of woman she is—that she is a sinner.",
    reference: "7:39",
    chapter: 7,
    verse_start: 39,
    book_id: luke.id,
    category: "Quote",
    theme: "Judgment",
    context: "Simon the Pharisee's thoughts about Jesus"
  },
  %{
    text: "Simon, I have something to tell you.",
    reference: "7:40",
    chapter: 7,
    verse_start: 40,
    book_id: luke.id,
    category: "Statement",
    theme: "Teaching Moment",
    context: "Jesus preparing to teach Simon through a parable"
  },
  %{
    text: "Two people owed money to a certain moneylender. One owed him five hundred denarii, and the other fifty.",
    reference: "7:41",
    chapter: 7,
    verse_start: 41,
    book_id: luke.id,
    category: "Parable",
    theme: "Debt",
    context: "Jesus teaching about forgiveness through debt parable"
  },
  %{
    text: "Neither of them had the money to pay him back, so he forgave the debts of both. Now which of them will love him more?",
    reference: "7:42",
    chapter: 7,
    verse_start: 42,
    book_id: luke.id,
    category: "Question",
    theme: "Love and Forgiveness",
    context: "Jesus asking about the relationship between forgiveness and love"
  },
  %{
    text: "You have judged correctly.",
    reference: "7:43",
    chapter: 7,
    verse_start: 43,
    book_id: luke.id,
    category: "Affirmation",
    theme: "Correct Judgment",
    context: "Jesus affirming Simon's answer"
  },
  %{
    text: "Do you see this woman? I came into your house. You did not give me any water for my feet, but she wet my feet with her tears and wiped them with her hair.",
    reference: "7:44",
    chapter: 7,
    verse_start: 44,
    book_id: luke.id,
    category: "Teaching",
    theme: "Hospitality",
    context: "Jesus contrasting the woman's actions with Simon's"
  },
  %{
    text: "You did not give me a kiss, but this woman, from the time I entered, has not stopped kissing my feet.",
    reference: "7:45",
    chapter: 7,
    verse_start: 45,
    book_id: luke.id,
    category: "Teaching",
    theme: "Affection",
    context: "Jesus comparing demonstrations of love"
  },
  %{
    text: "You did not put oil on my head, but she has poured perfume on my feet.",
    reference: "7:46",
    chapter: 7,
    verse_start: 46,
    book_id: luke.id,
    category: "Teaching",
    theme: "Honor",
    context: "Jesus highlighting the woman's extravagant honor"
  },
  %{
    text: "Therefore, I tell you, her many sins have been forgiven—as her great love has shown. But whoever has been forgiven little loves little.",
    reference: "7:47",
    chapter: 7,
    verse_start: 47,
    book_id: luke.id,
    category: "Teaching",
    theme: "Love Proportional to Forgiveness",
    context: "Jesus explaining the relationship between forgiveness and love"
  },
  %{
    text: "Your sins are forgiven.",
    reference: "7:48",
    chapter: 7,
    verse_start: 48,
    book_id: luke.id,
    category: "Declaration",
    theme: "Forgiveness",
    context: "Jesus declaring the woman's sins forgiven"
  },
  %{
    text: "Your faith has saved you; go in peace.",
    reference: "7:50",
    chapter: 7,
    verse_start: 50,
    book_id: luke.id,
    category: "Blessing",
    theme: "Faith and Peace",
    context: "Jesus blessing the woman with peace"
  },
  
  # Parable of the Sower (Luke's version)
  %{
    text: "A farmer went out to sow his seed. As he was scattering the seed, some fell along the path; it was trampled on, and the birds ate it up.",
    reference: "8:5",
    chapter: 8,
    verse_start: 5,
    book_id: luke.id,
    category: "Parable",
    theme: "Sowing",
    context: "Jesus teaching about receiving God's word"
  },
  %{
    text: "The knowledge of the secrets of the kingdom of God has been given to you, but to others I speak in parables, so that, 'though seeing, they may not see; though hearing, they may not understand.'",
    reference: "8:10",
    chapter: 8,
    verse_start: 10,
    book_id: luke.id,
    category: "Teaching",
    theme: "Parables' Purpose",
    context: "Jesus explaining why he speaks in parables"
  },
  
  # Jesus' Family
  %{
    text: "My mother and brothers are those who hear God's word and put it into practice.",
    reference: "8:21",
    chapter: 8,
    verse_start: 21,
    book_id: luke.id,
    category: "Teaching",
    theme: "Spiritual Family",
    context: "Jesus defining his true family"
  },
  
  # Calming the Storm (Luke's version)
  %{
    text: "Let us go over to the other side of the lake.",
    reference: "8:22",
    chapter: 8,
    verse_start: 22,
    book_id: luke.id,
    category: "Command",
    theme: "Crossing Over",
    context: "Jesus directing the disciples to cross the lake"
  },
  %{
    text: "Where is your faith?",
    reference: "8:25",
    chapter: 8,
    verse_start: 25,
    book_id: luke.id,
    category: "Question",
    theme: "Faith",
    context: "Jesus questioning the disciples after calming the storm"
  },
  
  # ===== JOHN - CONTINUED EXTENSIVE COLLECTION =====
  
  # Samaritan Woman at the Well
  %{
    text: "Will you give me a drink?",
    reference: "4:7",
    chapter: 4,
    verse_start: 7,
    book_id: john.id,
    category: "Question",
    theme: "Request",
    context: "Jesus asking the Samaritan woman for water"
  },
  %{
    text: "If you knew the gift of God and who it is that asks you for a drink, you would have asked him and he would have given you living water.",
    reference: "4:10",
    chapter: 4,
    verse_start: 10,
    book_id: john.id,
    category: "Teaching",
    theme: "Living Water",
    context: "Jesus introducing the concept of living water"
  },
  %{
    text: "Everyone who drinks this water will be thirsty again, but whoever drinks the water I give them will never thirst.",
    reference: "4:13-14",
    chapter: 4,
    verse_start: 13,
    verse_end: 14,
    book_id: john.id,
    category: "Teaching",
    theme: "Eternal Satisfaction",
    context: "Jesus explaining the nature of spiritual water"
  },
  %{
    text: "Indeed, the water I give them will become in them a spring of water welling up to eternal life.",
    reference: "4:14",
    chapter: 4,
    verse_start: 14,
    book_id: john.id,
    category: "Promise",
    theme: "Eternal Life",
    context: "Jesus promising eternal life through spiritual water"
  },
  %{
    text: "Go, call your husband and come back.",
    reference: "4:16",
    chapter: 4,
    verse_start: 16,
    book_id: john.id,
    category: "Command",
    theme: "Truth Revelation",
    context: "Jesus beginning to reveal the woman's personal life"
  },
  %{
    text: "You are right when you say you have no husband.",
    reference: "4:17",
    chapter: 4,
    verse_start: 17,
    book_id: john.id,
    category: "Affirmation",
    theme: "Truth",
    context: "Jesus acknowledging the woman's truthfulness"
  },
  %{
    text: "The fact is, you have had five husbands, and the man you now have is not your husband. What you have just said is quite true.",
    reference: "4:18",
    chapter: 4,
    verse_start: 18,
    book_id: john.id,
    category: "Revelation",
    theme: "Omniscience",
    context: "Jesus revealing his supernatural knowledge"
  },
  %{
    text: "A time is coming when you will worship the Father neither on this mountain nor in Jerusalem.",
    reference: "4:21",
    chapter: 4,
    verse_start: 21,
    book_id: john.id,
    category: "Prophecy",
    theme: "True Worship",
    context: "Jesus prophesying about the nature of worship"
  },
  %{
    text: "You Samaritans worship what you do not know; we worship what we do know, for salvation is from the Jews.",
    reference: "4:22",
    chapter: 4,
    verse_start: 22,
    book_id: john.id,
    category: "Teaching",
    theme: "Salvation's Origin",
    context: "Jesus teaching about salvation's source"
  },
  %{
    text: "Yet a time is coming and has now come when the true worshipers will worship the Father in the Spirit and in truth, for they are the kind of worshipers the Father seeks.",
    reference: "4:23",
    chapter: 4,
    verse_start: 23,
    book_id: john.id,
    category: "Teaching",
    theme: "Spirit and Truth",
    context: "Jesus defining true worship"
  },
  %{
    text: "God is spirit, and his worshipers must worship in the Spirit and in truth.",
    reference: "4:24",
    chapter: 4,
    verse_start: 24,
    book_id: john.id,
    category: "Teaching",
    theme: "God's Nature",
    context: "Jesus revealing God's spiritual nature"
  },
  %{
    text: "I, the one speaking to you—I am he.",
    reference: "4:26",
    chapter: 4,
    verse_start: 26,
    book_id: john.id,
    category: "Declaration",
    theme: "Messianic Identity",
    context: "Jesus revealing his identity as Messiah to the Samaritan woman"
  },
  
  # Samaritans Believe
  %{
    text: "My food is to do the will of him who sent me and to finish his work.",
    reference: "4:34",
    chapter: 4,
    verse_start: 34,
    book_id: john.id,
    category: "Teaching",
    theme: "God's Will",
    context: "Jesus explaining his true sustenance"
  },
  %{
    text: "Don't you have a saying, 'It's still four months until harvest'? I tell you, open your eyes and look at the fields! They are ripe for harvest.",
    reference: "4:35",
    chapter: 4,
    verse_start: 35,
    book_id: john.id,
    category: "Teaching",
    theme: "Spiritual Harvest",
    context: "Jesus teaching about the spiritual harvest"
  },
  %{
    text: "Even now the one who reaps draws a wage and harvests a crop for eternal life, so that the sower and the reaper may be glad together.",
    reference: "4:36",
    chapter: 4,
    verse_start: 36,
    book_id: john.id,
    category: "Teaching",
    theme: "Eternal Harvest",
    context: "Jesus teaching about eternal rewards"
  },
  %{
    text: "Thus the saying 'One sows and another reaps' is true.",
    reference: "4:37",
    chapter: 4,
    verse_start: 37,
    book_id: john.id,
    category: "Teaching",
    theme: "Sowing and Reaping",
    context: "Jesus explaining the principle of spiritual labor"
  },
  %{
    text: "I sent you to reap what you have not worked for. Others have done the hard work, and you have reaped the benefits of their labor.",
    reference: "4:38",
    chapter: 4,
    verse_start: 38,
    book_id: john.id,
    category: "Teaching",
    theme: "Building on Others' Work",
    context: "Jesus teaching about building on previous work"
  },
  
  # Healing the Official's Son
  %{
    text: "Unless you people see signs and wonders, you will never believe.",
    reference: "4:48",
    chapter: 4,
    verse_start: 48,
    book_id: john.id,
    category: "Teaching",
    theme: "Signs and Faith",
    context: "Jesus commenting on the need for signs"
  },
  %{
    text: "Go, your son will live.",
    reference: "4:50",
    chapter: 4,
    verse_start: 50,
    book_id: john.id,
    category: "Healing",
    theme: "Distant Healing",
    context: "Jesus healing the official's son from a distance"
  },
  
  # Healing at Pool of Bethesda
  %{
    text: "Do you want to get well?",
    reference: "5:6",
    chapter: 5,
    verse_start: 6,
    book_id: john.id,
    category: "Question",
    theme: "Desire for Healing",
    context: "Jesus asking the lame man about his desire for healing"
  },
  %{
    text: "Get up! Pick up your mat and walk.",
    reference: "5:8",
    chapter: 5,
    verse_start: 8,
    book_id: john.id,
    category: "Command",
    theme: "Healing",
    context: "Jesus healing the lame man at Bethesda"
  },
  %{
    text: "See, you are well again. Stop sinning or something worse may happen to you.",
    reference: "5:14",
    chapter: 5,
    verse_start: 14,
    book_id: john.id,
    category: "Warning",
    theme: "Sin and Consequences",
    context: "Jesus warning the healed man about sin"
  },
  
  # Jesus' Authority
  %{
    text: "My Father is always at his work to this very day, and I too am working.",
    reference: "5:17",
    chapter: 5,
    verse_start: 17,
    book_id: john.id,
    category: "Teaching",
    theme: "Continuous Work",
    context: "Jesus explaining why he works on the Sabbath"
  },
  %{
    text: "Very truly I tell you, the Son can do nothing by himself; he can do only what he sees his Father doing, because whatever the Father does the Son also does.",
    reference: "5:19",
    chapter: 5,
    verse_start: 19,
    book_id: john.id,
    category: "Teaching",
    theme: "Father-Son Relationship",
    context: "Jesus explaining his relationship with the Father"
  },
  %{
    text: "For the Father loves the Son and shows him all he does. Yes, and he will show him even greater works than these, so that you will be amazed.",
    reference: "5:20",
    chapter: 5,
    verse_start: 20,
    book_id: john.id,
    category: "Teaching",
    theme: "Greater Works",
    context: "Jesus promising greater works to come"
  },
  %{
    text: "For just as the Father raises the dead and gives them life, even so the Son gives life to whom he is pleased to give it.",
    reference: "5:21",
    chapter: 5,
    verse_start: 21,
    book_id: john.id,
    category: "Teaching",
    theme: "Life-giving Power",
    context: "Jesus claiming the power to give life"
  },
  %{
    text: "Moreover, the Father judges no one, but has entrusted all judgment to the Son.",
    reference: "5:22",
    chapter: 5,
    verse_start: 22,
    book_id: john.id,
    category: "Teaching",
    theme: "Judgment Authority",
    context: "Jesus claiming authority to judge"
  },
  %{
    text: "That all may honor the Son just as they honor the Father. Whoever does not honor the Son does not honor the Father, who sent him.",
    reference: "5:23",
    chapter: 5,
    verse_start: 23,
    book_id: john.id,
    category: "Teaching",
    theme: "Honor",
    context: "Jesus teaching about honoring the Son"
  },
  %{
    text: "Very truly I tell you, whoever hears my word and believes him who sent me has eternal life and will not be judged but has crossed over from death to life.",
    reference: "5:24",
    chapter: 5,
    verse_start: 24,
    book_id: john.id,
    category: "Promise",
    theme: "Eternal Life",
    context: "Jesus promising eternal life through belief"
  },
  %{
    text: "Very truly I tell you, a time is coming and has now come when the dead will hear the voice of the Son of God and those who hear will live.",
    reference: "5:25",
    chapter: 5,
    verse_start: 25,
    book_id: john.id,
    category: "Teaching",
    theme: "Spiritual Resurrection",
    context: "Jesus teaching about spiritual resurrection"
  },
  %{
    text: "For as the Father has life in himself, so he has granted the Son also to have life in himself.",
    reference: "5:26",
    chapter: 5,
    verse_start: 26,
    book_id: john.id,
    category: "Teaching",
    theme: "Life in Himself",
    context: "Jesus explaining his inherent life"
  },
  %{
    text: "And he has given him authority to judge because he is the Son of Man.",
    reference: "5:27",
    chapter: 5,
    verse_start: 27,
    book_id: john.id,
    category: "Teaching",
    theme: "Son of Man Authority",
    context: "Jesus explaining his authority as Son of Man"
  }
]

IO.puts("Seeding #{length(complete_expansion)} additional canonical sayings...")

# Seed all complete expansion sayings
Enum.each(complete_expansion, fn saying_data ->
  Saying
  |> Ash.Changeset.for_create(:create, saying_data)
  |> Ash.create!()
end)

# Get final count
total_sayings = length(Saying.read!())
IO.puts("Successfully added #{length(complete_expansion)} new sayings!")
IO.puts("Total sayings now in database: #{total_sayings}")

if total_sayings >= 400 do
  IO.puts("🎉 Excellent progress! We're well on our way to the canonical 500-600 estimate!")
  IO.puts("📖 This comprehensive collection now includes extensive Gospel material.")
else
  IO.puts("📚 Making great progress toward the full canonical collection.")
end