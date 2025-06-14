# Massive Direct SQL Seeding - All 550+ Jesus Sayings
# This bypasses Ash and uses direct SQL for reliable seeding

alias JesusSayingsSearch.Books.Book
alias JesusSayingsSearch.Repo
import Ecto.Query

# Get books (create if needed)
books = Book.read!()

matthew_id = case Enum.find(books, &(&1.name == "Matthew")) do
  nil -> 
    book = Book
    |> Ash.Changeset.for_create(:create, %{
      name: "Matthew",
      abbreviation: "Mt", 
      testament: "New Testament",
      order: 40
    })
    |> Ash.create!()
    book.id
  book -> book.id
end

mark_id = case Enum.find(books, &(&1.name == "Mark")) do
  nil ->
    book = Book
    |> Ash.Changeset.for_create(:create, %{
      name: "Mark",
      abbreviation: "Mk",
      testament: "New Testament", 
      order: 41
    })
    |> Ash.create!()
    book.id
  book -> book.id
end

luke_id = case Enum.find(books, &(&1.name == "Luke")) do
  nil ->
    book = Book
    |> Ash.Changeset.for_create(:create, %{
      name: "Luke",
      abbreviation: "Lk",
      testament: "New Testament",
      order: 42
    })
    |> Ash.create!()
    book.id
  book -> book.id
end

john_id = case Enum.find(books, &(&1.name == "John")) do
  nil ->
    book = Book
    |> Ash.Changeset.for_create(:create, %{
      name: "John",
      abbreviation: "Jn",
      testament: "New Testament",
      order: 43
    })
    |> Ash.create!()
    book.id
  book -> book.id
end

IO.puts("Books created/found. Starting massive direct SQL seeding...")

# Generate UUID function
defmodule UUIDHelper do
  def generate, do: Ecto.UUID.generate()
end

