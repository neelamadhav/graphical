import string
invalidChars = set(string.punctuation)
def is_number(s):
    try:
        float(s)
        return True
    except ValueError:
        return False
out = open('outFile.txt', 'w')
for line in open('pos.traindev').readlines():
    line = line.strip()
    if line == '':
        out.write('\n');
        continue
    line = line.split(' ')
    word = line[0]
    outline = word
    capital = not word.islower() and not word.isupper()
    allCapital = word.isupper()
    numerical = is_number(word)
    mention = word.startswith('@')
    hashtag = word.startswith('#')
    specialChar = word in invalidChars
    label = line[1]
    if specialChar:
        outline = outline + ' SPECIALCHAR'
    if not specialChar and capital:
        outline = outline + ' CAPITALIZED'
    if allCapital:
        outline = outline + ' ALLCAPITALIZED'
    if numerical:
        outline = outline + ' NUMERICAL'
    if mention:
        outline = outline + ' MENTION'
    if hashtag:
        outline = outline + ' HASHTAG'
    outline = outline +' '+label+'\n'  
    out.write(outline)

out.close()
