---
title: TAIDE - Trustworthy AI Dialog Engine
summary: The TAIDE project developed a trustworthy LLM tailored for Taiwanese culture. Outperforming GPT3.5-Turbo on 14 task evaluations.
tags:
  - NLP
  - LLM
date: '2024-03-01T00:00:00Z'

# Optional external URL for project (replaces project detail page).
external_link: ''

image:
  focal_point: Smart

links:
  - name: Huggingface
    url: https://huggingface.co/taide
  - name: Project Main Page
    url: https://taide.tw/index
  - name: News
    url: https://www.taipeitimes.com/News/taiwan/archives/2024/05/04/2003817360
    icon_pack: fas
    icon: newspaper
url_code: ''
url_pdf: ''
url_slides: ''
url_video: ''

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""
---

The TAIDE project focuses on creating generative AI dialogue models tailored to Taiwan's language and culture. By integrating industry, academia, and research, we aim to develop trustworthy AI, boost Taiwan's global competitiveness, promote industrial growth, and reduce dependence on foreign technologies.

Features:

- Expanded character and word set: Added 24,720 Chinese characters and high-frequency words.
- Used only licensed data: Ensured all training data was legally obtained.
- Improved performance in tasks like summarization, letter and article writing, and translation.
- Taiwanese culture emphasis: Incorporated knowledge of local culture and language.
- Multi-turn Q&A ability: Equipped the model for multi-turn dialogues.

#### Releases

- [**Llama3-TAIDE-LX-8B-Chat-Alpha1**](https://huggingface.co/taide/Llama3-TAIDE-LX-8B-Chat-Alpha1)
  - Based on LLaMA3-8b
  - Max Content Length: 8K
  - Traditional Chinese Training Data Tokens: 43B
  - Training Time: 2336 H100 GPU Hours

- [**TAIDE-LX-7B-Chat**](https://huggingface.co/taide/TAIDE-LX-7B-Chat)
  - Based on LLaMA2-7b
  - Max Content Length: 4K
  - Traditional Chinese Training Data Tokens: 41.44B
  - Training Time: 1531.82 H100 GPU Hours

