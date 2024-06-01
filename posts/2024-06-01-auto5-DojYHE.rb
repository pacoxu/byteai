```
---

title: '解决Transformer根本缺陷，CoPE论文爆火：所有大模型都能获得巨大改进'
date: 2024-06-02
author: ByteAILab

---

即使最强大的 LLM 也难以通过 token 索引来关注句子等概念，现在有办法了。

最近两天，马斯克和 LeCun 的口水战妥妥成为大家的看点。

---
这两位 AI 圈的名人你来我往，在推特（现为 X）上相互拆对方台。

LeCun 在宣传自家最新论文时，也不忘手动 @ 一把马斯克，并意味深长地嘱咐道：「马斯克，我们这项研究用来改善你家的 Grok 也没问题。」

LeCun 宣传的这篇论文题目为《 Contextual Position Encoding: Learning to Count What’s Important 》，来自 Meta 的 FAIR。

骂战归骂战，这篇论文的重要性不言而喻。短短 24 小时之内就成为了 AI 领域最热门的论文之一。它有望解决如今大模型（LLM）最让人头疼的问题。

论文地址：https://arxiv.org/pdf/2405.18719

总的来说，该研究提出了一种新的用于 transformer 的位置编码方法 CoPE（全称 Contextual Position Encoding），解决了标准 transformer 无法解决的计数和复制任务。传统的位置编码方法通常基于 token 位置，而 CoPE 允许模型根据内容和上下文来选择性地编码位置。CoPE 使得模型能更好地处理需要对输入数据结构和语义内容进行精细理解的任务。文章通过多个实验展示了 CoPE 在处理选择性复制、计数任务以及语言和编码任务中相对于传统方法的优越性，尤其是在处理分布外数据和需要高泛化能力的任务上表现出更强的性能。

CoPE 为大型语言模型提供了一种更为高效和灵活的位置编码方式，拓宽了模型在自然语言处理领域的应用范围。

有网友表示，CoPE 的出现改变了在 LLM 中进行位置编码的游戏规则，此后，研究者能够在一个句子中精确定位特定的单词、名词或句子，这一研究非常令人兴奋。

这篇论文主要讲了什么，我们接着看。

许多常见的数据源（例如文本、音频、代码）都是顺序序列（ordered sequences）。在处理此类序列时，顺序（ordering）信息至关重要。对于文本，位置信息不仅对于解码单词之间的含义至关重要，而且在其他尺度（例如句子和段落级别）上都是必需的。

作为当前大型语言模型 (LLM) 的主要支柱 Transformer 架构，依赖于注意力机制，而这种机制本身就缺乏顺序信息，因此，需要一种额外的机制来编码数据的位置信息。

先前有研究者提出了位置编码（PE，Position encoding），该方法通过为每个位置分配一个嵌入向量，并将其添加到相应的 token 表示中来实现这一点。然而，当前的位置编码方法使用 token 计数来确定位置，因此无法推广到更高层次如句子。

为了将位置与更具有语义的单元（如单词或句子）联系起来，需要考虑上下文。然而，使用当前的位置编码方法无法实现这一点，因为位置寻址是独立于上下文计算的，然后再与上下文寻址合并。

Meta 认为，位置与上下文寻址的这种分离是问题的根本所在，因此他们提出了一种新的 PE 方法，即上下文位置编码（ CoPE ），将上下文和位置寻址结合在一起。

方法介绍

CoPE 首先使用上下文向量确定要计数的 token。具体来说，给定当前 token 作为查询向量，接着使用先前 token 的键向量计算一个门值（gate value）。然后汇总这些门值，以确定每个 token 相对于当前 token 的相对位置，如图 1 所示。

与 token 位置不同，上下文位置可以取分数值，因而不能具有指定的嵌入。相反，该研究插入赋值为整数值的嵌入来计算位置嵌入。与其他 PE 方法一样，这些位置嵌入随后被添加到键向量中，因此查询向量可以在注意力操作中使用它们。由于上下文位置可能因查询和层而异，因此该模型可以同时测量多个单元的距离。

在 CoPE 中，位置是通过上下文相关的方式来测量的，而不是简单的 token 计数。该方法的工作原理是首先决定在使用上下文向量测量距离时应包含哪些 token。因此，对每个查询 q_i 和键 k_j 对计算门值

其中 j < i 且 σ 是 sigmoid 函数。门值为 1 表示该键将被计入位置测量中，而 0 表示将被忽略。例如，要计算 token i 和 j 之间的句子，仅对于诸如 “.” 之类的句子分隔 token，门值应为 1。门以查询为条件，如果需要，每个 ...

---

```
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。