```
---

title: '数据更多更好还是质量更高？这项研究能帮你做出选择'
date: 2024-05-21
author: ByteAILab

---

当计算预算低时，重复使用高质量数据更好；当不差钱时，使用大量数据更有利。

对基础模型进行 scaling 是指使用更多数据、计算和参数进行预训练，简单来说就是「规模扩展」。

---


虽然直接扩展模型规模看起来简单粗暴，但也确实为机器学习社区带来了不少表现卓越的模型。之前不少研究都认可扩大神经模型规模的做法，所谓量变引起质变，这种观点也被称为神经扩展律（neural scaling laws）。

近段时间，又有不少人认为「数据」才是那些当前最佳的闭源模型的关键，不管是 LLM、VLM 还是扩散模型。随着数据质量的重要性得到认可，已经涌现出了不少旨在提升数据质量的研究：要么是从大型语料库中过滤出高质量数据，要么是生成高质量的新数据。但是，过去的扩展律一般是将「数据」视为一个同质实体，并未将近期人们关注的「数据质量」作为一个考量维度。

尽管网络上的数据规模庞大，但高质量数据（基于多个评估指标）通常很有限。现在，开创性的研究来了 —— 数据过滤维度上的扩展律！它来自卡内基梅隆大学和 Bosch Center for AI，其中尤其关注了「大规模」与「高质量」之间的数量 - 质量权衡（QQT）。

![图片](https://image.jiqizhixin.com/uploads/editor/d88009bf-22f2-4f71-8b4c-666abb7484ff/640.png)

- 论文标题：Scaling Laws for Data Filtering—Data Curation cannot be Compute Agnostic
- 论文地址：[点击阅读全文](https://arxiv.org/pdf/2404.07177.pdf)
- 代码地址：[查看代码](https://github.com/locuslab/scaling_laws_data_filtering)

如图 1 所示，当训练多个 epoch 时，高质量数据的效用（utility）就不大了（因为模型已经完成了学习）。

![图片](https://image.jiqizhixin.com/uploads/editor/6ea18eb9-02ec-4416-bb72-52b8374e1829/640.png)

此时，使用更低质量的数据（一开始的效用更小）往往比重复使用高质量数据更有助益。

在数量 - 质量权衡（QQT）之下，我们该如何确定训练使用怎样的数据搭配更好？

为了解答这个问题，任何数据整编（data curation）工作流程都必须考虑模型训练所用的总计算量。这不同于社区对数据过滤（data filtering）的看法。举个例子，LAION 过滤策略是从常见爬取结果中提取出质量最高的 10%。

但从图 2 可以看出，很明显一旦训练超过 35 epoch，在完全未整编的数据集上训练的效果优于在使用 LAION 策略整编的高质量数据上训练的效果。

![图片](https://image.jiqizhixin.com/uploads/editor/6ee18c38-1f29-44a3-9322-c0588e105554/640.png)

当前的神经扩展律无法建模质量与数量之间这种动态的权衡。此外，视觉 - 语言模型的扩展律研究甚至还要更加更少，目前...

---

```
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。