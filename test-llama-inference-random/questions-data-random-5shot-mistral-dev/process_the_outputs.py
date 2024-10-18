import sys

if __name__ == '__main__':
    # paths = ['questions-v0_prediction.txt','questions-v2_prediction.txt','questions-v3_prediction.txt','questions-v4_prediction.txt']
    paths = ['questions-v1_prediction.txt']
    for path in paths:
        vqls = []
        with open(path,'r') as file:
            for line in file:
                vqls.append(line.strip().split('/* Question:')[0].strip())

        with open(path.strip().split('.')[0] + '_new.txt','w') as file:
            file.write('\n'.join(vqls))
