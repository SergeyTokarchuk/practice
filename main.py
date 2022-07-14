import os

def func(count, path)
    for i in os.listdir(path):
        with open(os.path.join(path, i), 'r', encoding='utf-8') as f:
            file = f.read()
            sentence = file.split('. ')
            for k in range(len(sentence)):
                sentence[k] = sentence[k] + '.'
            str2 = ''
            str1 = str2.join(sentence[:count])
        with open(os.path.join(path, i), 'w', encoding='utf-8') as f:
            f.write(str1)

path='/home/sergey/text'
func(5, p)