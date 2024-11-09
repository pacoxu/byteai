---
title: '量子级精度，静态到动态，微软蛋白MD模拟系统登Nature'
date: 2024-11-09
author: ByteAILab
---

生物世界的本质在于分子及其相互作用的不断变化。了解生物分子的动力学和相互作用对于破译生物过程背后的机制，以及开发生物材料和药物至关重要。

---


正如诺贝尔物理学奖得主理查德·费曼（Richard Feynman）的名言：「所有生物体的行为都可以通过原子的颤动和摆动来理解。」然而，通过实验捕捉这些真实的运动几乎是不可能的。

近年来，以 AlphaFold 和 RoseTTAFold 为代表的深度学习方法，在预测静态晶体蛋白质结构方面已经达到了实验精度，相关研究人员获得了 2024 年诺贝尔化学奖。然而，以原子分辨率准确表征动力学仍然更具挑战性，尤其是当蛋白质发挥作用并与其他生物分、药物分子相互作用时。

经典分子动力学（MD）模拟速度快，但缺乏化学准确性。密度泛函理论（DFT）等量子化学方法可以达到化学精度，但无法扩展到大型生物分子。

MD 模拟用于模拟生物分子的时间相关运动。如果你将蛋白质想象成时钟中复杂的齿轮，那么微软研究...

---

基于 AI 的从头算生物分子动力学系统

AI²BMD 是一种基于 AI 的从头算生物分子动力学系统。AI²BMD 可以以近似从头算的精度（即量子级的精度），高效地对各类蛋白质进行了全原子模拟仿真。

与密度泛函理论相比，它将计算时间缩短了几个数量级。最新发现可以解锁生物分子建模的新功能，特别是对于需要高精度的过程，例如蛋白质-药物相互作用。

AI²BMD 采用一种设计新颖的可通用蛋白质碎片化方法，将蛋白质分割成重叠单元，从而创建一个包含 2000 万个快照的数据集，这是 DFT 级别有史以来最大的数据集。基于微软之前设计的通用分子几何建模基础模型 ViSNet，并将其纳入 PyTorch geometry 库。

研究人员使用机器学习训练了 AI²BMD 的势能函数。然后由高效的 AI²BMD 模拟系统执行...

---

推进生物分子 MD 模拟

AI²BMD 在以下方面代表了 MD 模拟领域的重大进步：

（1）从头算精度：引入了一种可推广的「机器学习力场」，即原子和分子之间相互作用的机器学习模型，用于从头算精度的全原子蛋白质动力学模拟。

（2）解决泛化问题：首次解决了机器学习力场模拟蛋白质动力学的泛化难题，为多种蛋白质提供了稳健的从头算 MD 模拟。

（3）普遍兼容性：AI²BMD 将量子力学（QM）建模从小的局部区域扩展到整个蛋白质，而无需任何关于蛋白质的先验知识。这消除了蛋白质 QM 和 MM 计算之间潜在的不兼容性，并将 QM 区域计算速度提高了几个数量级...

---

展望未来

在生物分子模拟中实现从头算精度具有挑战性，但对于理解生物系统的奥秘以及设计新的生物材料和药物潜力巨大。这一突破证明了 AI for Science 的远见，即利用人工智能的能力革新科学探索。AI²BMD...

---
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。