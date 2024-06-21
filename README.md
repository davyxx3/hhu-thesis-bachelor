# hhu-thesis-bachelor
河海大学本科毕业论文LaTeX模板（理工科）

>更新时间：2024年

## 简介
本项目基于曹文翰老师的[hhuthesis](https://github.com/caowenhan/hhuthesis)项目开发

曹老师提供了河海大学硕博论文的详细模板，但针对本科毕业论文在格式上有一定欠缺

因此本人在之前写毕业论文时，修改了[hhuthesis](https://github.com/caowenhan/hhuthesis)项目的部分源码，
仿照教务系统中的Word版本科毕业论文格式，搭建了LaTeX版的本科毕业论文格式模版

此模板已将中英文封面、目录、声明等页设置好，使用者无需操心论文格式，只需专注于论文写作即可🙌

## 重要提醒

**此模版不是官方模版，只是个人利用闲暇时间做的一个小项目，更新完全随缘。**

**本论文模版并不完美，存在很多缺陷，也并不保证能通过老师的格式检查。**

**毕业论文规范可能每年都会改变，请使用者以当年学校公布的论文规范为标准。**

本模版参考的[hhuthesis](https://github.com/caowenhan/hhuthesis)项目本来就是基于博士论文的规范搭建的。即便本人在此基础上做了针对本科论文的修改，也无法囊括所有的细节，其中的一些设置（如图、表的展示格式）还是保持原项目的格式，即还是博士论文规范的格式。

但至少本人曾经（2022年）的毕业论文就是基于此模版而创作，最后也顺利提交了。
就我个人体验而言，太过细节的格式问题其实无伤大雅（但不排除有些老师专门挑刺的可能）。

**一句话总结：本模版适用于像本人一样不追求格式，只想专注于写作的同学，如果有格式洁癖、强迫症，请使用Word。**

## 运行环境
Tex Live 2019

## 使用方式
1. 在[hhuthesis-example.tex](https://github.com/davyxx3/hhu-thesis-bachelor/blob/master/hhuthesis-example.tex)文件中填写好基本的信息
2. 在[chapters](https://github.com/davyxx3/hhu-thesis-bachelor/tree/master/chapters)文件夹下的tex文件中开始论文写作
3. 在[reference](https://github.com/davyxx3/hhu-thesis-bachelor/tree/master/reference)文件夹下的bib文件中引入参考文献
4. 在[hhuthesis-example.tex](https://github.com/davyxx3/hhu-thesis-bachelor/blob/master/hhuthesis-example.tex)中引入所有的tex和bib文件

> 建议：将[hhuthesis-example.tex](https://github.com/davyxx3/hhu-thesis-bachelor/blob/master/hhuthesis-example.tex)文件改成自己的名字，比如thesis.tex

更多的使用细节（如插入列表、代码块等）可参考[hhuthesis.pdf](https://github.com/davyxx3/hhu-thesis-bachelor/blob/master/hhuthesis.pdf)文件
> 提示：不用管里面提到的封面信息哦，本项目已经为你处理好了~🤗   

## 开发说明
所有的改动都基于[hhuthesis](https://github.com/caowenhan/hhuthesis)项目中的[hhuthesis.cls](https://github.com/caowenhan/hhuthesis/blob/master/hhuthesis.cls)文件。本人将其重命名为[hhu-thesis-bachelor.cls](https://github.com/davyxx3/hhu-thesis-bachelor/blob/master/hhu-thesis-bachelor.cls)，进行了对应的修改，并删除了许多冗余代码。

如使用者需修改样式，或基于此模版进行二次开发，请修改[hhu-thesis-bachelor.cls](https://github.com/davyxx3/hhu-thesis-bachelor/blob/master/hhu-thesis-bachelor.cls)文件即可。
> 更多细节请参考：[hhuthesis.pdf](https://github.com/davyxx3/hhu-thesis-bachelor/blob/master/hhuthesis.pdf)文件

## 问题反馈
如有任何问题可直接提issue，或通过我的[Email](mailto:davyqin3@gmail.com)联系我

## 致谢
非常感谢[JiaFeiMiao-K-Cat](https://github.com/JiaFeiMiao-K-Cat)对此模版的贡献！

## 支持
如果有帮助到学弟学妹们，希望大家能点个star支持一下作者啦~😊
