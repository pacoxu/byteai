```
---

title: 'ChatGPT用于科学，如何与你的数据对话？LLM帮你做科研'
date: 2024-07-26
author: ByteAILab

---

![图片](https://mmbiz.qpic.cn/mmbiz_png/XLCp9HBkwLm372Coc9hDO0AWV4ibTVp1qsDITZJGTQRtDMicBhEjGLicUZgutxKwDaR49jtRyPBtznP0Vic0sCrLYQ/640?wx_fmt=png&from=appmsg)

编辑 | 白菜叶

「计算机，分析。」在科幻小说中，人物不需要编程技能来从数据中提取有意义的信息，他们只是简单地提出要求而已。

---


现在，越来越多的公司正尝试利用大型语言模型 (LLM) 将这一幻想变成现实。这些功能强大的人工智能（AI）工具让研究人员能够用自然语言询问数据问题，例如「对照组和实验组有什么区别？」。

但与科幻小说中的人工智能不同，这些人工智能给出的答案仍然需要谨慎对待，并经过仔细检查才能安全使用。想想 ChatGPT 的数据。

使用这些工具的原因很简单：筛选和确定生物数据的优先顺序是一项费力且具有挑战性的工作，需要专业技能。

「生物数据变得越来越复杂。」加利福尼亚州旧金山 Enable Medicine 公司的科学经理 Alexandro Trevino 说，该公司正在为其药物开发客户构建空间基因表达和蛋白质定位数据图谱。「规模大大增加，这些数据集的复杂性也增加了，我认为我们已经扩大了挖掘和有效理解以及解释这些数据的挑战难度。」

理论上，专门的 LLM 可以让研究人员从数据中提取见解，而无需了解数据的复杂性或如何编程。其中一些工具已经可以回答非常复杂的问题。但它们仍处于开发的初级阶段。与其他基于 LLM 的工具一样，它们可以「产生幻觉」或编造答案。因此，它们的开发人员表示，它们应该在人类的某种程度的监督下使用。

为什么要谈论你的数据？
在线数据并不缺乏，查询数据的工具也不少。例如，CZ CELLxGENE 数据门户提供了预置工具，允许研究人员查询单细胞基因表达数据集。ChatPDF 等实用程序允许研究人员上传 PDF（例如科学论文）并提出问题。但更复杂的分析需要了解基础数据的结构及其变量的名称和类型。

为了使这种互动更加容易，旧金山的生物技术公司 Genentech 正在从头开始构建其基于 LLM 的工具。该 LLM 项目由该公司纽约前沿研究总监 Stephen Ra 领导，旨在解决「药物发现和开发过程中的大量问题」，他说，「从目标识别、发现、安全性、评估、优先排序，一直到我们如何做出更好的决策，或降低某些临床试验阶段的风险，或更好地了解患者的轨迹和不良后果」。

Ra 表示，由此产生的 LLM 可以减轻目前繁重的手工任务。例如，一位科学家可能会将他们的一个数据集搁置一段时间，但随后又想汇总这些数据。他们可以询问，「请提供这个特定检测、这个特定时间、这个菌株的所有结果」，Ra 说。该系统应该能够理解查询和数据，足以满足请求，Genentech 及其母公司 Roche 的「许多团队」正在对其进行 beta 测试。

同样，Enable Medicine 的首席执行官 Kamni Vijay 表示，其 LLM 学位旨在让公司代表其客户（主要是肿瘤学和自身免疫性疾病领域的制药公司）查询其生物图谱。

Vijay 表示，研究人员可以提出诸如「患者对治疗有反应吗？对治疗有反应的患者与没有反应的患者有何区别？」或「哪些生物标记会影响或预测疾病进展？」等问题。她补充说，Enable 正在基于现有的几个 LLM 进行构建，并使用来自数万个样本的 PB 级（1 PB 为 100 万 GB）分子和细胞数据进行训练。然而，他们仍在进行实验。「我们的研究的一部分是探索这种界面是否具有科学有效性和价值。」

它们看起来怎么样？
该领域的一些工具模仿了 ChatGPT 流行的问答格式。例如，由马萨诸塞州波士顿布莱根妇女医院的计算病理学家 Faisal Mahmood 创建的 PathChat 允许用户输入病理图像（例如肿瘤活检结果）以及描述性数据（例如「该肿瘤对标记物 A、B 和 C 染色呈阳性」）。然后，用户可以用自然语言询问有关这些数据的问题，例如「您对肿瘤原发来源的评估是什么？」这些交流在视觉上就像 WhatsApp 对话中来回的文本气泡一样。

然而，Vijay 表示，Enable 的系统与问答形式有所不同。她说，这是一个更复杂的自动化系统，允许使用自然语言进行查询。

还有一些工具输出的是代码而不是文字。Mergen 是一个基于 LLM 的 R 编程语言库，由柏林马克斯·德尔布吕克中心的生物信息学家 Altuna Akalin 构建。Akalin 创建这个库（或「软件包」）是因为他的团队收到的分析基因组数据的请求超出了它能够处理的范围。Mergen 是专为基因组学研究人员而非计算科学家设计的，它分析预处理的基因组学数据集以回答诸如「你能告诉我在特定个体中过度表达的所有基因吗？」之类的问题。该工具不会给出答案，而是返回可执行分析的可执行代码。然而，与所有 LLM 一样，该代码在使用前应由人工仔细检查，Akalin 警告说，因为即使代码是可执行的，也可能包含逻辑错误。

它们是怎样被制作的？
要建立一个允许研究人员与数据对话的 LLM 项目，需要什么呢？与所有人工智能系统一样，答案是大量的训练数据。但数据类型的平衡同样重要，Ra 说，他的团队为实现正确的平衡付出了相当大的努力。「对我们来说，价值在于能够利用对 Genentech 许多团队具有广泛用途的东西，并允许这些团队微调他们自己的模型。」 Ra 表示，Genentech 利用内部和外部信息训练其模型，涵盖多个项目和领域，包括组学和临床数据。

Trevino 表示，将通用 LLM 转变为用户能够与数据对话的系统主要有两种方式。一种是使用特定领域的信息（例如病理学数据）对通用 LLM 进行微调。他说，在这种「非常有效」的方法中，模型本身「正在具体学习新东西」。另一种方法称为情境化，它不会改变底层的通用 LLM，而是为其提供定制的上下文，例如医学文献数据库，作为查询的一部分。Trevino 拒绝透露 Enable 采用的是哪种方法。

为了构建 PathChat，Mahmood 团队从 Facebook 母公司 Meta 开发的通用 LLM Llama 2 开始。他们将 LLM 与他们为病理学构建的两个视觉语言模型（称为 UNI 和 CONCH）连接起来，每个模型都经过数百万张病理学图像和说明的训练，从而构建了一个多模态 LLM。

Mahmood 说，研究人员随后利用从病例报告和教育文章中提取的 50 万条病理学对话改进了多模式 LLM，这些对话跟踪了病例的完整轨迹，主要来自布莱根妇女医院和麻省总医院，最终产生了 PathChat。他说，Brigham 妇女医院的一些病理学家目前正在使用该系统来解释显微镜图像并编写病理学家可以检查的形态学描述。

它们值得信赖吗？
确认很重要：LLM 提供的答案并不意味着答案是正确的。LLM 可以编造答案或省略信息，如何最好地确保模型的响应可验证和可复制仍未确定，Trevino 说，「如何审查结果是一个活跃的研究领域。」

Ra 表示，一个关键方面是来自特定领域专家的反馈。有多种方式可以整合此类检查 — 例如，用户可以提供简单的赞成或反对，更详细的回复，或者一个人和 LLM 之间可以进行反复互动。无论如何，希望随着时间的推移，该模型将发展为需要更少的输入，因为随着数据集的扩大，这种反馈是不可扩展的。

Trevino 和 Ra 表示，在研究型 LLM 课程中，理解和信任底层模型中发生的事情尤为重要。Trevino 说，一个挑战是「稍微打开那个黑匣子」，以便更好地理解为什么它会以这样的方式回答问题。这可能有助于最大限度地减少幻觉。

事实上，Ra 表示，Genentech 从头开始建立 LLM 学位的动机之一是，它希望确保自己能够信任和理解输入的每一点数据。「在我们经常处理特权信息或非常敏感的信息（例如患者数据）的环境中，这一点非常重要，」他说。

Ra 解释道，对于现成的「黑匣子」LLM，并不总是清楚他们是如何接受培训的。「我认为这是一些商业 LLM 解决方案普遍受到的批评，即数据透明度往往不够。」

另一个长期存在的挑战，就像整个 LLM 领域一样，是基础数据的偏见。训练数据中代表性不足的群体将被最终模型错误地表示出来，而目前的基因组数据极大地代表了欧洲血统的人。Trevino 和 Vijay 表示，解决方案是提高基础数据的多样性。但他们表示，基础数据的多样性是否足够，并没有明确的终点。

然而，如果这些挑战得以克服，这些模式「将带来实实在在的好处」，Trevino 说。重要的是「确保这些好处得以实现并最大限度地民主化」，而且这些好处值得我们付出所有努力。

相关内容：[https://www.nature.com/articles/d41586-024-02386-6](https://www.nature.com/articles/d41586-024-02386-6)
```
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。