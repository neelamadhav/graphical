import string

stopwords = ["after", "afterwards", "again", "against", "ago", "ah", "ahead", "ain't", "all", "allow", "allows", "almost", "alone", "along", "alongside", "already", "also", "although", "always", "am", "amid", "amidst", "among", "amongst", "amoungst", "amount", "an", "and", "announce", "another", "any", "anybody", "anyhow", "anymore", "anyone", "anything", "anyway", "anyways", "anywhere", "apart", "apparently", "appear", "appreciate", "appropriate", "approximately", "are", "aren", "arent", "aren't", "arise", "around", "as", "a's", "aside", "ask", "asking", "associated", "at", "auth", "available", "away", "awfully", "b", "back", "backward", "backwards", "be", "became", "because", "become", "becomes", "becoming", "been", "before", "beforehand", "begin", "beginning", "beginnings", "begins", "behind", "being", "believe", "below", "beside", "besides", "best", "better", "between", "beyond", "bill", "biol", "both", "bottom", "brief", "briefly", "but", "by", "c", "ca", "call", "came", "can", "cannot", "cant", "can't", "caption", "cause", "causes", "certain", "certainly", "changes", "clearly", "c'mon", "co", "co.", "com", "come", "comes", "computer", "con", "concerning", "consequently", "consider", "considering", "contain", "containing", "contains", "corresponding", "could", "couldnt", "couldn't", "course", "cry", "c's", "currently", "d", "dare", "daren't", "date", "de", "definitely", "describe", "described", "despite", "detail", "did", "didn't", "different", "directly", "do", "does", "doesn't", "doing", "done", "don't", "down", "downwards", "due", "during", "e", "each", "ed", "edu", "effect", "eg", "eight", "eighty", "either", "eleven", "else", "elsewhere", "empty", "end", "ending", "enough", "entirely", "especially", "et", "et-al", "etc", "even", "ever", "evermore", "every", "everybody", "everyone", "everything", "everywhere", "ex", "exactly", "example", "except", "f", "fairly", "far", "farther", "few", "fewer", "ff", "fifteen", "fifth", "fify", "fill", "find", "fire", "first", "five", "fix", "followed", "following", "follows", "for", "forever", "former", "formerly", "forth", "forty", "forward", "four", "from", "front", "full", "further", "furthermore", "g", "gave", "get", "gets", "getting", "give", "given", "gives", "giving", "go", "goes", "going", "gone", "got", "gotten", "greetings", "h", "had", "hadn't", "half", "happens", "hardly", "has", "hasnt", "hasn't", "have", "not have", "haven't", "having", "he", "hed", "he'd", "he'll", "hello", "help", "hence", "her", "here", "hereafter", "hereby", "herein", "heres", "here's", "hereupon", "hers", "herse", "herself", "hes", "he's", "hi", "hid", "him", "himse", "himself", "his", "hither", "home", "hopefully", "how", "howbeit", "however", "how's", "hundred", "i", "I", "id", "i'd", "ie", "if", "ignored", "i'll", "im", "i'm", "immediate", "immediately", "importance", "important", "in", "inasmuch", "inc", "inc.", "indeed", "index", "indicate", "indicated", "indicates", "information", "inner", "inside", "insofar", "instead", "interest", "into", "invention", "inward", "is", "isn't", "it", "itd", "it'd", "it'll", "its", "it's", "itse", "itself", "i've", "j", "just", "k", "keep", "keeps", "kept", "keys", "kg", "km", "know", "known", "knows", "l", "largely", "last", "lately", "later", "latter", "latterly", "least", "less", "lest", "let", "lets", "let's", "like", "liked", "likely", "likewise", "line", "little", "'ll", "look", "looking", "looks", "low", "lower", "ltd", "m", "made", "mainly", "make", "makes", "many", "may", "maybe", "mayn't", "me", "mean", "means", "meantime", "meanwhile", "merely", "mg", "might", "mightn't", "mill", "million", "mine", "minus", "miss", "ml", "more", "moreover", "most", "mostly", "move", "mr", "mrs", "much", "mug", "must", "mustn't", "my", "myse", "myself", "n", "na", "name", "namely", "nay", "nd", "near", "nearly", "necessarily", "necessary", "need", "needn't", "needs", "neither", "never", "neverf", "neverless", "nevertheless", "new", "next", "nine", "ninety", "no", "nobody", "non", "none", "nonetheless", "noone", "no-one", "nor", "normally", "nos", "not", "noted", "nothing", "not in", "notwithstanding", "novel", "now", "nowhere", "o", "obtain", "obtained", "obviously", "of", "off", "often", "oh", "ok", "okay", "old", "omitted", "on", "once", "one", "ones", "one's", "only", "onto", "opposite", "or", "ord", "other", "others", "otherwise", "ought", "oughtn't", "our", "ours ", "ours", "ourselves", "out", "outside", "over", "overall", "owing", "own", "p", "page", "pages", "part", "particular", "particularly", "past", "per", "perhaps", "placed", "please", "plus", "poorly", "possible", "possibly", "potentially", "pp", "predominantly", "present", "presumably", "previously", "primarily", "probably", "promptly", "proud", "provided", "provides", "put", "q", "que", "quickly", "quite", "qv", "r", "ran", "rather", "rd", "re", "readily", "really", "reasonably", "recent", "recently", "ref", "refs", "regarding", "regardless", "regards", "related", "relatively", "research", "respectively", "resulted", "resulting", "results", "right", "round", "run", "s", "said", "same", "saw", "say", "saying", "says", "sec", "second", "secondly", "section", "see", "seeing", "seem", "seemed", "seeming", "seems", "seen", "self", "selves", "sensible", "sent", "serious", "seriously", "seven", "several", "shall", "shan't", "she", "shed", "she'd", "she'll", "shes", "she's", "should", "shouldn't", "show", "showed", "shown", "showns", "shows", "side", "significant", "significantly", "similar", "similarly", "since", "sincere", "six", "sixty", "slightly", "so", "some", "somebody", "someday", "somehow", "someone", "somethan", "something", "sometime", "sometimes", "somewhat", "somewhere", "soon", "sorry", "specifically", "specified", "specify", "specifying", "state", "states", "still", "stop", "strongly", "sub", "substantially", "successfully", "such", "sufficiently", "suggest", "sup", "sure", "system", "t", "take", "taken", "taking", "tell", "ten", "tends", "th", "than", "thank", "thanks", "thanx", "that", "that'll", "thats", "that's", "that've", "the", "their", "theirs", "them", "themselves", "then", "thence", "there", "thereafter", "thereby", "thered", "there'd", "therefore", "therein", "there'll", "thereof", "therere", "there're", "theres","there's", "thereto", "thereupon", "there've", "these", "they", "theyd", "they'd", "they'll", "theyre", "they're", "they've", "thick", "thickv", "thin", "thing", "things", "think", "third", "thirty", "this", "thorough", "thoroughly", "those", "thou", "though", "thoughh", "thousand", "three", "throug", "through", "throughout", "thru", "thus", "til", "till", "tip", "to", "together", "too", "took", "top", "toward", "towards", "tried", "tries", "truly", "try", "trying", "ts", "t's", "twelve", "twenty", "twice", "two", "u", "un", "under", "underneath", "undoing", "unfortunately", "unless", "unlike", "unlikely", "until", "unto", "up", "upon", "ups", "upwards", "us", "use", "used", "useful", "usefully", "usefulness", "uses", "using", "usually", "uucp", "v", "value", "various", "'ve", "versus", "very", "via", "viz", "vol", "vols", "vs", "w", "want", "wants", "was", "wasn't", "way", "we", "wed", "we'd", "welcome", "well", "we'll", "went", "were", "we're", "weren't", "we've", "what", "whatever", "what'll", "whats", "what's", "what've", "when", "whence", "whenever", "when's", "where", "whereafter", "whereas", "whereby", "wherein", "wheres", "where's", "whereupon", "wherever", "whether", "which", "whichever", "while", "whilst", "whim", "whither", "who", "whod", "who'd", "whoever", "whole", "who'll", "whom", "whomever", "whos", "who's", "whose", "why", "why's", "widely", "will", "willing", "wish", "with", "within", "without", "wonder", "won't", "words", "world", "would", "wouldn't", "www", "x", "y", "yes", "yet", "you", "youd", "you'd", "you'll", "your", "youre", "you're", "yours", "yourself", "yourselves", "you've", "z", "zero"]

