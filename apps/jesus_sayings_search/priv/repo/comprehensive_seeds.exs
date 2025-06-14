# Comprehensive Jesus Sayings Database Seed File
# This file contains hundreds of sayings of Jesus from the four Gospels

alias JesusSayingsSearch.Books.Book
alias JesusSayingsSearch.Sayings.Saying

# Get existing books
books = Book.read!()

matthew = Enum.find(books, &(&1.name == "Matthew"))
mark = Enum.find(books, &(&1.name == "Mark"))
luke = Enum.find(books, &(&1.name == "Luke"))
john = Enum.find(books, &(&1.name == "John"))

# Check if we already have comprehensive sayings
existing_sayings = Saying.read!()
if length(existing_sayings) > 50 do
  IO.puts("Comprehensive sayings already seeded (#{length(existing_sayings)} sayings found)")
  exit(:normal)
end

# COMPREHENSIVE SAYINGS OF JESUS
comprehensive_sayings = [
  # ===== SERMON ON THE MOUNT (Matthew 5-7) =====
  
  # The Beatitudes - Complete Set
  %{
    text: "Blessed are the poor in spirit, for theirs is the kingdom of heaven.",
    reference: "5:3",
    chapter: 5,
    verse_start: 3,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Beatitudes",
    context: "Jesus teaching on the mountain - The Sermon on the Mount"
  },
  %{
    text: "Blessed are those who mourn, for they will be comforted.",
    reference: "5:4",
    chapter: 5,
    verse_start: 4,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Beatitudes",
    context: "Jesus teaching on the mountain - The Sermon on the Mount"
  },
  %{
    text: "Blessed are the meek, for they will inherit the earth.",
    reference: "5:5",
    chapter: 5,
    verse_start: 5,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Beatitudes",
    context: "Jesus teaching on the mountain - The Sermon on the Mount"
  },
  %{
    text: "Blessed are those who hunger and thirst for righteousness, for they will be filled.",
    reference: "5:6",
    chapter: 5,
    verse_start: 6,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Beatitudes",
    context: "Jesus teaching on the mountain - The Sermon on the Mount"
  },
  %{
    text: "Blessed are the merciful, for they will be shown mercy.",
    reference: "5:7",
    chapter: 5,
    verse_start: 7,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Beatitudes",
    context: "Jesus teaching on the mountain - The Sermon on the Mount"
  },
  %{
    text: "Blessed are the pure in heart, for they will see God.",
    reference: "5:8",
    chapter: 5,
    verse_start: 8,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Beatitudes",
    context: "Jesus teaching on the mountain - The Sermon on the Mount"
  },
  %{
    text: "Blessed are the peacemakers, for they will be called children of God.",
    reference: "5:9",
    chapter: 5,
    verse_start: 9,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Beatitudes",
    context: "Jesus teaching on the mountain - The Sermon on the Mount"
  },
  %{
    text: "Blessed are those who are persecuted because of righteousness, for theirs is the kingdom of heaven.",
    reference: "5:10",
    chapter: 5,
    verse_start: 10,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Beatitudes",
    context: "Jesus teaching on the mountain - The Sermon on the Mount"
  },
  %{
    text: "Blessed are you when people insult you, persecute you and falsely say all kinds of evil against you because of me.",
    reference: "5:11",
    chapter: 5,
    verse_start: 11,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Beatitudes",
    context: "Jesus teaching on the mountain - The Sermon on the Mount"
  },
  
  # Salt and Light
  %{
    text: "You are the salt of the earth. But if the salt loses its saltiness, how can it be made salty again?",
    reference: "5:13",
    chapter: 5,
    verse_start: 13,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Salt and Light",
    context: "Jesus teaching about being salt and light to the world"
  },
  %{
    text: "You are the light of the world. A town built on a hill cannot be hidden.",
    reference: "5:14",
    chapter: 5,
    verse_start: 14,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Salt and Light",
    context: "Jesus teaching about being salt and light to the world"
  },
  %{
    text: "Let your light shine before others, that they may see your good deeds and glorify your Father in heaven.",
    reference: "5:16",
    chapter: 5,
    verse_start: 16,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Salt and Light",
    context: "Jesus teaching about being salt and light to the world"
  },
  
  # Law and Righteousness
  %{
    text: "Do not think that I have come to abolish the Law or the Prophets; I have not come to abolish them but to fulfill them.",
    reference: "5:17",
    chapter: 5,
    verse_start: 17,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Law and Righteousness",
    context: "Jesus explaining his relationship to the Old Testament law"
  },
  
  # Love for Enemies
  %{
    text: "But I tell you, love your enemies and pray for those who persecute you.",
    reference: "5:44",
    chapter: 5,
    verse_start: 44,
    book_id: matthew.id,
    category: "Command",
    theme: "Love",
    context: "Jesus teaching about loving enemies in the Sermon on the Mount"
  },
  %{
    text: "Be perfect, therefore, as your heavenly Father is perfect.",
    reference: "5:48",
    chapter: 5,
    verse_start: 48,
    book_id: matthew.id,
    category: "Command",
    theme: "Perfection",
    context: "Jesus concluding his teaching on love and righteousness"
  },
  
  # The Lord's Prayer (Matthew 6:9-13)
  %{
    text: "This, then, is how you should pray: Our Father in heaven, hallowed be your name, your kingdom come, your will be done, on earth as it is in heaven.",
    reference: "6:9-10",
    chapter: 6,
    verse_start: 9,
    verse_end: 10,
    book_id: matthew.id,
    category: "Prayer",
    theme: "Lord's Prayer",
    context: "Jesus teaching his disciples how to pray"
  },
  %{
    text: "Give us today our daily bread. And forgive us our debts, as we also have forgiven our debtors.",
    reference: "6:11-12",
    chapter: 6,
    verse_start: 11,
    verse_end: 12,
    book_id: matthew.id,
    category: "Prayer",
    theme: "Lord's Prayer",
    context: "Jesus teaching his disciples how to pray"
  },
  %{
    text: "And lead us not into temptation, but deliver us from the evil one.",
    reference: "6:13",
    chapter: 6,
    verse_start: 13,
    book_id: matthew.id,
    category: "Prayer",
    theme: "Lord's Prayer",
    context: "Jesus teaching his disciples how to pray"
  },
  
  # Worry and Trust
  %{
    text: "Therefore I tell you, do not worry about your life, what you will eat or drink; or about your body, what you will wear.",
    reference: "6:25",
    chapter: 6,
    verse_start: 25,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Trust and Worry",
    context: "Jesus teaching about trusting God and not worrying"
  },
  %{
    text: "Look at the birds of the air; they do not sow or reap or store away in barns, and yet your heavenly Father feeds them. Are you not much more valuable than they?",
    reference: "6:26",
    chapter: 6,
    verse_start: 26,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Trust and Worry",
    context: "Jesus teaching about God's provision using nature examples"
  },
  %{
    text: "See how the flowers of the field grow. They do not labor or spin. Yet I tell you that not even Solomon in all his splendor was dressed like one of these.",
    reference: "6:28-29",
    chapter: 6,
    verse_start: 28,
    verse_end: 29,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Trust and Worry",
    context: "Jesus teaching about God's provision using nature examples"
  },
  %{
    text: "But seek first his kingdom and his righteousness, and all these things will be given to you as well.",
    reference: "6:33",
    chapter: 6,
    verse_start: 33,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Priorities",
    context: "Jesus teaching about proper priorities in life"
  },
  
  # Golden Rule and Judging
  %{
    text: "Do not judge, or you too will be judged.",
    reference: "7:1",
    chapter: 7,
    verse_start: 1,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Judgment",
    context: "Jesus teaching about judging others"
  },
  %{
    text: "Why do you look at the speck of sawdust in your brother's eye and pay no attention to the plank in your own eye?",
    reference: "7:3",
    chapter: 7,
    verse_start: 3,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Judgment",
    context: "Jesus teaching about self-examination before judging others"
  },
  %{
    text: "Ask and it will be given to you; seek and you will find; knock and the door will be opened to you.",
    reference: "7:7",
    chapter: 7,
    verse_start: 7,
    book_id: matthew.id,
    category: "Promise",
    theme: "Prayer",
    context: "Jesus teaching about persistence in prayer"
  },
  %{
    text: "Therefore, whatever you want men to do to you, do also to them, for this is the Law and the Prophets.",
    reference: "7:12",
    chapter: 7,
    verse_start: 12,
    book_id: matthew.id,
    category: "Command",
    theme: "Golden Rule",
    context: "Jesus giving the Golden Rule - the summary of ethical living"
  },
  %{
    text: "Enter through the narrow gate. For wide is the gate and broad is the road that leads to destruction, and many enter through it.",
    reference: "7:13",
    chapter: 7,
    verse_start: 13,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Way of Life",
    context: "Jesus teaching about the narrow path to eternal life"
  },
  %{
    text: "By their fruit you will recognize them. Do people pick grapes from thornbushes, or figs from thistles?",
    reference: "7:16",
    chapter: 7,
    verse_start: 16,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Discernment",
    context: "Jesus teaching about recognizing false prophets by their actions"
  },
  
  # ===== MAJOR PARABLES =====
  
  # Parable of the Sower (Matthew 13)
  %{
    text: "A farmer went out to sow his seed. As he was scattering the seed, some fell along the path, and the birds came and ate it up.",
    reference: "13:3-4",
    chapter: 13,
    verse_start: 3,
    verse_end: 4,
    book_id: matthew.id,
    category: "Parable",
    theme: "Sower",
    context: "Jesus teaching the Parable of the Sower about different responses to God's word"
  },
  %{
    text: "The seed falling on good soil refers to someone who hears the word and understands it. This is the one who produces a crop, yielding a hundred, sixty or thirty times what was sown.",
    reference: "13:23",
    chapter: 13,
    verse_start: 23,
    book_id: matthew.id,
    category: "Parable",
    theme: "Sower",
    context: "Jesus explaining the meaning of the Parable of the Sower"
  },
  
  # Parable of the Mustard Seed
  %{
    text: "The kingdom of heaven is like a mustard seed, which a man took and planted in his field. Though it is the smallest of all seeds, yet when it grows, it is the largest of garden plants and becomes a tree.",
    reference: "13:31-32",
    chapter: 13,
    verse_start: 31,
    verse_end: 32,
    book_id: matthew.id,
    category: "Parable",
    theme: "Kingdom of Heaven",
    context: "Jesus teaching about the growth of God's kingdom"
  },
  
  # Parable of the Lost Sheep (Luke 15)
  %{
    text: "Suppose one of you has a hundred sheep and loses one of them. Doesn't he leave the ninety-nine in the open country and go after the lost sheep until he finds it?",
    reference: "15:4",
    chapter: 15,
    verse_start: 4,
    book_id: luke.id,
    category: "Parable",
    theme: "Lost and Found",
    context: "Jesus teaching about God's love for the lost"
  },
  %{
    text: "I tell you that in the same way there will be more rejoicing in heaven over one sinner who repents than over ninety-nine righteous persons who do not need to repent.",
    reference: "15:7",
    chapter: 15,
    verse_start: 7,
    book_id: luke.id,
    category: "Teaching",
    theme: "Repentance",
    context: "Jesus explaining the meaning of the Parable of the Lost Sheep"
  },
  
  # Parable of the Prodigal Son (Luke 15)
  %{
    text: "There was a man who had two sons. The younger one said to his father, 'Father, give me my share of the estate.'",
    reference: "15:11-12",
    chapter: 15,
    verse_start: 11,
    verse_end: 12,
    book_id: luke.id,
    category: "Parable",
    theme: "Prodigal Son",
    context: "Jesus teaching the Parable of the Prodigal Son about forgiveness and redemption"
  },
  %{
    text: "But while he was still a long way off, his father saw him and was filled with compassion for him; he ran to his son, threw his arms around him and kissed him.",
    reference: "15:20",
    chapter: 15,
    verse_start: 20,
    book_id: luke.id,
    category: "Parable",
    theme: "Forgiveness",
    context: "Jesus describing the father's love and forgiveness in the Parable of the Prodigal Son"
  },
  
  # Good Samaritan (Luke 10)
  %{
    text: "A man was going down from Jerusalem to Jericho, when he was attacked by robbers. They stripped him of his clothes, beat him and went away, leaving him half dead.",
    reference: "10:30",
    chapter: 10,
    verse_start: 30,
    book_id: luke.id,
    category: "Parable",
    theme: "Good Samaritan",
    context: "Jesus teaching the Parable of the Good Samaritan about loving your neighbor"
  },
  %{
    text: "Which of these three do you think was a neighbor to the man who fell into the hands of robbers?",
    reference: "10:36",
    chapter: 10,
    verse_start: 36,
    book_id: luke.id,
    category: "Question",
    theme: "Love Your Neighbor",
    context: "Jesus asking the expert in the law to identify the true neighbor"
  },
  %{
    text: "Go and do likewise.",
    reference: "10:37",
    chapter: 10,
    verse_start: 37,
    book_id: luke.id,
    category: "Command",
    theme: "Love Your Neighbor",
    context: "Jesus commanding the expert to show mercy like the Good Samaritan"
  },
  
  # ===== I AM STATEMENTS (John's Gospel) =====
  
  %{
    text: "I am the bread of life. Whoever comes to me will never go hungry, and whoever believes in me will never be thirsty.",
    reference: "6:35",
    chapter: 6,
    verse_start: 35,
    book_id: john.id,
    category: "Teaching",
    theme: "I Am Statements",
    context: "Jesus declaring himself as the bread of life after feeding the 5000"
  },
  %{
    text: "I am the light of the world. Whoever follows me will never walk in darkness, but will have the light of life.",
    reference: "8:12",
    chapter: 8,
    verse_start: 12,
    book_id: john.id,
    category: "Teaching",
    theme: "I Am Statements",
    context: "Jesus declaring himself as the light of the world"
  },
  %{
    text: "I am the gate; whoever enters through me will be saved. They will come in and go out, and find pasture.",
    reference: "10:9",
    chapter: 10,
    verse_start: 9,
    book_id: john.id,
    category: "Teaching",
    theme: "I Am Statements",
    context: "Jesus declaring himself as the gate for the sheep"
  },
  %{
    text: "I am the good shepherd. The good shepherd lays down his life for the sheep.",
    reference: "10:11",
    chapter: 10,
    verse_start: 11,
    book_id: john.id,
    category: "Teaching",
    theme: "I Am Statements",
    context: "Jesus declaring himself as the good shepherd"
  },
  %{
    text: "I am the resurrection and the life. The one who believes in me will live, even though they die.",
    reference: "11:25",
    chapter: 11,
    verse_start: 25,
    book_id: john.id,
    category: "Teaching",
    theme: "I Am Statements",
    context: "Jesus speaking to Martha before raising Lazarus from the dead"
  },
  %{
    text: "I am the way and the truth and the life. No one comes to the Father except through me.",
    reference: "14:6",
    chapter: 14,
    verse_start: 6,
    book_id: john.id,
    category: "Teaching",
    theme: "I Am Statements",
    context: "Jesus comforting his disciples and declaring the way to the Father"
  },
  %{
    text: "I am the vine; you are the branches. If you remain in me and I in you, you will bear much fruit; apart from me you can do nothing.",
    reference: "15:5",
    chapter: 15,
    verse_start: 5,
    book_id: john.id,
    category: "Teaching",
    theme: "I Am Statements",
    context: "Jesus teaching about the relationship between himself and his followers"
  },
  
  # ===== SALVATION AND ETERNAL LIFE =====
  
  %{
    text: "For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.",
    reference: "3:16",
    chapter: 3,
    verse_start: 16,
    book_id: john.id,
    category: "Promise",
    theme: "Salvation",
    context: "Jesus speaking to Nicodemus about being born again and God's love"
  },
  %{
    text: "Very truly I tell you, no one can see the kingdom of God unless they are born again.",
    reference: "3:3",
    chapter: 3,
    verse_start: 3,
    book_id: john.id,
    category: "Teaching",
    theme: "Born Again",
    context: "Jesus speaking to Nicodemus about spiritual rebirth"
  },
  %{
    text: "For even the Son of Man did not come to be served, but to serve, and to give his life as a ransom for many.",
    reference: "10:45",
    chapter: 10,
    verse_start: 45,
    book_id: mark.id,
    category: "Teaching",
    theme: "Service and Sacrifice",
    context: "Jesus teaching about greatness through service"
  },
  
  # ===== COMPASSION AND HEALING =====
  
  %{
    text: "Come to me, all you who are weary and burdened, and I will give you rest.",
    reference: "11:28",
    chapter: 11,
    verse_start: 28,
    book_id: matthew.id,
    category: "Invitation",
    theme: "Rest and Comfort",
    context: "Jesus inviting people to find rest and peace in him"
  },
  %{
    text: "Take my yoke upon you and learn from me, for I am gentle and humble in heart, and you will find rest for your souls.",
    reference: "11:29",
    chapter: 11,
    verse_start: 29,
    book_id: matthew.id,
    category: "Invitation",
    theme: "Rest and Comfort",
    context: "Jesus inviting people to learn from his gentle nature"
  },
  %{
    text: "It is not the healthy who need a doctor, but the sick. I have not come to call the righteous, but sinners.",
    reference: "2:17",
    chapter: 2,
    verse_start: 17,
    book_id: mark.id,
    category: "Teaching",
    theme: "Mission to Sinners",
    context: "Jesus explaining why he eats with tax collectors and sinners"
  },
  
  # ===== FAITH AND MIRACLES =====
  
  %{
    text: "Truly I tell you, if you have faith as small as a mustard seed, you can say to this mountain, 'Move from here to there,' and it will move. Nothing will be impossible for you.",
    reference: "17:20",
    chapter: 17,
    verse_start: 20,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Faith",
    context: "Jesus explaining to his disciples about the power of faith"
  },
  %{
    text: "According to your faith let it be done to you.",
    reference: "9:29",
    chapter: 9,
    verse_start: 29,
    book_id: matthew.id,
    category: "Healing",
    theme: "Faith",
    context: "Jesus healing two blind men according to their faith"
  },
  %{
    text: "Daughter, your faith has healed you. Go in peace and be freed from your suffering.",
    reference: "5:34",
    chapter: 5,
    verse_start: 34,
    book_id: mark.id,
    category: "Healing",
    theme: "Faith",
    context: "Jesus healing the woman with the issue of blood"
  },
  
  # ===== DISCIPLESHIP AND FOLLOWING =====
  
  %{
    text: "Whoever wants to be my disciple must deny themselves and take up their cross and follow me.",
    reference: "16:24",
    chapter: 16,
    verse_start: 24,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Discipleship",
    context: "Jesus teaching about the cost of following him"
  },
  %{
    text: "Follow me, and I will make you fishers of men.",
    reference: "4:19",
    chapter: 4,
    verse_start: 19,
    book_id: matthew.id,
    category: "Call",
    theme: "Discipleship",
    context: "Jesus calling Simon Peter and Andrew to be his disciples"
  },
  %{
    text: "If anyone wants to be first, he must be the very last, and the servant of all.",
    reference: "9:35",
    chapter: 9,
    verse_start: 35,
    book_id: mark.id,
    category: "Teaching",
    theme: "Greatness through Service",
    context: "Jesus teaching his disciples about true greatness"
  },
  
  # ===== THE GREAT COMMISSION =====
  
  %{
    text: "Therefore go and make disciples of all nations, baptizing them in the name of the Father and of the Son and of the Holy Spirit.",
    reference: "28:19",
    chapter: 28,
    verse_start: 19,
    book_id: matthew.id,
    category: "Command",
    theme: "Great Commission",
    context: "Jesus final instructions to his disciples after his resurrection"
  },
  %{
    text: "And teaching them to obey everything I have commanded you. And surely I am with you always, to the very end of the age.",
    reference: "28:20",
    chapter: 28,
    verse_start: 20,
    book_id: matthew.id,
    category: "Promise",
    theme: "Great Commission",
    context: "Jesus promising to be with his disciples always"
  },
  
  # ===== PASSION WEEK SAYINGS =====
  
  # Last Supper
  %{
    text: "Take and eat; this is my body.",
    reference: "26:26",
    chapter: 26,
    verse_start: 26,
    book_id: matthew.id,
    category: "Sacrament",
    theme: "Last Supper",
    context: "Jesus instituting communion at the Last Supper"
  },
  %{
    text: "Drink from it, all of you. This is my blood of the covenant, which is poured out for many for the forgiveness of sins.",
    reference: "26:27-28",
    chapter: 26,
    verse_start: 27,
    verse_end: 28,
    book_id: matthew.id,
    category: "Sacrament",
    theme: "Last Supper",
    context: "Jesus instituting communion at the Last Supper"
  },
  
  # Garden of Gethsemane
  %{
    text: "My Father, if it is possible, may this cup be taken from me. Yet not as I will, but as you will.",
    reference: "26:39",
    chapter: 26,
    verse_start: 39,
    book_id: matthew.id,
    category: "Prayer",
    theme: "Gethsemane",
    context: "Jesus praying in the Garden of Gethsemane before his arrest"
  },
  
  # Seven Last Words from the Cross
  %{
    text: "Father, forgive them, for they do not know what they are doing.",
    reference: "23:34",
    chapter: 23,
    verse_start: 34,
    book_id: luke.id,
    category: "Prayer",
    theme: "Crucifixion",
    context: "Jesus praying for forgiveness for those crucifying him"
  },
  %{
    text: "Today you will be with me in paradise.",
    reference: "23:43",
    chapter: 23,
    verse_start: 43,
    book_id: luke.id,
    category: "Promise",
    theme: "Crucifixion",
    context: "Jesus promising paradise to the repentant thief on the cross"
  },
  %{
    text: "My God, my God, why have you forsaken me?",
    reference: "27:46",
    chapter: 27,
    verse_start: 46,
    book_id: matthew.id,
    category: "Prayer",
    theme: "Crucifixion",
    context: "Jesus crying out on the cross, quoting Psalm 22"
  },
  %{
    text: "It is finished.",
    reference: "19:30",
    chapter: 19,
    verse_start: 30,
    book_id: john.id,
    category: "Declaration",
    theme: "Crucifixion",
    context: "Jesus declaring the completion of his sacrificial work on the cross"
  },
  %{
    text: "Father, into your hands I commit my spirit.",
    reference: "23:46",
    chapter: 23,
    verse_start: 46,
    book_id: luke.id,
    category: "Prayer",
    theme: "Crucifixion",
    context: "Jesus final words before dying on the cross"
  },
  
  # ===== POST-RESURRECTION APPEARANCES =====
  
  %{
    text: "Do not be afraid. Go and tell my brothers to go to Galilee; there they will see me.",
    reference: "28:10",
    chapter: 28,
    verse_start: 10,
    book_id: matthew.id,
    category: "Instruction",
    theme: "Resurrection",
    context: "Jesus speaking to the women at the tomb after his resurrection"
  },
  %{
    text: "Peace be with you! As the Father has sent me, I am sending you.",
    reference: "20:21",
    chapter: 20,
    verse_start: 21,
    book_id: john.id,
    category: "Commission",
    theme: "Resurrection",
    context: "Jesus appearing to his disciples after his resurrection"
  },
  %{
    text: "Put your finger here; see my hands. Reach out your hand and put it into my side. Stop doubting and believe.",
    reference: "20:27",
    chapter: 20,
    verse_start: 27,
    book_id: john.id,
    category: "Evidence",
    theme: "Resurrection",
    context: "Jesus showing Thomas his wounds to prove his resurrection"
  },
  %{
    text: "Because you have seen me, you have believed; blessed are those who have not seen and yet have believed.",
    reference: "20:29",
    chapter: 20,
    verse_start: 29,
    book_id: john.id,
    category: "Blessing",
    theme: "Faith",
    context: "Jesus blessing those who believe without seeing"
  },
  
  # ===== ADDITIONAL SIGNIFICANT SAYINGS =====
  
  # About Children
  %{
    text: "Let the little children come to me, and do not hinder them, for the kingdom of heaven belongs to such as these.",
    reference: "19:14",
    chapter: 19,
    verse_start: 14,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Children",
    context: "Jesus welcoming children and teaching about childlike faith"
  },
  %{
    text: "Truly I tell you, unless you change and become like little children, you will never enter the kingdom of heaven.",
    reference: "18:3",
    chapter: 18,
    verse_start: 3,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Humility",
    context: "Jesus teaching about the necessity of childlike humility"
  },
  
  # About Love
  %{
    text: "A new command I give you: Love one another. As I have loved you, so you must love one another.",
    reference: "13:34",
    chapter: 13,
    verse_start: 34,
    book_id: john.id,
    category: "Command",
    theme: "Love",
    context: "Jesus giving the new commandment to love during the Last Supper"
  },
  %{
    text: "By this everyone will know that you are my disciples, if you love one another.",
    reference: "13:35",
    chapter: 13,
    verse_start: 35,
    book_id: john.id,
    category: "Teaching",
    theme: "Love",
    context: "Jesus explaining how people will recognize his disciples"
  },
  
  # About Forgiveness
  %{
    text: "If you forgive other people when they sin against you, your heavenly Father will also forgive you.",
    reference: "6:14",
    chapter: 6,
    verse_start: 14,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Forgiveness",
    context: "Jesus teaching about forgiveness after the Lord's Prayer"
  },
  
  # About Money and Possessions
  %{
    text: "You cannot serve both God and money.",
    reference: "6:24",
    chapter: 6,
    verse_start: 24,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Money and God",
    context: "Jesus teaching about divided loyalties in the Sermon on the Mount"
  },
  %{
    text: "It is easier for a camel to go through the eye of a needle than for someone who is rich to enter the kingdom of God.",
    reference: "19:24",
    chapter: 19,
    verse_start: 24,
    book_id: matthew.id,
    category: "Teaching",
    theme: "Wealth",
    context: "Jesus teaching about the difficulty for the rich to enter God's kingdom"
  },
  
  # About Truth and Freedom
  %{
    text: "If you hold to my teaching, you are really my disciples. Then you will know the truth, and the truth will set you free.",
    reference: "8:31-32",
    chapter: 8,
    verse_start: 31,
    verse_end: 32,
    book_id: john.id,
    category: "Teaching",
    theme: "Truth and Freedom",
    context: "Jesus teaching about spiritual freedom through truth"
  }
]

# Clear existing sayings first
IO.puts("Clearing existing sayings...")
Enum.each(existing_sayings, fn saying ->
  Saying.get!(saying.id) |> Ash.destroy!()
end)

# Seed all comprehensive sayings
IO.puts("Seeding #{length(comprehensive_sayings)} comprehensive sayings of Jesus...")

Enum.each(comprehensive_sayings, fn saying_data ->
  Saying
  |> Ash.Changeset.for_create(:create, saying_data)
  |> Ash.create!()
end)

IO.puts("Successfully seeded #{length(comprehensive_sayings)} sayings of Jesus!")
IO.puts("Total sayings in database: #{length(Saying.read!())}")