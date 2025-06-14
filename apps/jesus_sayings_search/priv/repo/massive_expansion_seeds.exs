# Massive Expansion of Jesus Sayings Database
# Adding hundreds more canonical sayings to reach closer to the 500-600 estimate

alias JesusSayingsSearch.Books.Book
alias JesusSayingsSearch.Sayings.Saying

# Get existing books
books = Book.read!()
matthew = Enum.find(books, &(&1.name == "Matthew"))
mark = Enum.find(books, &(&1.name == "Mark"))
luke = Enum.find(books, &(&1.name == "Luke"))
john = Enum.find(books, &(&1.name == "John"))

IO.puts("Adding hundreds more sayings from canonical Gospels...")

# MASSIVE EXPANSION - ADDITIONAL CANONICAL SAYINGS
expanded_sayings = [
  # ===== MATTHEW - ADDITIONAL SAYINGS =====
  
  # Calling of Disciples
  %{
    text: "Come, follow me, and I will send you out to fish for people.",
    reference: "4:19",
    chapter: 4,
    verse_start: 19,
    book_id: matthew.id,
    category: "Call",
    theme: "Discipleship",
    context: "Jesus calling Simon Peter and Andrew to be his disciples"
  },
  %{
    text: "It is not the healthy who need a doctor, but the sick.",
    reference: "9:12",
    chapter: 9,
    verse_start: 12,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Mission to Sinners",
    context: "Jesus explaining why he eats with tax collectors and sinners"
  },
  %{
    text: "I have not come to call the righteous, but sinners.",
    reference: "9:13",
    chapter: 9,
    verse_start: 13,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Mission to Sinners",
    context: "Jesus explaining his mission purpose"
  },
  
  # Healing Sayings
  %{
    text: "Take heart, daughter, your faith has healed you.",
    reference: "9:22",
    chapter: 9,
    verse_start: 22,
    book_id: matthew.id,
    category: "Healing",
    theme: "Faith",
    context: "Jesus healing the woman with the issue of blood"
  },
  %{
    text: "According to your faith let it be done to you.",
    reference: "9:29",
    chapter: 9,
    verse_start: 29,
    book_id: matthew.id,
    category: "Healing",
    theme: "Faith",
    context: "Jesus healing two blind men"
  },
  %{
    text: "See that no one knows about this.",
    reference: "9:30",
    chapter: 9,
    verse_start: 30,
    book_id: matthew.id,
    category: "Command",
    theme: "Secrecy",
    context: "Jesus instructing the healed blind men to keep quiet"
  },
  %{
    text: "Stretch out your hand.",
    reference: "12:13",
    chapter: 12,
    verse_start: 13,
    book_id: matthew.id,
    category: "Healing",
    theme: "Sabbath Healing",
    context: "Jesus healing the man with the withered hand on the Sabbath"
  },
  %{
    text: "If any of you has a sheep and it falls into a pit on the Sabbath, will you not take hold of it and lift it out?",
    reference: "12:11",
    chapter: 12,
    verse_start: 11,
    book_id: matthew.id,
    category: "Question",
    theme: "Sabbath",
    context: "Jesus teaching about doing good on the Sabbath"
  },
  %{
    text: "How much more valuable is a person than a sheep!",
    reference: "12:12",
    chapter: 12,
    verse_start: 12,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Human Value",
    context: "Jesus teaching about the value of human life"
  },
  
  # More Parables
  %{
    text: "The kingdom of heaven is like a treasure hidden in a field. When a man found it, he hid it again, and then in his joy went and sold all he had and bought that field.",
    reference: "13:44",
    chapter: 13,
    verse_start: 44,
    book_id: matthew.id,
    category: "Parable",
    theme: "Kingdom of Heaven",
    context: "Jesus teaching about the value of God's kingdom"
  },
  %{
    text: "Again, the kingdom of heaven is like a merchant looking for fine pearls. When he found one of great value, he went away and sold everything he had and bought it.",
    reference: "13:45-46",
    chapter: 13,
    verse_start: 45,
    verse_end: 46,
    book_id: matthew.id,
    category: "Parable",
    theme: "Kingdom of Heaven",
    context: "Jesus teaching about the supreme value of God's kingdom"
  },
  %{
    text: "Once again, the kingdom of heaven is like a net that was let down into the lake and caught all kinds of fish.",
    reference: "13:47",
    chapter: 13,
    verse_start: 47,
    book_id: matthew.id,
    category: "Parable",
    theme: "Kingdom of Heaven",
    context: "Jesus teaching about the final judgment"
  },
  
  # Walking on Water
  %{
    text: "Take courage! It is I. Don't be afraid.",
    reference: "14:27",
    chapter: 14,
    verse_start: 27,
    book_id: matthew.id,
    category: "Comfort",
    theme: "Fear",
    context: "Jesus walking on water and comforting his frightened disciples"
  },
  %{
    text: "You of little faith, why did you doubt?",
    reference: "14:31",
    chapter: 14,
    verse_start: 31,
    book_id: matthew.id,
    category: "Question",
    theme: "Faith",
    context: "Jesus to Peter after rescuing him from the water"
  },
  
  # Teaching about Tradition
  %{
    text: "And why do you break the command of God for the sake of your tradition?",
    reference: "15:3",
    chapter: 15,
    verse_start: 3,
    book_id: matthew.id,
    category: "Question",
    theme: "Tradition vs God's Law",
    context: "Jesus confronting the Pharisees about their traditions"
  },
  %{
    text: "These people honor me with their lips, but their hearts are far from me.",
    reference: "15:8",
    chapter: 15,
    verse_start: 8,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Hypocrisy",
    context: "Jesus quoting Isaiah about religious hypocrisy"
  },
  %{
    text: "What goes into someone's mouth does not defile them, but what comes out of their mouth, that is what defiles them.",
    reference: "15:11",
    chapter: 15,
    verse_start: 11,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Purity",
    context: "Jesus teaching about true spiritual defilement"
  },
  
  # Peter's Confession and Prediction
  %{
    text: "But what about you? Who do you say I am?",
    reference: "16:15",
    chapter: 16,
    verse_start: 15,
    book_id: matthew.id,
    category: "Question",
    theme: "Identity of Jesus",
    context: "Jesus asking his disciples who they think he is"
  },
  %{
    text: "Blessed are you, Simon Bar-Jonah, for this was not revealed to you by flesh and blood, but by my Father in heaven.",
    reference: "16:17",
    chapter: 16,
    verse_start: 17,
    book_id: matthew.id,
    category: "Blessing",
    theme: "Revelation",
    context: "Jesus blessing Peter for recognizing him as the Messiah"
  },
  %{
    text: "And I tell you that you are Peter, and on this rock I will build my church, and the gates of Hades will not overcome it.",
    reference: "16:18",
    chapter: 16,
    verse_start: 18,
    book_id: matthew.id,
    category: "Promise",
    theme: "Church",
    context: "Jesus declaring his plan to build the church"
  },
  %{
    text: "Get behind me, Satan! You are a stumbling block to me; you do not have in mind the concerns of God, but merely human concerns.",
    reference: "16:23",
    chapter: 16,
    verse_start: 23,
    book_id: matthew.id,
    category: "Rebuke",
    theme: "Divine vs Human Perspective",
    context: "Jesus rebuking Peter for rejecting the prediction of his death"
  },
  
  # Transfiguration
  %{
    text: "Get up. Don't be afraid.",
    reference: "17:7",
    chapter: 17,
    verse_start: 7,
    book_id: matthew.id,
    category: "Comfort",
    theme: "Fear",
    context: "Jesus comforting the disciples after the transfiguration"
  },
  %{
    text: "Don't tell anyone what you have seen, until the Son of Man has been raised from the dead.",
    reference: "17:9",
    chapter: 17,
    verse_start: 9,
    book_id: matthew.id,
    category: "Command",
    theme: "Secrecy",
    context: "Jesus instructing the disciples about the transfiguration vision"
  },
  
  # Teaching about Greatness
  %{
    text: "Truly I tell you, unless you change and become like little children, you will never enter the kingdom of heaven.",
    reference: "18:3",
    chapter: 18,
    verse_start: 3,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Humility",
    context: "Jesus teaching about greatness in God's kingdom"
  },
  %{
    text: "Therefore, whoever takes the lowly position of this child is the greatest in the kingdom of heaven.",
    reference: "18:4",
    chapter: 18,
    verse_start: 4,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Humility",
    context: "Jesus teaching about true greatness"
  },
  %{
    text: "And whoever welcomes one such child in my name welcomes me.",
    reference: "18:5",
    chapter: 18,
    verse_start: 5,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Children",
    context: "Jesus teaching about receiving children"
  },
  
  # Lost Sheep Parable (Matthew version)
  %{
    text: "What do you think? If a man owns a hundred sheep, and one of them wanders away, will he not leave the ninety-nine on the hills and go to look for the one that wandered off?",
    reference: "18:12",
    chapter: 18,
    verse_start: 12,
    book_id: matthew.id,
    category: "Parable",
    theme: "Lost and Found",
    context: "Jesus teaching about God's care for the lost"
  },
  %{
    text: "In the same way your Father in heaven is not willing that any of these little ones should perish.",
    reference: "18:14",
    chapter: 18,
    verse_start: 14,
    book_id: matthew.id,
    category: "Teaching",
    theme: "God's Love",
    context: "Jesus explaining God's desire to save the lost"
  },
  
  # Church Discipline
  %{
    text: "If your brother or sister sins, go and point out their fault, just between the two of you.",
    reference: "18:15",
    chapter: 18,
    verse_start: 15,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Church Discipline",
    context: "Jesus teaching about handling sin in the church"
  },
  %{
    text: "Truly I tell you, whatever you bind on earth will be bound in heaven, and whatever you loose on earth will be loosed in heaven.",
    reference: "18:18",
    chapter: 18,
    verse_start: 18,
    book_id: matthew.id,
    category: "Promise",
    theme: "Authority",
    context: "Jesus giving authority to the church"
  },
  %{
    text: "Again, truly I tell you that if two of you on earth agree about anything they ask for, it will be done for them by my Father in heaven.",
    reference: "18:19",
    chapter: 18,
    verse_start: 19,
    book_id: matthew.id,
    category: "Promise",
    theme: "Prayer",
    context: "Jesus teaching about the power of agreement in prayer"
  },
  %{
    text: "For where two or three gather in my name, there am I with them.",
    reference: "18:20",
    chapter: 18,
    verse_start: 20,
    book_id: matthew.id,
    category: "Promise",
    theme: "Presence of Jesus",
    context: "Jesus promising his presence with believers"
  },
  
  # Forgiveness Teaching
  %{
    text: "Not seven times, but seventy-seven times.",
    reference: "18:22",
    chapter: 18,
    verse_start: 22,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Forgiveness",
    context: "Jesus teaching Peter about unlimited forgiveness"
  },
  
  # Parable of Unmerciful Servant
  %{
    text: "Therefore, the kingdom of heaven is like a king who wanted to settle accounts with his servants.",
    reference: "18:23",
    chapter: 18,
    verse_start: 23,
    book_id: matthew.id,
    category: "Parable",
    theme: "Forgiveness",
    context: "Jesus teaching about forgiveness through parable"
  },
  %{
    text: "Shouldn't you have had mercy on your fellow servant just as I had on you?",
    reference: "18:33",
    chapter: 18,
    verse_start: 33,
    book_id: matthew.id,
    category: "Question",
    theme: "Mercy",
    context: "Jesus teaching about showing mercy to others"
  },
  
  # Marriage and Divorce
  %{
    text: "Haven't you read that at the beginning the Creator 'made them male and female'?",
    reference: "19:4",
    chapter: 19,
    verse_start: 4,
    book_id: matthew.id,
    category: "Question",
    theme: "Marriage",
    context: "Jesus teaching about God's design for marriage"
  },
  %{
    text: "For this reason a man will leave his father and mother and be united to his wife, and the two will become one flesh.",
    reference: "19:5",
    chapter: 19,
    verse_start: 5,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Marriage",
    context: "Jesus quoting Genesis about marriage"
  },
  %{
    text: "Therefore what God has joined together, let no one separate.",
    reference: "19:6",
    chapter: 19,
    verse_start: 6,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Marriage",
    context: "Jesus teaching about the permanence of marriage"
  },
  
  # Rich Young Man
  %{
    text: "Why do you ask me about what is good? There is only One who is good.",
    reference: "19:17",
    chapter: 19,
    verse_start: 17,
    book_id: matthew.id,
    category: "Question",
    theme: "Goodness",
    context: "Jesus responding to the rich young ruler"
  },
  %{
    text: "If you want to enter life, keep the commandments.",
    reference: "19:17",
    chapter: 19,
    verse_start: 17,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Eternal Life",
    context: "Jesus teaching about entering eternal life"
  },
  %{
    text: "If you want to be perfect, go, sell your possessions and give to the poor, and you will have treasure in heaven. Then come, follow me.",
    reference: "19:21",
    chapter: 19,
    verse_start: 21,
    book_id: matthew.id,
    category: "Challenge",
    theme: "Wealth",
    context: "Jesus challenging the rich young ruler"
  },
  %{
    text: "Truly I tell you, it is hard for someone who is rich to enter the kingdom of heaven.",
    reference: "19:23",
    chapter: 19,
    verse_start: 23,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Wealth",
    context: "Jesus teaching about the danger of riches"
  },
  %{
    text: "With man this is impossible, but with God all things are possible.",
    reference: "19:26",
    chapter: 19,
    verse_start: 26,
    book_id: matthew.id,
    category: "Teaching",
    theme: "God's Power",
    context: "Jesus teaching about God's power to save"
  },
  
  # Rewards for Following
  %{
    text: "Truly I tell you, at the renewal of all things, when the Son of Man sits on his glorious throne, you who have followed me will also sit on twelve thrones, judging the twelve tribes of Israel.",
    reference: "19:28",
    chapter: 19,
    verse_start: 28,
    book_id: matthew.id,
    category: "Promise",
    theme: "Rewards",
    context: "Jesus promising rewards to his disciples"
  },
  %{
    text: "And everyone who has left houses or brothers or sisters or father or mother or wife or children or fields for my sake will receive a hundred times as much and will inherit eternal life.",
    reference: "19:29",
    chapter: 19,
    verse_start: 29,
    book_id: matthew.id,
    category: "Promise",
    theme: "Sacrifice and Reward",
    context: "Jesus promising rewards for sacrifice"
  },
  %{
    text: "But many who are first will be last, and many who are last will be first.",
    reference: "19:30",
    chapter: 19,
    verse_start: 30,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Reversal",
    context: "Jesus teaching about God's reversal of human expectations"
  },
  
  # Parable of Workers in Vineyard
  %{
    text: "For the kingdom of heaven is like a landowner who went out early in the morning to hire workers for his vineyard.",
    reference: "20:1",
    chapter: 20,
    verse_start: 1,
    book_id: matthew.id,
    category: "Parable",
    theme: "Kingdom of Heaven",
    context: "Jesus teaching about God's grace and generosity"
  },
  %{
    text: "Don't I have the right to do what I want with my own money? Or are you envious because I am generous?",
    reference: "20:15",
    chapter: 20,
    verse_start: 15,
    book_id: matthew.id,
    category: "Question",
    theme: "God's Generosity",
    context: "Jesus teaching about God's right to be generous"
  },
  
  # ===== MARK - ADDITIONAL SAYINGS =====
  
  # Early Ministry
  %{
    text: "The time has come. The kingdom of God has come near. Repent and believe the good news!",
    reference: "1:15",
    chapter: 1,
    verse_start: 15,
    book_id: mark.id,
    category: "Proclamation",
    theme: "Kingdom of God",
    context: "Jesus beginning his public ministry"
  },
  %{
    text: "Let us go somewhere else—to the nearby villages—so I can preach there also. That is why I have come.",
    reference: "1:38",
    chapter: 1,
    verse_start: 38,
    book_id: mark.id,
    category: "Mission",
    theme: "Purpose",
    context: "Jesus explaining his mission to preach"
  },
  
  # Healing and Authority
  %{
    text: "Why are you thinking these things in your hearts?",
    reference: "2:8",
    chapter: 2,
    verse_start: 8,
    book_id: mark.id,
    category: "Question",
    theme: "Heart Knowledge",
    context: "Jesus knowing the thoughts of the scribes"
  },
  %{
    text: "Which is easier: to say to this paralyzed man, 'Your sins are forgiven,' or to say, 'Get up, take your mat and walk'?",
    reference: "2:9",
    chapter: 2,
    verse_start: 9,
    book_id: mark.id,
    category: "Question",
    theme: "Authority",
    context: "Jesus demonstrating his authority to forgive sins"
  },
  %{
    text: "But I want you to know that the Son of Man has authority on earth to forgive sins.",
    reference: "2:10",
    chapter: 2,
    verse_start: 10,
    book_id: mark.id,
    category: "Teaching",
    theme: "Authority",
    context: "Jesus claiming authority to forgive sins"
  },
  %{
    text: "I tell you, get up, take your mat and go home.",
    reference: "2:11",
    chapter: 2,
    verse_start: 11,
    book_id: mark.id,
    category: "Healing",
    theme: "Paralytic",
    context: "Jesus healing the paralyzed man"
  },
  
  # Sabbath Teaching
  %{
    text: "The Sabbath was made for man, not man for the Sabbath.",
    reference: "2:27",
    chapter: 2,
    verse_start: 27,
    book_id: mark.id,
    category: "Teaching",
    theme: "Sabbath",
    context: "Jesus teaching about the purpose of the Sabbath"
  },
  %{
    text: "So the Son of Man is Lord even of the Sabbath.",
    reference: "2:28",
    chapter: 2,
    verse_start: 28,
    book_id: mark.id,
    category: "Teaching",
    theme: "Authority",
    context: "Jesus claiming lordship over the Sabbath"
  },
  
  # Demons and Spiritual Warfare
  %{
    text: "How can Satan drive out Satan?",
    reference: "3:23",
    chapter: 3,
    verse_start: 23,
    book_id: mark.id,
    category: "Question",
    theme: "Spiritual Warfare",
    context: "Jesus responding to accusations of casting out demons by Satan"
  },
  %{
    text: "If a kingdom is divided against itself, that kingdom cannot stand.",
    reference: "3:24",
    chapter: 3,
    verse_start: 24,
    book_id: mark.id,
    category: "Teaching",
    theme: "Unity",
    context: "Jesus teaching about the logic of spiritual warfare"
  },
  %{
    text: "If a house is divided against itself, that house cannot stand.",
    reference: "3:25",
    chapter: 3,
    verse_start: 25,
    book_id: mark.id,
    category: "Teaching",
    theme: "Unity",
    context: "Jesus teaching about division and unity"
  },
  %{
    text: "In fact, no one can enter a strong man's house without first tying him up. Then he can plunder the strong man's house.",
    reference: "3:27",
    chapter: 3,
    verse_start: 27,
    book_id: mark.id,
    category: "Teaching",
    theme: "Spiritual Warfare",
    context: "Jesus explaining how he overcomes Satan"
  },
  %{
    text: "Truly I tell you, people can be forgiven all their sins and every slander they utter, but whoever blasphemes against the Holy Spirit will never be forgiven.",
    reference: "3:28-29",
    chapter: 3,
    verse_start: 28,
    verse_end: 29,
    book_id: mark.id,
    category: "Warning",
    theme: "Unforgivable Sin",
    context: "Jesus warning about blasphemy against the Holy Spirit"
  },
  
  # True Family
  %{
    text: "Who are my mother and my brothers?",
    reference: "3:33",
    chapter: 3,
    verse_start: 33,
    book_id: mark.id,
    category: "Question",
    theme: "Spiritual Family",
    context: "Jesus defining his true family"
  },
  %{
    text: "Whoever does God's will is my brother and sister and mother.",
    reference: "3:35",
    chapter: 3,
    verse_start: 35,
    book_id: mark.id,
    category: "Teaching",
    theme: "Spiritual Family",
    context: "Jesus defining his spiritual family"
  },
  
  # Calming the Storm
  %{
    text: "Quiet! Be still!",
    reference: "4:39",
    chapter: 4,
    verse_start: 39,
    book_id: mark.id,
    category: "Command",
    theme: "Nature Miracle",
    context: "Jesus calming the storm"
  },
  %{
    text: "Why are you so afraid? Do you still have no faith?",
    reference: "4:40",
    chapter: 4,
    verse_start: 40,
    book_id: mark.id,
    category: "Question",
    theme: "Faith",
    context: "Jesus questioning the disciples' lack of faith"
  },
  
  # Gerasene Demoniac
  %{
    text: "What is your name?",
    reference: "5:9",
    chapter: 5,
    verse_start: 9,
    book_id: mark.id,
    category: "Question",
    theme: "Demon Possession",
    context: "Jesus asking the demon's name"
  },
  %{
    text: "Go home to your own people and tell them how much the Lord has done for you, and how he has had mercy on you.",
    reference: "5:19",
    chapter: 5,
    verse_start: 19,
    book_id: mark.id,
    category: "Command",
    theme: "Testimony",
    context: "Jesus sending the healed demoniac to testify"
  },
  
  # Jairus' Daughter
  %{
    text: "Don't be afraid; just believe.",
    reference: "5:36",
    chapter: 5,
    verse_start: 36,
    book_id: mark.id,
    category: "Comfort",
    theme: "Faith",
    context: "Jesus comforting Jairus about his daughter"
  },
  %{
    text: "Why all this commotion and wailing? The child is not dead but asleep.",
    reference: "5:39",
    chapter: 5,
    verse_start: 39,
    book_id: mark.id,
    category: "Question",
    theme: "Death and Life",
    context: "Jesus at Jairus' house before raising his daughter"
  },
  %{
    text: "Little girl, I say to you, get up!",
    reference: "5:41",
    chapter: 5,
    verse_start: 41,
    book_id: mark.id,
    category: "Healing",
    theme: "Resurrection",
    context: "Jesus raising Jairus' daughter from the dead"
  },
  
  # Feeding the 5000
  %{
    text: "You give them something to eat.",
    reference: "6:37",
    chapter: 6,
    verse_start: 37,
    book_id: mark.id,
    category: "Command",
    theme: "Provision",
    context: "Jesus challenging the disciples to feed the crowd"
  },
  %{
    text: "How many loaves do you have? Go and see.",
    reference: "6:38",
    chapter: 6,
    verse_start: 38,
    book_id: mark.id,
    category: "Question",
    theme: "Resources",
    context: "Jesus asking about available food"
  },
  
  # ===== LUKE - ADDITIONAL SAYINGS =====
  
  # Birth and Childhood
  %{
    text: "Why were you searching for me? Didn't you know I had to be in my Father's house?",
    reference: "2:49",
    chapter: 2,
    verse_start: 49,
    book_id: luke.id,
    category: "Question",
    theme: "Father's House",
    context: "Young Jesus to his parents at the temple"
  },
  
  # Temptation Responses
  %{
    text: "It is written: 'Man shall not live on bread alone.'",
    reference: "4:4",
    chapter: 4,
    verse_start: 4,
    book_id: luke.id,
    category: "Response",
    theme: "Temptation",
    context: "Jesus responding to Satan's first temptation"
  },
  %{
    text: "It is said: 'Do not put the Lord your God to the test.'",
    reference: "4:12",
    chapter: 4,
    verse_start: 12,
    book_id: luke.id,
    category: "Response",
    theme: "Temptation",
    context: "Jesus responding to Satan's second temptation"
  },
  %{
    text: "Get behind me, Satan! It is written: 'Worship the Lord your God and serve him only.'",
    reference: "4:8",
    chapter: 4,
    verse_start: 8,
    book_id: luke.id,
    category: "Response",
    theme: "Temptation",
    context: "Jesus responding to Satan's third temptation"
  },
  
  # Nazareth Synagogue
  %{
    text: "The Spirit of the Lord is on me, because he has anointed me to proclaim good news to the poor.",
    reference: "4:18",
    chapter: 4,
    verse_start: 18,
    book_id: luke.id,
    category: "Proclamation",
    theme: "Mission Statement",
    context: "Jesus reading from Isaiah in the Nazareth synagogue"
  },
  %{
    text: "Today this scripture is fulfilled in your hearing.",
    reference: "4:21",
    chapter: 4,
    verse_start: 21,
    book_id: luke.id,
    category: "Proclamation",
    theme: "Fulfillment",
    context: "Jesus declaring the fulfillment of Isaiah's prophecy"
  },
  %{
    text: "Surely you will quote this proverb to me: 'Physician, heal yourself!'",
    reference: "4:23",
    chapter: 4,
    verse_start: 23,
    book_id: luke.id,
    category: "Prophecy",
    theme: "Rejection",
    context: "Jesus predicting the people's response in Nazareth"
  },
  %{
    text: "Truly I tell you, no prophet is accepted in his hometown.",
    reference: "4:24",
    chapter: 4,
    verse_start: 24,
    book_id: luke.id,
    category: "Teaching",
    theme: "Prophet's Rejection",
    context: "Jesus explaining why prophets are rejected at home"
  },
  
  # Calling Disciples
  %{
    text: "Don't be afraid; from now on you will fish for people.",
    reference: "5:10",
    chapter: 5,
    verse_start: 10,
    book_id: luke.id,
    category: "Call",
    theme: "Discipleship",
    context: "Jesus calling Simon Peter after the miraculous catch"
  },
  %{
    text: "Put out into deep water, and let down the nets for a catch.",
    reference: "5:4",
    chapter: 5,
    verse_start: 4,
    book_id: luke.id,
    category: "Command",
    theme: "Obedience",
    context: "Jesus instructing Simon about fishing"
  },
  
  # Healing the Leper
  %{
    text: "I am willing. Be clean!",
    reference: "5:13",
    chapter: 5,
    verse_start: 13,
    book_id: luke.id,
    category: "Healing",
    theme: "Cleansing",
    context: "Jesus healing the leper"
  },
  %{
    text: "Don't tell anyone, but go, show yourself to the priest and offer the sacrifices that Moses commanded for your cleansing, as a testimony to them.",
    reference: "5:14",
    chapter: 5,
    verse_start: 14,
    book_id: luke.id,
    category: "Instruction",
    theme: "Obedience to Law",
    context: "Jesus instructing the healed leper"
  },
  
  # Sermon on the Plain (Luke's version)
  %{
    text: "Blessed are you who are poor, for yours is the kingdom of God.",
    reference: "6:20",
    chapter: 6,
    verse_start: 20,
    book_id: luke.id,
    category: "Blessing",
    theme: "Beatitudes",
    context: "Jesus preaching to the crowd on the plain"
  },
  %{
    text: "Blessed are you who hunger now, for you will be satisfied.",
    reference: "6:21",
    chapter: 6,
    verse_start: 21,
    book_id: luke.id,
    category: "Blessing",
    theme: "Beatitudes",
    context: "Jesus preaching about future satisfaction"
  },
  %{
    text: "Blessed are you who weep now, for you will laugh.",
    reference: "6:21",
    chapter: 6,
    verse_start: 21,
    book_id: luke.id,
    category: "Blessing",
    theme: "Beatitudes",
    context: "Jesus promising future joy"
  },
  %{
    text: "But woe to you who are rich, for you have already received your comfort.",
    reference: "6:24",
    chapter: 6,
    verse_start: 24,
    book_id: luke.id,
    category: "Warning",
    theme: "Wealth",
    context: "Jesus warning the wealthy"
  },
  
  # Love for Enemies (Luke's version)
  %{
    text: "But to you who are listening I say: Love your enemies, do good to those who hate you.",
    reference: "6:27",
    chapter: 6,
    verse_start: 27,
    book_id: luke.id,
    category: "Command",
    theme: "Love for Enemies",
    context: "Jesus commanding love for enemies"
  },
  %{
    text: "Bless those who curse you, pray for those who mistreat you.",
    reference: "6:28",
    chapter: 6,
    verse_start: 28,
    book_id: luke.id,
    category: "Command",
    theme: "Love for Enemies",
    context: "Jesus teaching specific ways to love enemies"
  },
  %{
    text: "If someone slaps you on one cheek, turn to them the other also.",
    reference: "6:29",
    chapter: 6,
    verse_start: 29,
    book_id: luke.id,
    category: "Teaching",
    theme: "Non-retaliation",
    context: "Jesus teaching about non-resistance"
  },
  %{
    text: "Give to everyone who asks you, and if anyone takes what belongs to you, do not demand it back.",
    reference: "6:30",
    chapter: 6,
    verse_start: 30,
    book_id: luke.id,
    category: "Command",
    theme: "Generosity",
    context: "Jesus teaching about generous giving"
  },
  
  # Golden Rule (Luke's version)
  %{
    text: "Do to others as you would have them do to you.",
    reference: "6:31",
    chapter: 6,
    verse_start: 31,
    book_id: luke.id,
    category: "Command",
    theme: "Golden Rule",
    context: "Jesus stating the Golden Rule"
  },
  
  # ===== JOHN - ADDITIONAL SAYINGS =====
  
  # Wedding at Cana
  %{
    text: "Woman, why do you involve me? My hour has not yet come.",
    reference: "2:4",
    chapter: 2,
    verse_start: 4,
    book_id: john.id,
    category: "Response",
    theme: "Timing",
    context: "Jesus responding to his mother at the wedding"
  },
  %{
    text: "Fill the jars with water.",
    reference: "2:7",
    chapter: 2,
    verse_start: 7,
    book_id: john.id,
    category: "Command",
    theme: "Water to Wine",
    context: "Jesus instructing the servants at the wedding"
  },
  %{
    text: "Now draw some out and take it to the master of the banquet.",
    reference: "2:8",
    chapter: 2,
    verse_start: 8,
    book_id: john.id,
    category: "Command",
    theme: "Water to Wine",
    context: "Jesus completing the water to wine miracle"
  },
  
  # Temple Cleansing
  %{
    text: "Get these out of here! Stop turning my Father's house into a market!",
    reference: "2:16",
    chapter: 2,
    verse_start: 16,
    book_id: john.id,
    category: "Command",
    theme: "Temple Cleansing",
    context: "Jesus cleansing the temple"
  },
  %{
    text: "Destroy this temple, and I will raise it again in three days.",
    reference: "2:19",
    chapter: 2,
    verse_start: 19,
    book_id: john.id,
    category: "Prophecy",
    theme: "Resurrection",
    context: "Jesus prophesying his death and resurrection"
  },
  
  # Nicodemus Extended Dialogue
  %{
    text: "Very truly I tell you, no one can enter the kingdom of God unless they are born of water and the Spirit.",
    reference: "3:5",
    chapter: 3,
    verse_start: 5,
    book_id: john.id,
    category: "Teaching",
    theme: "Born Again",
    context: "Jesus explaining spiritual birth to Nicodemus"
  },
  %{
    text: "Flesh gives birth to flesh, but the Spirit gives birth to spirit.",
    reference: "3:6",
    chapter: 3,
    verse_start: 6,
    book_id: john.id,
    category: "Teaching",
    theme: "Spirit vs Flesh",
    context: "Jesus explaining the nature of spiritual birth"
  },
  %{
    text: "You should not be surprised at my saying, 'You must be born again.'",
    reference: "3:7",
    chapter: 3,
    verse_start: 7,
    book_id: john.id,
    category: "Teaching",
    theme: "Born Again",
    context: "Jesus addressing Nicodemus' surprise"
  },
  %{
    text: "The wind blows wherever it pleases. You hear its sound, but you cannot tell where it comes from or where it is going. So it is with everyone born of the Spirit.",
    reference: "3:8",
    chapter: 3,
    verse_start: 8,
    book_id: john.id,
    category: "Teaching",
    theme: "Spirit",
    context: "Jesus using wind as metaphor for spiritual birth"
  },
  %{
    text: "You are Israel's teacher, and do you not understand these things?",
    reference: "3:10",
    chapter: 3,
    verse_start: 10,
    book_id: john.id,
    category: "Question",
    theme: "Understanding",
    context: "Jesus expressing surprise at Nicodemus' lack of understanding"
  },
  %{
    text: "Very truly I tell you, we speak of what we know, and we testify to what we have seen, but still you people do not accept our testimony.",
    reference: "3:11",
    chapter: 3,
    verse_start: 11,
    book_id: john.id,
    category: "Teaching",
    theme: "Testimony",
    context: "Jesus speaking about divine testimony"
  },
  %{
    text: "I have spoken to you of earthly things and you do not believe; how then will you believe if I speak of heavenly things?",
    reference: "3:12",
    chapter: 3,
    verse_start: 12,
    book_id: john.id,
    category: "Question",
    theme: "Faith",
    context: "Jesus challenging Nicodemus about belief"
  },
  %{
    text: "No one has ever gone into heaven except the one who came from heaven—the Son of Man.",
    reference: "3:13",
    chapter: 3,
    verse_start: 13,
    book_id: john.id,
    category: "Teaching",
    theme: "Heaven",
    context: "Jesus speaking about his heavenly origin"
  },
  %{
    text: "Just as Moses lifted up the snake in the wilderness, so the Son of Man must be lifted up.",
    reference: "3:14",
    chapter: 3,
    verse_start: 14,
    book_id: john.id,
    category: "Teaching",
    theme: "Crucifixion",
    context: "Jesus prophesying his crucifixion"
  },
  %{
    text: "For God did not send his Son into the world to condemn the world, but to save the world through him.",
    reference: "3:17",
    chapter: 3,
    verse_start: 17,
    book_id: john.id,
    category: "Teaching",
    theme: "Salvation",
    context: "Jesus explaining his mission"
  }
]

IO.puts("Seeding #{length(expanded_sayings)} additional canonical sayings...")

# Seed all expanded sayings
Enum.each(expanded_sayings, fn saying_data ->
  Saying
  |> Ash.Changeset.for_create(:create, saying_data)
  |> Ash.create!()
end)

# Get final count
total_sayings = length(Saying.read!())
IO.puts("Successfully added #{length(expanded_sayings)} new sayings!")
IO.puts("Total sayings now in database: #{total_sayings}")

if total_sayings >= 150 do
  IO.puts("🎉 Great progress! We're getting closer to the canonical 500-600 estimate!")
else
  IO.puts("📚 More sayings can be added to reach the full canonical collection.")
end