posMap = {}
i = 0;
for line in open('input.pos', 'r').readlines():
    line = line.strip()
    if line == '':
        continue
    i = i+1
    line = line.split()
    posMap[i] = line[1]

invalidChars = set(string.punctuation)
def is_number(s):
    try:
        float(s)
        return True
    except ValueError:
        return False
j = 0
out = open('ner.input.feature', 'w')
for line in open('pos.input').readlines():
    line = line.strip()
    if line == '':
        out.write('\n');
        continue
    j = j+1
    line = line.split(' ')
    word = line[0]
    outline = word
    capital = not word.islower() and not word.isupper()
    allCapital = word.isupper()
    numerical = is_number(word)
    mention = word.startswith('@')
    hashtag = word.startswith('#')
    url = word.startswith('http')
    apostrophe = False
    if word.find("'") > -1 or word.find('"') > -1:
        apostrophe = True
    specialChar = word in invalidChars
    stopword = word.strip().lower() in stopwords
    if specialChar:
        outline = outline + ' SPECIALCHAR'
    if not numerical and not specialChar and capital:
        outline = outline + ' CAPITALIZED'
    if allCapital:
        outline = outline + ' ALLCAPITALIZED'
    if numerical:
        outline = outline + ' NUMERICAL'
    if mention:
        outline = outline + ' MENTION'
    if hashtag:
        outline = outline + ' HASHTAG'
    if url:
        outline = outline + ' URL'
    if apostrophe:
        outline = outline + ' APOSTROPHE'
    if stopword:
        outline = outline + ' STOPWORD'
    outline = outline + ' '+posMap[j]
 	
    outline = outline +'\n'  
    out.write(outline)

out.close()
