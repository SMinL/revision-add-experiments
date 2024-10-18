import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np

if __name__ == '__main__':
    # 假设你有一组数据，如下所示：
    # 目标难度（x）和示范样本平均难度（y）的1000个数据点
    np.random.seed(0)  # 设置随机种子以便复现
    difficulty_target = np.random.rand(1000)  # 目标难度，值在0到1之间
    print(difficulty_target)
    print(type(difficulty_target))
    # average_difficulty = difficulty_target + np.random.normal(0, 0.1, 1000)  # 示范样本平均难度，加一些噪声
    #
    # # 绘制散点图及拟合线
    # plt.figure(figsize=(10, 6))
    # sns.regplot(x=difficulty_target, y=average_difficulty, scatter_kws={'s': 10}, line_kws={'color': 'red'})
    # plt.xlabel("Target Difficulty")
    # plt.ylabel("Average Difficulty of Demonstrations")
    # plt.title("Fitting Analysis of Target Difficulty and Demonstration Average Difficulty")
    # plt.grid(True)
    # plt.show()
