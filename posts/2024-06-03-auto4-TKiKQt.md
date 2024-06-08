---

title: '留给“端侧大模型”的时间不多了'
date: 2024-06-04
author: ByteAILab

---

端侧大模型（Edge AI models），也就是只在设备本地（如智能手机、IoT设备、嵌入式系统等）运行的大模型，过去一两年来非常流行。
具体表现在，终端设备厂商，如苹果、荣耀、小米、OV等，AI公司如商汤科技，都推出了自研的纯端侧大模型。

---

端侧大模型存在的意义，就是“以小博大”。
简单来说，和云侧大模型相比，端侧大模型要在本地部署，所以参数规模都不大，不用担心私密数据在推理时被泄露；不需要网络传输，因此响应速度更快；设备原生搭载，不需要租用云资源，用起来更省……
听起来，端侧大模型简直是AI设备不可或缺的标配啊。但实际情况，可能出乎很多人的意料。

我们在调研和使用多个终端厂商的大模型时发现，端云协同、云端大模型，才是大模型在端侧的主流形式。
比如目前很流行的“手机拍照一键擦除背景人物”，仅靠端侧大模型的计算能力是无法实现的，需要端云协同来完成。
再比如公文写作、长文要点总结、PDF要点摘要等，端侧大模型要么无法完成，比如荣耀、OPPO端侧大模型都不支持PDF文本摘要，小米MiLM的支持度和生成效果也不够好。
最终，用户还是要访问GPT-4、文心一言、智谱清言、讯飞星火、KIMI等云端大模型的网页/APP，来满足一些复杂AIGC任务需求。
不难看到，端侧大模型听起来很美，但真正用起来却有点鸡肋。
而随着云端大模型“变大”（走向统一多模态）又“变小”（压缩技术），留给“端侧大模型”的时间，真的不多了。
端侧大模型不是万能的，但没有云侧大模型是万万不能的
...

---
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。