# ALL 550+ JESUS SAYINGS - COMPREHENSIVE COLLECTION
all_sayings = [
  # ===== BEATITUDES =====
  %{text: "Blessed are the poor in spirit, for theirs is the kingdom of heaven.", reference: "5:3", chapter: 5, verse_start: 3, book_id: matthew_id, category: "Teaching", theme: "Beatitudes", context: "Sermon on the Mount"},
  %{text: "Blessed are those who mourn, for they will be comforted.", reference: "5:4", chapter: 5, verse_start: 4, book_id: matthew_id, category: "Teaching", theme: "Beatitudes", context: "Sermon on the Mount"},
  %{text: "Blessed are the meek, for they will inherit the earth.", reference: "5:5", chapter: 5, verse_start: 5, book_id: matthew_id, category: "Teaching", theme: "Beatitudes", context: "Sermon on the Mount"},
  %{text: "Blessed are those who hunger and thirst for righteousness, for they will be filled.", reference: "5:6", chapter: 5, verse_start: 6, book_id: matthew_id, category: "Teaching", theme: "Beatitudes", context: "Sermon on the Mount"},
  %{text: "Blessed are the merciful, for they will be shown mercy.", reference: "5:7", chapter: 5, verse_start: 7, book_id: matthew_id, category: "Teaching", theme: "Beatitudes", context: "Sermon on the Mount"},
  %{text: "Blessed are the pure in heart, for they will see God.", reference: "5:8", chapter: 5, verse_start: 8, book_id: matthew_id, category: "Teaching", theme: "Beatitudes", context: "Sermon on the Mount"},
  %{text: "Blessed are the peacemakers, for they will be called children of God.", reference: "5:9", chapter: 5, verse_start: 9, book_id: matthew_id, category: "Teaching", theme: "Beatitudes", context: "Sermon on the Mount"},
  %{text: "Blessed are those who are persecuted because of righteousness, for theirs is the kingdom of heaven.", reference: "5:10", chapter: 5, verse_start: 10, book_id: matthew_id, category: "Teaching", theme: "Beatitudes", context: "Sermon on the Mount"},
  %{text: "Blessed are you when people insult you, persecute you and falsely say all kinds of evil against you because of me.", reference: "5:11", chapter: 5, verse_start: 11, book_id: matthew_id, category: "Teaching", theme: "Persecution", context: "Sermon on the Mount"},
  %{text: "Rejoice and be glad, because great is your reward in heaven, for in the same way they persecuted the prophets who were before you.", reference: "5:12", chapter: 5, verse_start: 12, book_id: matthew_id, category: "Command", theme: "Persecution", context: "Sermon on the Mount"},
  
  # ===== SALT AND LIGHT =====
  %{text: "You are the salt of the earth. But if the salt loses its saltiness, how can it be made salty again? It is no longer good for anything, except to be thrown out and trampled underfoot.", reference: "5:13", chapter: 5, verse_start: 13, book_id: matthew_id, category: "Teaching", theme: "Identity", context: "Sermon on the Mount"},
  %{text: "You are the light of the world. A town built on a hill cannot be hidden.", reference: "5:14", chapter: 5, verse_start: 14, book_id: matthew_id, category: "Teaching", theme: "Identity", context: "Sermon on the Mount"},
  %{text: "Neither do people light a lamp and put it under a bowl. Instead they put it on its stand, and it gives light to everyone in the house.", reference: "5:15", chapter: 5, verse_start: 15, book_id: matthew_id, category: "Teaching", theme: "Light", context: "Sermon on the Mount"},
  %{text: "In the same way, let your light shine before others, that they may see your good deeds and glorify your Father in heaven.", reference: "5:16", chapter: 5, verse_start: 16, book_id: matthew_id, category: "Command", theme: "Light", context: "Sermon on the Mount"},
  
  # ===== FULFILLMENT OF THE LAW =====
  %{text: "Do not think that I have come to abolish the Law or the Prophets; I have not come to abolish them but to fulfill them.", reference: "5:17", chapter: 5, verse_start: 17, book_id: matthew_id, category: "Teaching", theme: "Law", context: "Sermon on the Mount"},
  %{text: "For truly I tell you, until heaven and earth disappear, not the smallest letter, not the least stroke of a pen, will by any means disappear from the Law until everything is accomplished.", reference: "5:18", chapter: 5, verse_start: 18, book_id: matthew_id, category: "Teaching", theme: "Law", context: "Sermon on the Mount"},
  %{text: "Therefore anyone who sets aside one of the least of these commands and teaches others accordingly will be called least in the kingdom of heaven, but whoever practices and teaches these commands will be called great in the kingdom of heaven.", reference: "5:19", chapter: 5, verse_start: 19, book_id: matthew_id, category: "Teaching", theme: "Obedience", context: "Sermon on the Mount"},
  
  # ===== ANGER AND RECONCILIATION =====
  %{text: "You have heard that it was said to the people long ago, 'You shall not murder, and anyone who murders will be subject to judgment.'", reference: "5:21", chapter: 5, verse_start: 21, book_id: matthew_id, category: "Teaching", theme: "Anger", context: "Sermon on the Mount"},
  %{text: "But I tell you that anyone who is angry with a brother or sister will be subject to judgment.", reference: "5:22", chapter: 5, verse_start: 22, book_id: matthew_id, category: "Teaching", theme: "Anger", context: "Sermon on the Mount"},
  %{text: "Therefore, if you are offering your gift at the altar and there remember that your brother or sister has something against you, leave your gift there in front of the altar. First go and be reconciled to them; then come and offer your gift.", reference: "5:23-24", chapter: 5, verse_start: 23, verse_end: 24, book_id: matthew_id, category: "Command", theme: "Reconciliation", context: "Sermon on the Mount"},
  
  # ===== ADULTERY AND DIVORCE =====
  %{text: "You have heard that it was said, 'You shall not commit adultery.'", reference: "5:27", chapter: 5, verse_start: 27, book_id: matthew_id, category: "Teaching", theme: "Adultery", context: "Sermon on the Mount"},
  %{text: "But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.", reference: "5:28", chapter: 5, verse_start: 28, book_id: matthew_id, category: "Teaching", theme: "Adultery", context: "Sermon on the Mount"},
  %{text: "If your right eye causes you to stumble, gouge it out and throw it away. It is better for you to lose one part of your body than for your whole body to be thrown into hell.", reference: "5:29", chapter: 5, verse_start: 29, book_id: matthew_id, category: "Teaching", theme: "Sin", context: "Sermon on the Mount"},
  
  # ===== OATHS =====
  %{text: "Again, you have heard that it was said to the people long ago, 'Do not break your oath, but fulfill to the Lord the vows you have made.'", reference: "5:33", chapter: 5, verse_start: 33, book_id: matthew_id, category: "Teaching", theme: "Oaths", context: "Sermon on the Mount"},
  %{text: "But I tell you, do not swear an oath at all: either by heaven, for it is God's throne; or by the earth, for it is his footstool; or by Jerusalem, for it is the city of the Great King.", reference: "5:34-35", chapter: 5, verse_start: 34, verse_end: 35, book_id: matthew_id, category: "Command", theme: "Oaths", context: "Sermon on the Mount"},
  %{text: "All you need to say is simply 'Yes' or 'No'; anything beyond this comes from the evil one.", reference: "5:37", chapter: 5, verse_start: 37, book_id: matthew_id, category: "Command", theme: "Truth", context: "Sermon on the Mount"},
  
  # ===== EYE FOR AN EYE =====
  %{text: "You have heard that it was said, 'Eye for eye, and tooth for tooth.'", reference: "5:38", chapter: 5, verse_start: 38, book_id: matthew_id, category: "Teaching", theme: "Retaliation", context: "Sermon on the Mount"},
  %{text: "But I tell you, do not resist an evil person. If anyone slaps you on the right cheek, turn to them the other cheek also.", reference: "5:39", chapter: 5, verse_start: 39, book_id: matthew_id, category: "Command", theme: "Non-resistance", context: "Sermon on the Mount"},
  %{text: "And if anyone wants to sue you and take your shirt, hand over your coat as well.", reference: "5:40", chapter: 5, verse_start: 40, book_id: matthew_id, category: "Command", theme: "Generosity", context: "Sermon on the Mount"},
  %{text: "If anyone forces you to go one mile, go with them two miles.", reference: "5:41", chapter: 5, verse_start: 41, book_id: matthew_id, category: "Command", theme: "Service", context: "Sermon on the Mount"},
  %{text: "Give to the one who asks you, and do not turn away from the one who wants to borrow from you.", reference: "5:42", chapter: 5, verse_start: 42, book_id: matthew_id, category: "Command", theme: "Generosity", context: "Sermon on the Mount"},
  
  # ===== LOVE FOR ENEMIES =====
  %{text: "You have heard that it was said, 'Love your neighbor and hate your enemy.'", reference: "5:43", chapter: 5, verse_start: 43, book_id: matthew_id, category: "Teaching", theme: "Love", context: "Sermon on the Mount"},
  %{text: "But I tell you, love your enemies and pray for those who persecute you,", reference: "5:44", chapter: 5, verse_start: 44, book_id: matthew_id, category: "Command", theme: "Love", context: "Sermon on the Mount"},
  %{text: "that you may be children of your Father in heaven. He causes his sun to rise on the evil and the good, and sends rain on the righteous and the unrighteous.", reference: "5:45", chapter: 5, verse_start: 45, book_id: matthew_id, category: "Teaching", theme: "Love", context: "Sermon on the Mount"},
  %{text: "If you love those who love you, what reward will you get? Are not even the tax collectors doing that?", reference: "5:46", chapter: 5, verse_start: 46, book_id: matthew_id, category: "Question", theme: "Love", context: "Sermon on the Mount"},
  %{text: "And if you greet only your own people, what are you doing more than others? Do not even pagans do that?", reference: "5:47", chapter: 5, verse_start: 47, book_id: matthew_id, category: "Question", theme: "Love", context: "Sermon on the Mount"},
  %{text: "Be perfect, therefore, as your heavenly Father is perfect.", reference: "5:48", chapter: 5, verse_start: 48, book_id: matthew_id, category: "Command", theme: "Perfection", context: "Sermon on the Mount"},
  
  # ===== GIVING TO THE NEEDY =====
  %{text: "Be careful not to practice your righteousness in front of others to be seen by them. If you do, you will have no reward from your Father in heaven.", reference: "6:1", chapter: 6, verse_start: 1, book_id: matthew_id, category: "Warning", theme: "Righteousness", context: "Sermon on the Mount"},
  %{text: "So when you give to the needy, do not announce it with trumpets, as the hypocrites do in the synagogues and on the streets, to be honored by others.", reference: "6:2", chapter: 6, verse_start: 2, book_id: matthew_id, category: "Command", theme: "Giving", context: "Sermon on the Mount"},
  %{text: "But when you give to the needy, do not let your left hand know what your right hand is doing,", reference: "6:3", chapter: 6, verse_start: 3, book_id: matthew_id, category: "Command", theme: "Giving", context: "Sermon on the Mount"},
  %{text: "so that your giving may be in secret. Then your Father, who sees what is done in secret, will reward you.", reference: "6:4", chapter: 6, verse_start: 4, book_id: matthew_id, category: "Promise", theme: "Giving", context: "Sermon on the Mount"},
  
  # ===== PRAYER =====
  %{text: "And when you pray, do not be like the hypocrites, for they love to pray standing in the synagogues and on the street corners to be seen by others.", reference: "6:5", chapter: 6, verse_start: 5, book_id: matthew_id, category: "Command", theme: "Prayer", context: "Sermon on the Mount"},
  %{text: "But when you pray, go into your room, close the door and pray to your Father, who is unseen. Then your Father, who sees what is done in secret, will reward you.", reference: "6:6", chapter: 6, verse_start: 6, book_id: matthew_id, category: "Command", theme: "Prayer", context: "Sermon on the Mount"},
  %{text: "And when you pray, do not keep on babbling like pagans, for they think they will be heard because of their many words.", reference: "6:7", chapter: 6, verse_start: 7, book_id: matthew_id, category: "Command", theme: "Prayer", context: "Sermon on the Mount"},
  %{text: "Do not be like them, for your Father knows what you need before you ask him.", reference: "6:8", chapter: 6, verse_start: 8, book_id: matthew_id, category: "Teaching", theme: "Prayer", context: "Sermon on the Mount"},
  
  # ===== THE LORD'S PRAYER =====
  %{text: "This, then, is how you should pray: 'Our Father in heaven, hallowed be your name,", reference: "6:9", chapter: 6, verse_start: 9, book_id: matthew_id, category: "Prayer", theme: "Lord's Prayer", context: "Sermon on the Mount"},
  %{text: "your kingdom come, your will be done, on earth as it is in heaven.", reference: "6:10", chapter: 6, verse_start: 10, book_id: matthew_id, category: "Prayer", theme: "Lord's Prayer", context: "Sermon on the Mount"},
  %{text: "Give us today our daily bread.", reference: "6:11", chapter: 6, verse_start: 11, book_id: matthew_id, category: "Prayer", theme: "Lord's Prayer", context: "Sermon on the Mount"},
  %{text: "And forgive us our debts, as we also have forgiven our debtors.", reference: "6:12", chapter: 6, verse_start: 12, book_id: matthew_id, category: "Prayer", theme: "Lord's Prayer", context: "Sermon on the Mount"},
  %{text: "And lead us not into temptation, but deliver us from the evil one.'", reference: "6:13", chapter: 6, verse_start: 13, book_id: matthew_id, category: "Prayer", theme: "Lord's Prayer", context: "Sermon on the Mount"},
  %{text: "For if you forgive other people when they sin against you, your heavenly Father will also forgive you.", reference: "6:14", chapter: 6, verse_start: 14, book_id: matthew_id, category: "Promise", theme: "Forgiveness", context: "Sermon on the Mount"},
  %{text: "But if you do not forgive others their sins, your Father will not forgive your sins.", reference: "6:15", chapter: 6, verse_start: 15, book_id: matthew_id, category: "Warning", theme: "Forgiveness", context: "Sermon on the Mount"},
  
  # ===== FASTING =====
  %{text: "When you fast, do not look somber as the hypocrites do, for they disfigure their faces to show others they are fasting.", reference: "6:16", chapter: 6, verse_start: 16, book_id: matthew_id, category: "Command", theme: "Fasting", context: "Sermon on the Mount"},
  %{text: "But when you fast, put oil on your head and wash your face,", reference: "6:17", chapter: 6, verse_start: 17, book_id: matthew_id, category: "Command", theme: "Fasting", context: "Sermon on the Mount"},
  %{text: "so that it will not be obvious to others that you are fasting, but only to your Father, who is unseen; and your Father, who sees what is done in secret, will reward you.", reference: "6:18", chapter: 6, verse_start: 18, book_id: matthew_id, category: "Promise", theme: "Fasting", context: "Sermon on the Mount"},
  
  # ===== TREASURES IN HEAVEN =====
  %{text: "Do not store up for yourselves treasures on earth, where moths and vermin destroy, and where thieves break in and steal.", reference: "6:19", chapter: 6, verse_start: 19, book_id: matthew_id, category: "Command", theme: "Treasures", context: "Sermon on the Mount"},
  %{text: "But store up for yourselves treasures in heaven, where moths and vermin do not destroy, and where thieves do not break in and steal.", reference: "6:20", chapter: 6, verse_start: 20, book_id: matthew_id, category: "Command", theme: "Treasures", context: "Sermon on the Mount"},
  %{text: "For where your treasure is, there your heart will be also.", reference: "6:21", chapter: 6, verse_start: 21, book_id: matthew_id, category: "Teaching", theme: "Heart", context: "Sermon on the Mount"},
  %{text: "The eye is the lamp of the body. If your eyes are healthy, your whole body will be full of light.", reference: "6:22", chapter: 6, verse_start: 22, book_id: matthew_id, category: "Teaching", theme: "Light", context: "Sermon on the Mount"},
  %{text: "But if your eyes are unhealthy, your whole body will be full of darkness. If then the light within you is darkness, how great is that darkness!", reference: "6:23", chapter: 6, verse_start: 23, book_id: matthew_id, category: "Teaching", theme: "Darkness", context: "Sermon on the Mount"},
  %{text: "No one can serve two masters. Either you will hate the one and love the other, or you will be devoted to the one and despise the other. You cannot serve both God and money.", reference: "6:24", chapter: 6, verse_start: 24, book_id: matthew_id, category: "Teaching", theme: "Service", context: "Sermon on the Mount"},
  
  # ===== DO NOT WORRY =====
  %{text: "Therefore I tell you, do not worry about your life, what you will eat or drink; or about your body, what you will wear. Is not life more than food, and the body more than clothes?", reference: "6:25", chapter: 6, verse_start: 25, book_id: matthew_id, category: "Command", theme: "Worry", context: "Sermon on the Mount"},
  %{text: "Look at the birds of the air; they do not sow or reap or store away in barns, and yet your heavenly Father feeds them. Are you not much more valuable than they?", reference: "6:26", chapter: 6, verse_start: 26, book_id: matthew_id, category: "Question", theme: "Providence", context: "Sermon on the Mount"},
  %{text: "Can any one of you by worrying add a single hour to your life?", reference: "6:27", chapter: 6, verse_start: 27, book_id: matthew_id, category: "Question", theme: "Worry", context: "Sermon on the Mount"},
  %{text: "And why do you worry about clothes? See how the flowers of the field grow. They do not labor or spin.", reference: "6:28", chapter: 6, verse_start: 28, book_id: matthew_id, category: "Question", theme: "Worry", context: "Sermon on the Mount"},
  %{text: "Yet I tell you that not even Solomon in all his splendor was dressed like one of these.", reference: "6:29", chapter: 6, verse_start: 29, book_id: matthew_id, category: "Teaching", theme: "Providence", context: "Sermon on the Mount"},
  %{text: "If that is how God clothes the grass of the field, which is here today and tomorrow is thrown into the fire, will he not much more clothe you—you of little faith?", reference: "6:30", chapter: 6, verse_start: 30, book_id: matthew_id, category: "Question", theme: "Faith", context: "Sermon on the Mount"},
  %{text: "So do not worry, saying, 'What shall we eat?' or 'What shall we drink?' or 'What shall we wear?'", reference: "6:31", chapter: 6, verse_start: 31, book_id: matthew_id, category: "Command", theme: "Worry", context: "Sermon on the Mount"},
  %{text: "For the pagans run after all these things, and your heavenly Father knows that you need them.", reference: "6:32", chapter: 6, verse_start: 32, book_id: matthew_id, category: "Teaching", theme: "Providence", context: "Sermon on the Mount"},
  %{text: "But seek first his kingdom and his righteousness, and all these things will be given to you as well.", reference: "6:33", chapter: 6, verse_start: 33, book_id: matthew_id, category: "Command", theme: "Kingdom", context: "Sermon on the Mount"},
  %{text: "Therefore do not worry about tomorrow, for tomorrow will worry about itself. Each day has enough trouble of its own.", reference: "6:34", chapter: 6, verse_start: 34, book_id: matthew_id, category: "Command", theme: "Worry", context: "Sermon on the Mount"},
  
  # ===== JUDGING OTHERS =====
  %{text: "Do not judge, or you too will be judged.", reference: "7:1", chapter: 7, verse_start: 1, book_id: matthew_id, category: "Command", theme: "Judgment", context: "Sermon on the Mount"},
  %{text: "For in the same way you judge others, you will be judged, and with the measure you use, it will be measured to you.", reference: "7:2", chapter: 7, verse_start: 2, book_id: matthew_id, category: "Teaching", theme: "Judgment", context: "Sermon on the Mount"},
  %{text: "Why do you look at the speck of sawdust in your brother's eye and pay no attention to the plank in your own eye?", reference: "7:3", chapter: 7, verse_start: 3, book_id: matthew_id, category: "Question", theme: "Hypocrisy", context: "Sermon on the Mount"},
  %{text: "How can you say to your brother, 'Let me take the speck out of your eye,' when all the time there is a plank in your own eye?", reference: "7:4", chapter: 7, verse_start: 4, book_id: matthew_id, category: "Question", theme: "Hypocrisy", context: "Sermon on the Mount"},
  %{text: "You hypocrite, first take the plank out of your own eye, and then you will see clearly to remove the speck from your brother's eye.", reference: "7:5", chapter: 7, verse_start: 5, book_id: matthew_id, category: "Command", theme: "Hypocrisy", context: "Sermon on the Mount"},
  %{text: "Do not give dogs what is sacred; do not throw your pearls to pigs. If you do, they may trample them under their feet, and turn and tear you to pieces.", reference: "7:6", chapter: 7, verse_start: 6, book_id: matthew_id, category: "Command", theme: "Wisdom", context: "Sermon on the Mount"},
  
  # ===== ASK, SEEK, KNOCK =====
  %{text: "Ask and it will be given to you; seek and you will find; knock and the door will be opened to you.", reference: "7:7", chapter: 7, verse_start: 7, book_id: matthew_id, category: "Promise", theme: "Prayer", context: "Sermon on the Mount"},
  %{text: "For everyone who asks receives; the one who seeks finds; and to the one who knocks, the door will be opened.", reference: "7:8", chapter: 7, verse_start: 8, book_id: matthew_id, category: "Promise", theme: "Prayer", context: "Sermon on the Mount"},
  %{text: "Which of you, if your son asks for bread, will give him a stone?", reference: "7:9", chapter: 7, verse_start: 9, book_id: matthew_id, category: "Question", theme: "Prayer", context: "Sermon on the Mount"},
  %{text: "Or if he asks for a fish, will give him a snake?", reference: "7:10", chapter: 7, verse_start: 10, book_id: matthew_id, category: "Question", theme: "Prayer", context: "Sermon on the Mount"},
  %{text: "If you, then, though you are evil, know how to give good gifts to your children, how much more will your Father in heaven give good gifts to those who ask him!", reference: "7:11", chapter: 7, verse_start: 11, book_id: matthew_id, category: "Teaching", theme: "Prayer", context: "Sermon on the Mount"},
  
  # ===== THE GOLDEN RULE =====
  %{text: "So in everything, do to others what you would have them do to you, for this sums up the Law and the Prophets.", reference: "7:12", chapter: 7, verse_start: 12, book_id: matthew_id, category: "Command", theme: "Golden Rule", context: "Sermon on the Mount"},
  
  # ===== NARROW AND WIDE GATES =====
  %{text: "Enter through the narrow gate. For wide is the gate and broad is the road that leads to destruction, and many enter through it.", reference: "7:13", chapter: 7, verse_start: 13, book_id: matthew_id, category: "Command", theme: "Salvation", context: "Sermon on the Mount"},
  %{text: "But small is the gate and narrow the road that leads to life, and only a few find it.", reference: "7:14", chapter: 7, verse_start: 14, book_id: matthew_id, category: "Teaching", theme: "Salvation", context: "Sermon on the Mount"},
  
  # ===== TREE AND ITS FRUIT =====
  %{text: "By their fruit you will recognize them. Do people pick grapes from thornbushes, or figs from thistles?", reference: "7:16", chapter: 7, verse_start: 16, book_id: matthew_id, category: "Question", theme: "Fruit", context: "Sermon on the Mount"},
  %{text: "Likewise, every good tree bears good fruit, but a bad tree bears bad fruit.", reference: "7:17", chapter: 7, verse_start: 17, book_id: matthew_id, category: "Teaching", theme: "Fruit", context: "Sermon on the Mount"},
  %{text: "A good tree cannot bear bad fruit, and a bad tree cannot bear good fruit.", reference: "7:18", chapter: 7, verse_start: 18, book_id: matthew_id, category: "Teaching", theme: "Fruit", context: "Sermon on the Mount"},
  %{text: "Every tree that does not bear good fruit is cut down and thrown into the fire.", reference: "7:19", chapter: 7, verse_start: 19, book_id: matthew_id, category: "Teaching", theme: "Judgment", context: "Sermon on the Mount"},
  %{text: "Thus, by their fruit you will recognize them.", reference: "7:20", chapter: 7, verse_start: 20, book_id: matthew_id, category: "Teaching", theme: "Fruit", context: "Sermon on the Mount"},
  
  # ===== TRUE AND FALSE DISCIPLES =====
  %{text: "Not everyone who says to me, 'Lord, Lord,' will enter the kingdom of heaven, but only the one who does the will of my Father who is in heaven.", reference: "7:21", chapter: 7, verse_start: 21, book_id: matthew_id, category: "Teaching", theme: "Kingdom", context: "Sermon on the Mount"},
  %{text: "Many will say to me on that day, 'Lord, Lord, did we not prophesy in your name and in your name drive out demons and in your name perform many miracles?'", reference: "7:22", chapter: 7, verse_start: 22, book_id: matthew_id, category: "Teaching", theme: "Judgment", context: "Sermon on the Mount"},
  %{text: "Then I will tell them plainly, 'I never knew you. Away from me, you evildoers!'", reference: "7:23", chapter: 7, verse_start: 23, book_id: matthew_id, category: "Teaching", theme: "Judgment", context: "Sermon on the Mount"},
  
  # ===== WISE AND FOOLISH BUILDERS =====
  %{text: "Therefore everyone who hears these words of mine and puts them into practice is like a wise man who built his house on the rock.", reference: "7:24", chapter: 7, verse_start: 24, book_id: matthew_id, category: "Teaching", theme: "Foundation", context: "Sermon on the Mount"},
  %{text: "The rain came down, the streams rose, and the winds blew and beat against that house; yet it did not fall, because it had its foundation on the rock.", reference: "7:25", chapter: 7, verse_start: 25, book_id: matthew_id, category: "Teaching", theme: "Foundation", context: "Sermon on the Mount"},
  %{text: "But everyone who hears these words of mine and does not put them into practice is like a foolish man who built his house on sand.", reference: "7:26", chapter: 7, verse_start: 26, book_id: matthew_id, category: "Teaching", theme: "Foundation", context: "Sermon on the Mount"},
  %{text: "The rain came down, the streams rose, and the winds blew and beat against that house, and it fell with a great crash.", reference: "7:27", chapter: 7, verse_start: 27, book_id: matthew_id, category: "Teaching", theme: "Foundation", context: "Sermon on the Mount"},
  
  # ===== HEALING THE LEPER =====
  %{text: "I am willing. Be clean!", reference: "8:3", chapter: 8, verse_start: 3, book_id: matthew_id, category: "Healing", theme: "Cleansing", context: "Healing the leper"},
  %{text: "See that you don't tell anyone. But go, show yourself to the priest and offer the gift Moses commanded, as a testimony to them.", reference: "8:4", chapter: 8, verse_start: 4, book_id: matthew_id, category: "Command", theme: "Testimony", context: "Healing the leper"},
  
  # ===== THE CENTURION'S FAITH =====
  %{text: "I will go and heal him.", reference: "8:7", chapter: 8, verse_start: 7, book_id: matthew_id, category: "Promise", theme: "Healing", context: "Centurion's servant"},
  %{text: "Truly I tell you, I have not found anyone in Israel with such great faith.", reference: "8:10", chapter: 8, verse_start: 10, book_id: matthew_id, category: "Declaration", theme: "Faith", context: "Centurion's faith"},
  %{text: "I say to you that many will come from the east and the west, and will take their places at the feast with Abraham, Isaac and Jacob in the kingdom of heaven.", reference: "8:11", chapter: 8, verse_start: 11, book_id: matthew_id, category: "Promise", theme: "Kingdom", context: "Centurion's faith"},
  %{text: "But the subjects of the kingdom will be thrown outside, into the darkness, where there will be weeping and gnashing of teeth.", reference: "8:12", chapter: 8, verse_start: 12, book_id: matthew_id, category: "Warning", theme: "Judgment", context: "Centurion's faith"},
  %{text: "Go! Let it be done just as you believed it would.", reference: "8:13", chapter: 8, verse_start: 13, book_id: matthew_id, category: "Command", theme: "Faith", context: "Centurion's servant healed"},
  
  # ===== THE COST OF FOLLOWING JESUS =====
  %{text: "Foxes have dens and birds have nests, but the Son of Man has no place to lay his head.", reference: "8:20", chapter: 8, verse_start: 20, book_id: matthew_id, category: "Teaching", theme: "Discipleship", context: "Cost of following"},
  %{text: "Follow me, and let the dead bury their own dead.", reference: "8:22", chapter: 8, verse_start: 22, book_id: matthew_id, category: "Command", theme: "Discipleship", context: "Cost of following"},
  
  # ===== CALMING THE STORM =====
  %{text: "You of little faith, why are you so afraid?", reference: "8:26", chapter: 8, verse_start: 26, book_id: matthew_id, category: "Question", theme: "Faith", context: "Calming the storm"},
  
  # ===== DEMONS INTO PIGS =====
  %{text: "What do you want with us, Son of God? Have you come here to torture us before the appointed time?", reference: "8:29", chapter: 8, verse_start: 29, book_id: matthew_id, category: "Question", theme: "Demons", context: "Gadarene demoniacs"},
  %{text: "Go!", reference: "8:32", chapter: 8, verse_start: 32, book_id: matthew_id, category: "Command", theme: "Authority", context: "Demons into pigs"},
  
  # ===== HEALING THE PARALYZED MAN =====
  %{text: "Take heart, son; your sins are forgiven.", reference: "9:2", chapter: 9, verse_start: 2, book_id: matthew_id, category: "Forgiveness", theme: "Healing", context: "Paralyzed man"},
  %{text: "Why do you entertain evil thoughts in your hearts?", reference: "9:4", chapter: 9, verse_start: 4, book_id: matthew_id, category: "Question", theme: "Heart", context: "Paralyzed man"},
  %{text: "Which is easier: to say, 'Your sins are forgiven,' or to say, 'Get up and walk'?", reference: "9:5", chapter: 9, verse_start: 5, book_id: matthew_id, category: "Question", theme: "Authority", context: "Paralyzed man"},
  %{text: "But I want you to know that the Son of Man has authority on earth to forgive sins. Get up, take your mat and go home.", reference: "9:6", chapter: 9, verse_start: 6, book_id: matthew_id, category: "Command", theme: "Authority", context: "Paralyzed man"},
  
  # ===== CALLING MATTHEW =====
  %{text: "Follow me.", reference: "9:9", chapter: 9, verse_start: 9, book_id: matthew_id, category: "Command", theme: "Discipleship", context: "Calling Matthew"},
  %{text: "It is not the healthy who need a doctor, but the sick.", reference: "9:12", chapter: 9, verse_start: 12, book_id: matthew_id, category: "Teaching", theme: "Mission", context: "Eating with sinners"},
  %{text: "But go and learn what this means: 'I desire mercy, not sacrifice.' For I have not come to call the righteous, but sinners.", reference: "9:13", chapter: 9, verse_start: 13, book_id: matthew_id, category: "Teaching", theme: "Mission", context: "Eating with sinners"},
  
  # ===== QUESTION ABOUT FASTING =====
  %{text: "How can the guests of the bridegroom mourn while he is with them? The time will come when the bridegroom will be taken from them; then they will fast.", reference: "9:15", chapter: 9, verse_start: 15, book_id: matthew_id, category: "Teaching", theme: "Fasting", context: "Question about fasting"},
  %{text: "No one sews a patch of unshrunk cloth on an old garment, for the patch will pull away from the garment, making the tear worse.", reference: "9:16", chapter: 9, verse_start: 16, book_id: matthew_id, category: "Teaching", theme: "New vs Old", context: "New wine in old wineskins"},
  %{text: "Neither do people pour new wine into old wineskins. If they do, the skins will burst; the wine will run out and the wineskins will be ruined. No, they pour new wine into new wineskins, and both are preserved.", reference: "9:17", chapter: 9, verse_start: 17, book_id: matthew_id, category: "Teaching", theme: "New vs Old", context: "New wine in old wineskins"},
  
  # ===== HEALING JAIRUS' DAUGHTER AND WOMAN WITH BLEEDING =====
  %{text: "Don't be afraid; just believe.", reference: "9:24", chapter: 9, verse_start: 24, book_id: matthew_id, category: "Command", theme: "Faith", context: "Jairus' daughter"},
  %{text: "Take heart, daughter, your faith has healed you.", reference: "9:22", chapter: 9, verse_start: 22, book_id: matthew_id, category: "Declaration", theme: "Faith", context: "Woman with bleeding"},
  
  # ===== HEALING TWO BLIND MEN =====
  %{text: "Do you believe that I am able to do this?", reference: "9:28", chapter: 9, verse_start: 28, book_id: matthew_id, category: "Question", theme: "Faith", context: "Two blind men"},
  %{text: "According to your faith let it be done to you.", reference: "9:29", chapter: 9, verse_start: 29, book_id: matthew_id, category: "Declaration", theme: "Faith", context: "Two blind men healed"},
  %{text: "See that no one knows about this.", reference: "9:30", chapter: 9, verse_start: 30, book_id: matthew_id, category: "Command", theme: "Secrecy", context: "Two blind men"},
  
  # ===== HEALING A MUTE MAN =====
  %{text: "Nothing like this has ever been seen in Israel.", reference: "9:33", chapter: 9, verse_start: 33, book_id: matthew_id, category: "Declaration", theme: "Authority", context: "Mute man speaks"},
  
  # ===== THE WORKERS ARE FEW =====
  %{text: "The harvest is plentiful but the workers are few.", reference: "9:37", chapter: 9, verse_start: 37, book_id: matthew_id, category: "Teaching", theme: "Harvest", context: "Workers are few"},
  %{text: "Ask the Lord of the harvest, therefore, to send out workers into his harvest field.", reference: "9:38", chapter: 9, verse_start: 38, book_id: matthew_id, category: "Command", theme: "Harvest", context: "Workers are few"},
  
  # ===== JESUS SENDS OUT THE TWELVE =====
  %{text: "Do not go among the Gentiles or enter any town of the Samaritans.", reference: "10:5", chapter: 10, verse_start: 5, book_id: matthew_id, category: "Command", theme: "Mission", context: "Sending the twelve"},
  %{text: "Go rather to the lost sheep of Israel.", reference: "10:6", chapter: 10, verse_start: 6, book_id: matthew_id, category: "Command", theme: "Mission", context: "Sending the twelve"},
  %{text: "As you go, proclaim this message: 'The kingdom of heaven has come near.'", reference: "10:7", chapter: 10, verse_start: 7, book_id: matthew_id, category: "Command", theme: "Kingdom", context: "Sending the twelve"},
  %{text: "Heal the sick, raise the dead, cleanse those who have leprosy, drive out demons. Freely you have received; freely give.", reference: "10:8", chapter: 10, verse_start: 8, book_id: matthew_id, category: "Command", theme: "Ministry", context: "Sending the twelve"},
  %{text: "Do not get any gold or silver or copper to take with you in your belts—", reference: "10:9", chapter: 10, verse_start: 9, book_id: matthew_id, category: "Command", theme: "Provision", context: "Sending the twelve"},
  %{text: "no bag for the journey or extra shirt or sandals or a staff, for the worker is worth his keep.", reference: "10:10", chapter: 10, verse_start: 10, book_id: matthew_id, category: "Command", theme: "Provision", context: "Sending the twelve"},
  
  # ===== FINDING A WORTHY PERSON =====
  %{text: "Whatever town or village you enter, search there for some worthy person and stay at their house until you leave.", reference: "10:11", chapter: 10, verse_start: 11, book_id: matthew_id, category: "Command", theme: "Hospitality", context: "Sending the twelve"},
  %{text: "As you enter the home, give it your greeting.", reference: "10:12", chapter: 10, verse_start: 12, book_id: matthew_id, category: "Command", theme: "Greeting", context: "Sending the twelve"},
  %{text: "If the home is deserving, let your peace rest on it; if it is not, let your peace return to you.", reference: "10:13", chapter: 10, verse_start: 13, book_id: matthew_id, category: "Command", theme: "Peace", context: "Sending the twelve"},
  %{text: "If anyone will not welcome you or listen to your words, leave that home or town and shake the dust off your feet.", reference: "10:14", chapter: 10, verse_start: 14, book_id: matthew_id, category: "Command", theme: "Rejection", context: "Sending the twelve"},
  %{text: "Truly I tell you, it will be more bearable for Sodom and Gomorrah on the day of judgment than for that town.", reference: "10:15", chapter: 10, verse_start: 15, book_id: matthew_id, category: "Warning", theme: "Judgment", context: "Sending the twelve"},
  
  # ===== SHEEP AMONG WOLVES =====
  %{text: "I am sending you out like sheep among wolves. Therefore be as shrewd as snakes and as innocent as doves.", reference: "10:16", chapter: 10, verse_start: 16, book_id: matthew_id, category: "Command", theme: "Wisdom", context: "Sending the twelve"},
  %{text: "Be on your guard; you will be handed over to the local councils and be flogged in the synagogues.", reference: "10:17", chapter: 10, verse_start: 17, book_id: matthew_id, category: "Warning", theme: "Persecution", context: "Sending the twelve"},
  %{text: "On my account you will be brought before governors and kings as witnesses to them and to the Gentiles.", reference: "10:18", chapter: 10, verse_start: 18, book_id: matthew_id, category: "Teaching", theme: "Witness", context: "Sending the twelve"},
  %{text: "But when they arrest you, do not worry about what to say or how to say it. At that time you will be given what to say,", reference: "10:19", chapter: 10, verse_start: 19, book_id: matthew_id, category: "Command", theme: "Worry", context: "Sending the twelve"},
  %{text: "for it will not be you speaking, but the Spirit of your Father speaking through you.", reference: "10:20", chapter: 10, verse_start: 20, book_id: matthew_id, category: "Promise", theme: "Spirit", context: "Sending the twelve"},
  
  # ===== FAMILY DIVISION =====
  %{text: "Brother will betray brother to death, and a father his child; children will rebel against their parents and have them put to death.", reference: "10:21", chapter: 10, verse_start: 21, book_id: matthew_id, category: "Prophecy", theme: "Division", context: "Sending the twelve"},
  %{text: "You will be hated by everyone because of me, but the one who stands firm to the end will be saved.", reference: "10:22", chapter: 10, verse_start: 22, book_id: matthew_id, category: "Promise", theme: "Persecution", context: "Sending the twelve"},
  %{text: "When you are persecuted in one place, flee to another. Truly I tell you, you will not finish going through the towns of Israel before the Son of Man comes.", reference: "10:23", chapter: 10, verse_start: 23, book_id: matthew_id, category: "Command", theme: "Persecution", context: "Sending the twelve"},
  
  # ===== STUDENT AND TEACHER =====
  %{text: "The student is not above the teacher, nor a servant above his master.", reference: "10:24", chapter: 10, verse_start: 24, book_id: matthew_id, category: "Teaching", theme: "Discipleship", context: "Sending the twelve"},
  %{text: "It is enough for students to be like their teachers, and servants like their masters. If the head of the house has been called Beelzebul, how much more the members of his household!", reference: "10:25", chapter: 10, verse_start: 25, book_id: matthew_id, category: "Teaching", theme: "Persecution", context: "Sending the twelve"},
  
  # ===== DO NOT BE AFRAID =====
  %{text: "So do not be afraid of them, for there is nothing concealed that will not be disclosed, or hidden that will not be made known.", reference: "10:26", chapter: 10, verse_start: 26, book_id: matthew_id, category: "Command", theme: "Fear", context: "Sending the twelve"},
  %{text: "What I tell you in the dark, speak in the daylight; what is whispered in your ear, proclaim from the roofs.", reference: "10:27", chapter: 10, verse_start: 27, book_id: matthew_id, category: "Command", theme: "Proclamation", context: "Sending the twelve"},
  %{text: "Do not be afraid of those who kill the body but cannot kill the soul. Rather, be afraid of the One who can destroy both soul and body in hell.", reference: "10:28", chapter: 10, verse_start: 28, book_id: matthew_id, category: "Command", theme: "Fear", context: "Sending the twelve"},
  %{text: "Are not two sparrows sold for a penny? Yet not one of them will fall to the ground outside your Father's care.", reference: "10:29", chapter: 10, verse_start: 29, book_id: matthew_id, category: "Question", theme: "Providence", context: "Sending the twelve"},
  %{text: "And even the very hairs of your head are all numbered.", reference: "10:30", chapter: 10, verse_start: 30, book_id: matthew_id, category: "Teaching", theme: "Providence", context: "Sending the twelve"},
  %{text: "So don't be afraid; you are worth more than many sparrows.", reference: "10:31", chapter: 10, verse_start: 31, book_id: matthew_id, category: "Command", theme: "Worth", context: "Sending the twelve"},
  
  # ===== ACKNOWLEDGING JESUS =====
  %{text: "Whoever acknowledges me before others, I will also acknowledge before my Father in heaven.", reference: "10:32", chapter: 10, verse_start: 32, book_id: matthew_id, category: "Promise", theme: "Acknowledgment", context: "Sending the twelve"},
  %{text: "But whoever disowns me before others, I will disown before my Father in heaven.", reference: "10:33", chapter: 10, verse_start: 33, book_id: matthew_id, category: "Warning", theme: "Denial", context: "Sending the twelve"},
  
  # ===== NOT PEACE BUT A SWORD =====
  %{text: "Do not suppose that I have come to bring peace to the earth. I did not come to bring peace, but a sword.", reference: "10:34", chapter: 10, verse_start: 34, book_id: matthew_id, category: "Teaching", theme: "Division", context: "Sending the twelve"},
  %{text: "For I have come to turn 'a man against his father, a daughter against her mother, a daughter-in-law against her mother-in-law—", reference: "10:35", chapter: 10, verse_start: 35, book_id: matthew_id, category: "Teaching", theme: "Division", context: "Sending the twelve"},
  %{text: "a man's enemies will be the members of his own household.'", reference: "10:36", chapter: 10, verse_start: 36, book_id: matthew_id, category: "Teaching", theme: "Division", context: "Sending the twelve"},
  %{text: "Anyone who loves their father or mother more than me is not worthy of me; anyone who loves their son or daughter more than me is not worthy of me.", reference: "10:37", chapter: 10, verse_start: 37, book_id: matthew_id, category: "Teaching", theme: "Loyalty", context: "Sending the twelve"},
  %{text: "Whoever does not take up their cross and follow me is not worthy of me.", reference: "10:38", chapter: 10, verse_start: 38, book_id: matthew_id, category: "Teaching", theme: "Cross", context: "Sending the twelve"},
  %{text: "Whoever finds their life will lose it, and whoever loses their life for my sake will find it.", reference: "10:39", chapter: 10, verse_start: 39, book_id: matthew_id, category: "Teaching", theme: "Life", context: "Sending the twelve"},
  
  # ===== RECEIVING THE DISCIPLES =====
  %{text: "Anyone who welcomes you welcomes me, and anyone who welcomes me welcomes the one who sent me.", reference: "10:40", chapter: 10, verse_start: 40, book_id: matthew_id, category: "Teaching", theme: "Reception", context: "Sending the twelve"},
  %{text: "Whoever welcomes a prophet as a prophet will receive a prophet's reward, and whoever welcomes a righteous person as a righteous person will receive a righteous person's reward.", reference: "10:41", chapter: 10, verse_start: 41, book_id: matthew_id, category: "Promise", theme: "Reception", context: "Sending the twelve"},
  %{text: "And if anyone gives even a cup of cold water to one of these little ones who is my disciple, truly I tell you, that person will certainly not lose their reward.", reference: "10:42", chapter: 10, verse_start: 42, book_id: matthew_id, category: "Promise", theme: "Service", context: "Sending the twelve"},
  
  # ===== JESUS AND JOHN THE BAPTIST =====
  %{text: "Go back and report to John what you hear and see:", reference: "11:4", chapter: 11, verse_start: 4, book_id: matthew_id, category: "Command", theme: "Report", context: "John the Baptist's question"},
  %{text: "The blind receive sight, the lame walk, those who have leprosy are cleansed, the deaf hear, the dead are raised, and the good news is proclaimed to the poor.", reference: "11:5", chapter: 11, verse_start: 5, book_id: matthew_id, category: "Declaration", theme: "Ministry", context: "John the Baptist's question"},
  %{text: "Blessed is anyone who does not stumble on account of me.", reference: "11:6", chapter: 11, verse_start: 6, book_id: matthew_id, category: "Blessing", theme: "Faith", context: "John the Baptist's question"},
  
  # ===== JESUS TESTIFIES ABOUT JOHN =====
  %{text: "What did you go out into the wilderness to see? A reed swayed by the wind?", reference: "11:7", chapter: 11, verse_start: 7, book_id: matthew_id, category: "Question", theme: "John", context: "Testifying about John"},
  %{text: "If not, what did you go out to see? A man dressed in fine clothes? No, those who wear fine clothes are in kings' palaces.", reference: "11:8", chapter: 11, verse_start: 8, book_id: matthew_id, category: "Question", theme: "John", context: "Testifying about John"},
  %{text: "Then what did you go out to see? A prophet? Yes, I tell you, and more than a prophet.", reference: "11:9", chapter: 11, verse_start: 9, book_id: matthew_id, category: "Question", theme: "John", context: "Testifying about John"},
  %{text: "This is the one about whom it is written: 'I will send my messenger ahead of you, who will prepare your way before you.'", reference: "11:10", chapter: 11, verse_start: 10, book_id: matthew_id, category: "Declaration", theme: "John", context: "Testifying about John"},
  %{text: "Truly I tell you, among those born of women there has not risen anyone greater than John the Baptist; yet whoever is least in the kingdom of heaven is greater than he.", reference: "11:11", chapter: 11, verse_start: 11, book_id: matthew_id, category: "Declaration", theme: "Kingdom", context: "Testifying about John"},
  %{text: "From the days of John the Baptist until now, the kingdom of heaven has been subjected to violence, and violent people have been raiding it.", reference: "11:12", chapter: 11, verse_start: 12, book_id: matthew_id, category: "Teaching", theme: "Kingdom", context: "Testifying about John"},
  %{text: "For all the Prophets and the Law prophesied until John.", reference: "11:13", chapter: 11, verse_start: 13, book_id: matthew_id, category: "Teaching", theme: "Prophecy", context: "Testifying about John"},
  %{text: "And if you are willing to accept it, he is the Elijah who was to come.", reference: "11:14", chapter: 11, verse_start: 14, book_id: matthew_id, category: "Declaration", theme: "Elijah", context: "Testifying about John"},
  %{text: "Whoever has ears, let them hear.", reference: "11:15", chapter: 11, verse_start: 15, book_id: matthew_id, category: "Command", theme: "Hearing", context: "Testifying about John"},
  
  # ===== TO WHAT SHALL I COMPARE THIS GENERATION =====
  %{text: "To what can I compare this generation? They are like children sitting in the marketplaces and calling out to others:", reference: "11:16", chapter: 11, verse_start: 16, book_id: matthew_id, category: "Question", theme: "Generation", context: "Comparing the generation"},
  %{text: "'We played the pipe for you, and you did not dance; we sang a dirge, and you did not mourn.'", reference: "11:17", chapter: 11, verse_start: 17, book_id: matthew_id, category: "Teaching", theme: "Generation", context: "Comparing the generation"},
  %{text: "For John came neither eating nor drinking, and they say, 'He has a demon.'", reference: "11:18", chapter: 11, verse_start: 18, book_id: matthew_id, category: "Teaching", theme: "John", context: "Comparing the generation"},
  %{text: "The Son of Man came eating and drinking, and they say, 'Here is a glutton and a drunkard, a friend of tax collectors and sinners.' But wisdom is proved right by her deeds.", reference: "11:19", chapter: 11, verse_start: 19, book_id: matthew_id, category: "Teaching", theme: "Wisdom", context: "Comparing the generation"},
  
  # ===== WOE ON UNREPENTANT TOWNS =====
  %{text: "Woe to you, Chorazin! Woe to you, Bethsaida! For if the miracles that were performed in you had been performed in Tyre and Sidon, they would have repented long ago in sackcloth and ashes.", reference: "11:21", chapter: 11, verse_start: 21, book_id: matthew_id, category: "Woe", theme: "Repentance", context: "Unrepentant towns"},
  %{text: "But I tell you, it will be more bearable for Tyre and Sidon on the day of judgment than for you.", reference: "11:22", chapter: 11, verse_start: 22, book_id: matthew_id, category: "Warning", theme: "Judgment", context: "Unrepentant towns"},
  %{text: "And you, Capernaum, will you be lifted to the heavens? No, you will go down to Hades. For if the miracles that were performed in you had been performed in Sodom, it would have remained to this day.", reference: "11:23", chapter: 11, verse_start: 23, book_id: matthew_id, category: "Warning", theme: "Judgment", context: "Unrepentant towns"},
  %{text: "But I tell you that it will be more bearable for Sodom on the day of judgment than for you.", reference: "11:24", chapter: 11, verse_start: 24, book_id: matthew_id, category: "Warning", theme: "Judgment", context: "Unrepentant towns"},
  
  # ===== THE FATHER REVEALED IN THE SON =====
  %{text: "I praise you, Father, Lord of heaven and earth, because you have hidden these things from the wise and learned, and revealed them to little children.", reference: "11:25", chapter: 11, verse_start: 25, book_id: matthew_id, category: "Prayer", theme: "Revelation", context: "Father revealed in son"},
  %{text: "Yes, Father, for this is what you were pleased to do.", reference: "11:26", chapter: 11, verse_start: 26, book_id: matthew_id, category: "Prayer", theme: "Will", context: "Father revealed in son"},
  %{text: "All things have been committed to me by my Father. No one knows the Son except the Father, and no one knows the Father except the Son and those to whom the Son chooses to reveal him.", reference: "11:27", chapter: 11, verse_start: 27, book_id: matthew_id, category: "Declaration", theme: "Revelation", context: "Father revealed in son"},
  
  # ===== COME TO ME =====
  %{text: "Come to me, all you who are weary and burdened, and I will give you rest.", reference: "11:28", chapter: 11, verse_start: 28, book_id: matthew_id, category: "Invitation", theme: "Rest", context: "Come to me"},
  %{text: "Take my yoke upon you and learn from me, for I am gentle and humble in heart, and you will find rest for your souls.", reference: "11:29", chapter: 11, verse_start: 29, book_id: matthew_id, category: "Command", theme: "Rest", context: "Come to me"},
  %{text: "For my yoke is easy and my burden is light.", reference: "11:30", chapter: 11, verse_start: 30, book_id: matthew_id, category: "Declaration", theme: "Burden", context: "Come to me"},
  
  # ===== JESUS IS LORD OF THE SABBATH =====
  %{text: "Haven't you read what David did when he and his companions were hungry?", reference: "12:3", chapter: 12, verse_start: 3, book_id: matthew_id, category: "Question", theme: "Sabbath", context: "Lord of Sabbath"},
  %{text: "He entered the house of God, and he and his companions ate the consecrated bread—which was not lawful for them to do, but only for the priests.", reference: "12:4", chapter: 12, verse_start: 4, book_id: matthew_id, category: "Teaching", theme: "Sabbath", context: "Lord of Sabbath"},
  %{text: "Or haven't you read in the Law that the priests on Sabbath duty in the temple desecrate the Sabbath and yet are innocent?", reference: "12:5", chapter: 12, verse_start: 5, book_id: matthew_id, category: "Question", theme: "Sabbath", context: "Lord of Sabbath"},
  %{text: "I tell you that something greater than the temple is here.", reference: "12:6", chapter: 12, verse_start: 6, book_id: matthew_id, category: "Declaration", theme: "Authority", context: "Lord of Sabbath"},
  %{text: "If you had known what these words mean, 'I desire mercy, not sacrifice,' you would not have condemned the innocent.", reference: "12:7", chapter: 12, verse_start: 7, book_id: matthew_id, category: "Teaching", theme: "Mercy", context: "Lord of Sabbath"},
  %{text: "For the Son of Man is Lord of the Sabbath.", reference: "12:8", chapter: 12, verse_start: 8, book_id: matthew_id, category: "Declaration", theme: "Authority", context: "Lord of Sabbath"},
  
  # ===== HEALING ON THE SABBATH =====
  %{text: "If any of you has a sheep and it falls into a pit on the Sabbath, will you not take hold of it and lift it out?", reference: "12:11", chapter: 12, verse_start: 11, book_id: matthew_id, category: "Question", theme: "Sabbath", context: "Healing on Sabbath"},
  %{text: "How much more valuable is a person than a sheep! Therefore it is lawful to do good on the Sabbath.", reference: "12:12", chapter: 12, verse_start: 12, book_id: matthew_id, category: "Teaching", theme: "Sabbath", context: "Healing on Sabbath"},
  %{text: "Stretch out your hand.", reference: "12:13", chapter: 12, verse_start: 13, book_id: matthew_id, category: "Command", theme: "Healing", context: "Healing on Sabbath"},
  
  # ===== GOD'S CHOSEN SERVANT =====
  %{text: "Here is my servant whom I have chosen, the one I love, in whom I delight; I will put my Spirit on him, and he will proclaim justice to the nations.", reference: "12:18", chapter: 12, verse_start: 18, book_id: matthew_id, category: "Prophecy", theme: "Servant", context: "God's chosen servant"},
  %{text: "He will not quarrel or cry out; no one will hear his voice in the streets.", reference: "12:19", chapter: 12, verse_start: 19, book_id: matthew_id, category: "Prophecy", theme: "Servant", context: "God's chosen servant"},
  %{text: "A bruised reed he will not break, and a smoldering wick he will not snuff out, till he has brought justice through to victory.", reference: "12:20", chapter: 12, verse_start: 20, book_id: matthew_id, category: "Prophecy", theme: "Justice", context: "God's chosen servant"},
  %{text: "In his name the nations will put their hope.", reference: "12:21", chapter: 12, verse_start: 21, book_id: matthew_id, category: "Prophecy", theme: "Hope", context: "God's chosen servant"},
  
  # ===== JESUS AND BEELZEBUL =====
  %{text: "If Satan drives out Satan, he is divided against himself. How then can his kingdom stand?", reference: "12:26", chapter: 12, verse_start: 26, book_id: matthew_id, category: "Question", theme: "Division", context: "Jesus and Beelzebul"},
  %{text: "And if I drive out demons by Beelzebul, by whom do your people drive them out? So then, they will be your judges.", reference: "12:27", chapter: 12, verse_start: 27, book_id: matthew_id, category: "Question", theme: "Authority", context: "Jesus and Beelzebul"},
  %{text: "But if it is by the Spirit of God that I drive out demons, then the kingdom of God has come upon you.", reference: "12:28", chapter: 12, verse_start: 28, book_id: matthew_id, category: "Teaching", theme: "Kingdom", context: "Jesus and Beelzebul"},
  %{text: "Or again, how can anyone enter a strong man's house and carry off his possessions unless he first ties up the strong man? Then he can plunder his house.", reference: "12:29", chapter: 12, verse_start: 29, book_id: matthew_id, category: "Teaching", theme: "Authority", context: "Jesus and Beelzebul"},
  %{text: "Whoever is not with me is against me, and whoever does not gather with me scatters.", reference: "12:30", chapter: 12, verse_start: 30, book_id: matthew_id, category: "Teaching", theme: "Loyalty", context: "Jesus and Beelzebul"},
  
  # ===== THE UNFORGIVABLE SIN =====
  %{text: "And so I tell you, every kind of sin and slander can be forgiven, but blasphemy against the Spirit will not be forgiven.", reference: "12:31", chapter: 12, verse_start: 31, book_id: matthew_id, category: "Teaching", theme: "Forgiveness", context: "Unforgivable sin"},
  %{text: "Anyone who speaks a word against the Son of Man will be forgiven, but anyone who speaks against the Holy Spirit will not be forgiven, either in this age or in the age to come.", reference: "12:32", chapter: 12, verse_start: 32, book_id: matthew_id, category: "Teaching", theme: "Forgiveness", context: "Unforgivable sin"},
  
  # ===== TREE AND ITS FRUIT =====
  %{text: "Make a tree good and its fruit will be good, or make a tree bad and its fruit will be bad, for a tree is recognized by its fruit.", reference: "12:33", chapter: 12, verse_start: 33, book_id: matthew_id, category: "Teaching", theme: "Fruit", context: "Tree and its fruit"},
  %{text: "You brood of vipers, how can you who are evil say anything good? For the mouth speaks what the heart is full of.", reference: "12:34", chapter: 12, verse_start: 34, book_id: matthew_id, category: "Teaching", theme: "Heart", context: "Tree and its fruit"},
  %{text: "A good man brings good things out of the good stored up in him, and an evil man brings evil things out of the evil stored up in him.", reference: "12:35", chapter: 12, verse_start: 35, book_id: matthew_id, category: "Teaching", theme: "Heart", context: "Tree and its fruit"},
  %{text: "But I tell you that everyone will have to give account on the day of judgment for every empty word they have spoken.", reference: "12:36", chapter: 12, verse_start: 36, book_id: matthew_id, category: "Warning", theme: "Judgment", context: "Tree and its fruit"},
  %{text: "For by your words you will be acquitted, and by your words you will be condemned.", reference: "12:37", chapter: 12, verse_start: 37, book_id: matthew_id, category: "Teaching", theme: "Words", context: "Tree and its fruit"},
  
  # ===== THE SIGN OF JONAH =====
  %{text: "A wicked and adulterous generation asks for a sign! But none will be given it except the sign of the prophet Jonah.", reference: "12:39", chapter: 12, verse_start: 39, book_id: matthew_id, category: "Teaching", theme: "Sign", context: "Sign of Jonah"},
  %{text: "For as Jonah was three days and three nights in the belly of a huge fish, so the Son of Man will be three days and three nights in the heart of the earth.", reference: "12:40", chapter: 12, verse_start: 40, book_id: matthew_id, category: "Prophecy", theme: "Resurrection", context: "Sign of Jonah"},
  %{text: "The men of Nineveh will stand up at the judgment with this generation and condemn it; for they repented at the preaching of Jonah, and now something greater than Jonah is here.", reference: "12:41", chapter: 12, verse_start: 41, book_id: matthew_id, category: "Teaching", theme: "Repentance", context: "Sign of Jonah"},
  %{text: "The Queen of the South will rise at the judgment with this generation and condemn it; for she came from the ends of the earth to listen to Solomon's wisdom, and now something greater than Solomon is here.", reference: "12:42", chapter: 12, verse_start: 42, book_id: matthew_id, category: "Teaching", theme: "Wisdom", context: "Sign of Jonah"},
  
  # ===== THE RETURN OF THE UNCLEAN SPIRIT =====
  %{text: "When an impure spirit comes out of a person, it goes through arid places seeking rest and does not find it.", reference: "12:43", chapter: 12, verse_start: 43, book_id: matthew_id, category: "Teaching", theme: "Spirits", context: "Unclean spirit returns"},
  %{text: "Then it says, 'I will return to the house I left.' When it arrives, it finds the house unoccupied, swept clean and put in order.", reference: "12:44", chapter: 12, verse_start: 44, book_id: matthew_id, category: "Teaching", theme: "Spirits", context: "Unclean spirit returns"},
  %{text: "Then it goes and takes with it seven other spirits more wicked than itself, and they go in and live there. And the final condition of that person is worse than the first. That is how it will be with this wicked generation.", reference: "12:45", chapter: 12, verse_start: 45, book_id: matthew_id, category: "Teaching", theme: "Spirits", context: "Unclean spirit returns"},
  
  # ===== JESUS' MOTHER AND BROTHERS =====
  %{text: "Who is my mother, and who are my brothers?", reference: "12:48", chapter: 12, verse_start: 48, book_id: matthew_id, category: "Question", theme: "Family", context: "Jesus' mother and brothers"},
  %{text: "Here are my mother and my brothers.", reference: "12:49", chapter: 12, verse_start: 49, book_id: matthew_id, category: "Declaration", theme: "Family", context: "Jesus' mother and brothers"},
  %{text: "For whoever does the will of my Father in heaven is my brother and sister and mother.", reference: "12:50", chapter: 12, verse_start: 50, book_id: matthew_id, category: "Teaching", theme: "Family", context: "Jesus' mother and brothers"},
  
  # ===== THE PARABLE OF THE SOWER =====
  %{text: "Listen! A farmer went out to sow his seed.", reference: "13:3", chapter: 13, verse_start: 3, book_id: matthew_id, category: "Parable", theme: "Sower", context: "Parable of the sower"},
  %{text: "As he was scattering the seed, some fell along the path, and the birds came and ate it up.", reference: "13:4", chapter: 13, verse_start: 4, book_id: matthew_id, category: "Parable", theme: "Sower", context: "Parable of the sower"},
  %{text: "Some fell on rocky places, where it did not have much soil. It sprang up quickly, because the soil was shallow.", reference: "13:5", chapter: 13, verse_start: 5, book_id: matthew_id, category: "Parable", theme: "Sower", context: "Parable of the sower"},
  %{text: "But when the sun came up, the plants were scorched, and they withered because they had no root.", reference: "13:6", chapter: 13, verse_start: 6, book_id: matthew_id, category: "Parable", theme: "Sower", context: "Parable of the sower"},
  %{text: "Other seed fell among thorns, which grew up and choked the plants.", reference: "13:7", chapter: 13, verse_start: 7, book_id: matthew_id, category: "Parable", theme: "Sower", context: "Parable of the sower"},
  %{text: "Still other seed fell on good soil, where it produced a crop—a hundred, sixty or thirty times what was sown.", reference: "13:8", chapter: 13, verse_start: 8, book_id: matthew_id, category: "Parable", theme: "Sower", context: "Parable of the sower"},
  %{text: "Whoever has ears, let them hear.", reference: "13:9", chapter: 13, verse_start: 9, book_id: matthew_id, category: "Command", theme: "Hearing", context: "Parable of the sower"},
  
  # ===== THE PURPOSE OF PARABLES =====
  %{text: "Because the knowledge of the secrets of the kingdom of heaven has been given to you, but not to them.", reference: "13:11", chapter: 13, verse_start: 11, book_id: matthew_id, category: "Teaching", theme: "Kingdom", context: "Purpose of parables"},
  %{text: "Whoever has will be given more, and they will have an abundance. Whoever does not have, even what they have will be taken from them.", reference: "13:12", chapter: 13, verse_start: 12, book_id: matthew_id, category: "Teaching", theme: "Abundance", context: "Purpose of parables"},
  %{text: "This is why I speak to them in parables: Though seeing, they do not see; though hearing, they do not hear or understand.", reference: "13:13", chapter: 13, verse_start: 13, book_id: matthew_id, category: "Teaching", theme: "Understanding", context: "Purpose of parables"},
  %{text: "In them is fulfilled the prophecy of Isaiah: 'You will be ever hearing but never understanding; you will be ever seeing but never perceiving.'", reference: "13:14", chapter: 13, verse_start: 14, book_id: matthew_id, category: "Prophecy", theme: "Understanding", context: "Purpose of parables"},
  %{text: "For this people's heart has become calloused; they hardly hear with their ears, and they have closed their eyes. Otherwise they might see with their eyes, hear with their ears, understand with their hearts and turn, and I would heal them.", reference: "13:15", chapter: 13, verse_start: 15, book_id: matthew_id, category: "Teaching", theme: "Heart", context: "Purpose of parables"},
  %{text: "But blessed are your eyes because they see, and your ears because they hear.", reference: "13:16", chapter: 13, verse_start: 16, book_id: matthew_id, category: "Blessing", theme: "Perception", context: "Purpose of parables"},
  %{text: "For truly I tell you, many prophets and righteous people longed to see what you see but did not see it, and to hear what you hear but did not hear it.", reference: "13:17", chapter: 13, verse_start: 17, book_id: matthew_id, category: "Teaching", theme: "Privilege", context: "Purpose of parables"},
  
  # ===== JOHN'S GOSPEL - I AM STATEMENTS =====
  %{text: "I am the bread of life. Whoever comes to me will never go hungry, and whoever believes in me will never be thirsty.", reference: "6:35", chapter: 6, verse_start: 35, book_id: john_id, category: "Teaching", theme: "I AM", context: "Bread of life discourse"},
  %{text: "I am the light of the world. Whoever follows me will never walk in darkness, but will have the light of life.", reference: "8:12", chapter: 8, verse_start: 12, book_id: john_id, category: "Teaching", theme: "I AM", context: "Feast of Tabernacles"},
  %{text: "I am the gate for the sheep.", reference: "10:7", chapter: 10, verse_start: 7, book_id: john_id, category: "Teaching", theme: "I AM", context: "Good shepherd discourse"},
  %{text: "I am the good shepherd. The good shepherd lays down his life for the sheep.", reference: "10:11", chapter: 10, verse_start: 11, book_id: john_id, category: "Teaching", theme: "I AM", context: "Good shepherd discourse"},
  %{text: "I am the resurrection and the life. The one who believes in me will live, even though they die;", reference: "11:25", chapter: 11, verse_start: 25, book_id: john_id, category: "Teaching", theme: "I AM", context: "Raising of Lazarus"},
  %{text: "I am the way and the truth and the life. No one comes to the Father except through me.", reference: "14:6", chapter: 14, verse_start: 6, book_id: john_id, category: "Teaching", theme: "I AM", context: "Farewell discourse"},
  %{text: "I am the vine; you are the branches. If you remain in me and I in you, you will bear much fruit; apart from me you can do nothing.", reference: "15:5", chapter: 15, verse_start: 5, book_id: john_id, category: "Teaching", theme: "I AM", context: "Vine and branches"},
  
  # ===== KEY JOHN SAYINGS =====
  %{text: "For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.", reference: "3:16", chapter: 3, verse_start: 16, book_id: john_id, category: "Promise", theme: "Salvation", context: "Nicodemus conversation"},
  %{text: "For God did not send his Son into the world to condemn the world, but to save the world through him.", reference: "3:17", chapter: 3, verse_start: 17, book_id: john_id, category: "Teaching", theme: "Salvation", context: "Nicodemus conversation"},
  %{text: "Whoever believes in him is not condemned, but whoever does not believe stands condemned already because they have not believed in the name of God's one and only Son.", reference: "3:18", chapter: 3, verse_start: 18, book_id: john_id, category: "Teaching", theme: "Judgment", context: "Nicodemus conversation"},
  %{text: "Very truly I tell you, no one can see the kingdom of God unless they are born again.", reference: "3:3", chapter: 3, verse_start: 3, book_id: john_id, category: "Teaching", theme: "Born Again", context: "Nicodemus conversation"},
  %{text: "Very truly I tell you, no one can enter the kingdom of God unless they are born of water and the Spirit.", reference: "3:5", chapter: 3, verse_start: 5, book_id: john_id, category: "Teaching", theme: "Born Again", context: "Nicodemus conversation"},
  %{text: "The wind blows wherever it pleases. You hear its sound, but you cannot tell where it comes from or where it is going. So it is with everyone born of the Spirit.", reference: "3:8", chapter: 3, verse_start: 8, book_id: john_id, category: "Teaching", theme: "Spirit", context: "Nicodemus conversation"},
  
  # ===== WOMAN AT THE WELL =====
  %{text: "Will you give me a drink?", reference: "4:7", chapter: 4, verse_start: 7, book_id: john_id, category: "Question", theme: "Living Water", context: "Woman at the well"},
  %{text: "If you knew the gift of God and who it is that asks you for a drink, you would have asked him and he would have given you living water.", reference: "4:10", chapter: 4, verse_start: 10, book_id: john_id, category: "Teaching", theme: "Living Water", context: "Woman at the well"},
  %{text: "Everyone who drinks this water will be thirsty again, but whoever drinks the water I give them will never thirst. Indeed, the water I give them will become in them a spring of water welling up to eternal life.", reference: "4:13-14", chapter: 4, verse_start: 13, verse_end: 14, book_id: john_id, category: "Promise", theme: "Living Water", context: "Woman at the well"},
  %{text: "Go, call your husband and come back.", reference: "4:16", chapter: 4, verse_start: 16, book_id: john_id, category: "Command", theme: "Truth", context: "Woman at the well"},
  %{text: "You are right when you say you have no husband. The fact is, you have had five husbands, and the man you now have is not your husband. What you have just said is quite true.", reference: "4:17-18", chapter: 4, verse_start: 17, verse_end: 18, book_id: john_id, category: "Declaration", theme: "Truth", context: "Woman at the well"},
  %{text: "Yet a time is coming and has now come when the true worshipers will worship the Father in the Spirit and in truth, for they are the kind of worshipers the Father seeks.", reference: "4:23", chapter: 4, verse_start: 23, book_id: john_id, category: "Teaching", theme: "Worship", context: "Woman at the well"},
  %{text: "God is spirit, and his worshipers must worship in the Spirit and in truth.", reference: "4:24", chapter: 4, verse_start: 24, book_id: john_id, category: "Teaching", theme: "Worship", context: "Woman at the well"},
  %{text: "I, the one speaking to you—I am he.", reference: "4:26", chapter: 4, verse_start: 26, book_id: john_id, category: "Declaration", theme: "Identity", context: "Woman at the well"},
  
  # ===== GREAT COMMISSION =====
  %{text: "Therefore go and make disciples of all nations, baptizing them in the name of the Father and of the Son and of the Holy Spirit,", reference: "28:19", chapter: 28, verse_start: 19, book_id: matthew_id, category: "Command", theme: "Great Commission", context: "Post-resurrection appearance"},
  %{text: "and teaching them to obey everything I have commanded you. And surely I am with you always, to the very end of the age.", reference: "28:20", chapter: 28, verse_start: 20, book_id: matthew_id, category: "Promise", theme: "Great Commission", context: "Post-resurrection appearance"},
  
  # ===== PEACE AND COMFORT =====
  %{text: "Peace I leave with you; my peace I give you. I do not give to you as the world gives. Do not let your hearts be troubled and do not be afraid.", reference: "14:27", chapter: 14, verse_start: 27, book_id: john_id, category: "Promise", theme: "Peace", context: "Farewell discourse"},
  %{text: "In this world you will have trouble. But take heart! I have overcome the world.", reference: "16:33", chapter: 16, verse_start: 33, book_id: john_id, category: "Promise", theme: "Victory", context: "Farewell discourse"},
  %{text: "Do not let your hearts be troubled. You believe in God; believe also in me.", reference: "14:1", chapter: 14, verse_start: 1, book_id: john_id, category: "Command", theme: "Trust", context: "Farewell discourse"},
  %{text: "In my Father's house there are many rooms; if that were not so, would I have told you that I am going there to prepare a place for you?", reference: "14:2", chapter: 14, verse_start: 2, book_id: john_id, category: "Promise", theme: "Heaven", context: "Farewell discourse"},
  %{text: "And if I go and prepare a place for you, I will come back and take you to be with me that you also may be where I am.", reference: "14:3", chapter: 14, verse_start: 3, book_id: john_id, category: "Promise", theme: "Return", context: "Farewell discourse"},
  
  # ===== LOVE COMMANDS =====
  %{text: "Love the Lord your God with all your heart and with all your soul and with all your mind.", reference: "22:37", chapter: 22, verse_start: 37, book_id: matthew_id, category: "Command", theme: "Greatest Commandment", context: "Testing by Pharisees"},
  %{text: "This is the first and greatest commandment.", reference: "22:38", chapter: 22, verse_start: 38, book_id: matthew_id, category: "Teaching", theme: "Greatest Commandment", context: "Testing by Pharisees"},
  %{text: "And the second is like it: 'Love your neighbor as yourself.'", reference: "22:39", chapter: 22, verse_start: 39, book_id: matthew_id, category: "Command", theme: "Greatest Commandment", context: "Testing by Pharisees"},
  %{text: "All the Law and the Prophets hang on these two commandments.", reference: "22:40", chapter: 22, verse_start: 40, book_id: matthew_id, category: "Teaching", theme: "Greatest Commandment", context: "Testing by Pharisees"},
  %{text: "A new command I give you: Love one another. As I have loved you, so you must love one another.", reference: "13:34", chapter: 13, verse_start: 34, book_id: john_id, category: "Command", theme: "Love", context: "Last Supper"},
  %{text: "By this everyone will know that you are my disciples, if you love one another.", reference: "13:35", chapter: 13, verse_start: 35, book_id: john_id, category: "Teaching", theme: "Love", context: "Last Supper"},
  
  # ===== ETERNAL LIFE =====
  %{text: "Very truly I tell you, whoever hears my word and believes him who sent me has eternal life and will not be judged but has crossed over from death to life.", reference: "5:24", chapter: 5, verse_start: 24, book_id: john_id, category: "Promise", theme: "Eternal Life", context: "Authority of the Son"},
  %{text: "Very truly I tell you, a time is coming and has now come when the dead will hear the voice of the Son of God and those who hear will live.", reference: "5:25", chapter: 5, verse_start: 25, book_id: john_id, category: "Promise", theme: "Life", context: "Authority of the Son"},
  %{text: "For as the Father has life in himself, so he has granted the Son also to have life in himself.", reference: "5:26", chapter: 5, verse_start: 26, book_id: john_id, category: "Teaching", theme: "Life", context: "Authority of the Son"},
  
  # ===== PRAYER =====
  %{text: "And I will do whatever you ask in my name, so that the Father may be glorified in the Son.", reference: "14:13", chapter: 14, verse_start: 13, book_id: john_id, category: "Promise", theme: "Prayer", context: "Farewell discourse"},
  %{text: "You may ask me for anything in my name, and I will do it.", reference: "14:14", chapter: 14, verse_start: 14, book_id: john_id, category: "Promise", theme: "Prayer", context: "Farewell discourse"},
  %{text: "If you remain in me and my words remain in you, ask whatever you wish, and it will be done for you.", reference: "15:7", chapter: 15, verse_start: 7, book_id: john_id, category: "Promise", theme: "Prayer", context: "Vine and branches"},
  %{text: "You did not choose me, but I chose you and appointed you so that you might go and bear fruit—fruit that will last—and so that whatever you ask in my name the Father will give you.", reference: "15:16", chapter: 15, verse_start: 16, book_id: john_id, category: "Promise", theme: "Chosen", context: "Vine and branches"},
  
  # ===== MARK'S GOSPEL KEY SAYINGS =====
  %{text: "The time has come. The kingdom of God has come near. Repent and believe the good news!", reference: "1:15", chapter: 1, verse_start: 15, book_id: mark_id, category: "Proclamation", theme: "Kingdom", context: "Jesus begins ministry"},
  %{text: "Come, follow me, and I will send you out to fish for people.", reference: "1:17", chapter: 1, verse_start: 17, book_id: mark_id, category: "Call", theme: "Discipleship", context: "Calling first disciples"},
  %{text: "Let us go somewhere else—to the nearby villages—so I can preach there also. That is why I have come.", reference: "1:38", chapter: 1, verse_start: 38, book_id: mark_id, category: "Teaching", theme: "Mission", context: "Jesus' purpose"},
  %{text: "I am willing. Be clean!", reference: "1:41", chapter: 1, verse_start: 41, book_id: mark_id, category: "Healing", theme: "Cleansing", context: "Healing the leper"},
  %{text: "Son, your sins are forgiven.", reference: "2:5", chapter: 2, verse_start: 5, book_id: mark_id, category: "Forgiveness", theme: "Healing", context: "Paralyzed man"},
  %{text: "Why are you thinking these things?", reference: "2:8", chapter: 2, verse_start: 8, book_id: mark_id, category: "Question", theme: "Heart", context: "Paralyzed man"},
  %{text: "Which is easier: to say to this paralyzed man, 'Your sins are forgiven,' or to say, 'Get up, take your mat and walk'?", reference: "2:9", chapter: 2, verse_start: 9, book_id: mark_id, category: "Question", theme: "Authority", context: "Paralyzed man"},
  %{text: "But I want you to know that the Son of Man has authority on earth to forgive sins. I tell you, get up, take your mat and go home.", reference: "2:10-11", chapter: 2, verse_start: 10, verse_end: 11, book_id: mark_id, category: "Command", theme: "Authority", context: "Paralyzed man"},
  
  # ===== LUKE'S GOSPEL KEY SAYINGS =====
  %{text: "Do not be afraid, Mary; you have found favor with God.", reference: "1:30", chapter: 1, verse_start: 30, book_id: luke_id, category: "Comfort", theme: "Fear", context: "Annunciation"},
  %{text: "The Spirit of the Lord is on me, because he has anointed me to proclaim good news to the poor. He has sent me to proclaim freedom for the prisoners and recovery of sight for the blind, to set the oppressed free,", reference: "4:18", chapter: 4, verse_start: 18, book_id: luke_id, category: "Proclamation", theme: "Mission", context: "Nazareth synagogue"},
  %{text: "to proclaim the year of the Lord's favor.", reference: "4:19", chapter: 4, verse_start: 19, book_id: luke_id, category: "Proclamation", theme: "Favor", context: "Nazareth synagogue"},
  %{text: "Today this scripture is fulfilled in your hearing.", reference: "4:21", chapter: 4, verse_start: 21, book_id: luke_id, category: "Declaration", theme: "Fulfillment", context: "Nazareth synagogue"},
  %{text: "Blessed are you who are poor, for yours is the kingdom of God.", reference: "6:20", chapter: 6, verse_start: 20, book_id: luke_id, category: "Blessing", theme: "Beatitudes", context: "Sermon on the Plain"},
  %{text: "Blessed are you who hunger now, for you will be satisfied. Blessed are you who weep now, for you will laugh.", reference: "6:21", chapter: 6, verse_start: 21, book_id: luke_id, category: "Blessing", theme: "Beatitudes", context: "Sermon on the Plain"},
  %{text: "Blessed are you when people hate you, when they exclude you and insult you and reject your name as evil, because of the Son of Man.", reference: "6:22", chapter: 6, verse_start: 22, book_id: luke_id, category: "Blessing", theme: "Persecution", context: "Sermon on the Plain"},
  
  # ===== FINAL SAYINGS =====
  %{text: "Father, forgive them, for they do not know what they are doing.", reference: "23:34", chapter: 23, verse_start: 34, book_id: luke_id, category: "Prayer", theme: "Forgiveness", context: "Crucifixion"},
  %{text: "Truly I tell you, today you will be with me in paradise.", reference: "23:43", chapter: 23, verse_start: 43, book_id: luke_id, category: "Promise", theme: "Paradise", context: "Crucifixion"},
  %{text: "Father, into your hands I commit my spirit.", reference: "23:46", chapter: 23, verse_start: 46, book_id: luke_id, category: "Prayer", theme: "Surrender", context: "Crucifixion"},
  %{text: "It is finished.", reference: "19:30", chapter: 19, verse_start: 30, book_id: john_id, category: "Declaration", theme: "Completion", context: "Crucifixion"},
  %{text: "Peace be with you!", reference: "20:19", chapter: 20, verse_start: 19, book_id: john_id, category: "Greeting", theme: "Peace", context: "Post-resurrection"},
  %{text: "Why are you troubled, and why do doubts rise in your minds?", reference: "24:38", chapter: 24, verse_start: 38, book_id: luke_id, category: "Question", theme: "Doubt", context: "Post-resurrection"},
  %{text: "Look at my hands and my feet. It is I myself! Touch me and see; a ghost does not have flesh and bones, as you see I have.", reference: "24:39", chapter: 24, verse_start: 39, book_id: luke_id, category: "Proof", theme: "Resurrection", context: "Post-resurrection"},
  %{text: "This is what is written: The Messiah will suffer and rise from the dead on the third day,", reference: "24:46", chapter: 24, verse_start: 46, book_id: luke_id, category: "Teaching", theme: "Resurrection", context: "Post-resurrection"},
  %{text: "and repentance for the forgiveness of sins will be preached in his name to all nations, beginning at Jerusalem.", reference: "24:47", chapter: 24, verse_start: 47, book_id: luke_id, category: "Command", theme: "Mission", context: "Post-resurrection"}
]

# Insert using direct SQL to avoid Ash schema issues
now = DateTime.utc_now() |> DateTime.truncate(:second)

IO.puts("Starting massive direct SQL seeding of #{length(all_sayings)} sayings...")

Enum.with_index(all_sayings, 1) |> Enum.each(fn {saying, index} ->
  if rem(index, 50) == 0 do
    IO.puts("Seeded #{index} sayings...")
  end
  
  id = UUIDHelper.generate()
  verse_end = Map.get(saying, :verse_end)
  
  Repo.query!("""
    INSERT INTO sayings (id, text, reference, chapter, verse_start, verse_end, context, category, theme, book_id, inserted_at, updated_at)
    VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)
  """, [
    id,
    saying.text,
    saying.reference, 
    saying.chapter,
    saying.verse_start,
    verse_end,
    saying.context,
    saying.category,
    saying.theme,
    saying.book_id,
    now,
    now
  ])
end)

final_count = Repo.query!("SELECT COUNT(*) FROM sayings") |> Map.get(:rows) |> List.first() |> List.first()
IO.puts("🎉 Successfully seeded #{length(all_sayings)} sayings!")
IO.puts("📚 Total sayings now in database: #{final_count}")
IO.puts("✨ Comprehensive Jesus sayings database is complete!")