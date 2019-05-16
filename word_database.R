

pos.words = scan('C:/Users/Asus Zenbook/Desktop/positive-words.txt', what='character', comment.char=';')
neg.words = scan('C:/Users/Asus Zenbook/Desktop/negative-words.txt', what='character', comment.char=';')


pos.words=c(pos.words, 'Congrats', 'prizes', 'prize', 'thanks', 'thnx', 'Grt', 'gr8', 'plz', 'trending', 'recovering', 'brainstorm', 'leader')
neg.words = c(neg.words, 'Fight', 'fighting', 'wtf', 'arrest', 'no', 'not','tfo','lmard','mardatna','of')

