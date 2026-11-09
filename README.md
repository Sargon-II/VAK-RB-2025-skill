# 📚 ВАК РБ 2025: Библиографический агент и скилл

[![Стандарт ВАК РБ](https://img.shields.io/badge/Стандарт-ВАК%20РБ%202025%20(Приказ%20№206)-007acc?style=flat-square)](https://vak.gov.by/ru/bibliographicDescription-749-ru)
[![Статус](https://img.shields.io/badge/Статус-Актуален%202025%2F2026-success?style=flat-square)](#)
[![Zero-Dependency](https://img.shields.io/badge/Зависимости-Zero--Dependency-brightgreen?style=flat-square)](#)
[![Лицензия](https://img.shields.io/badge/Лицензия-MIT-yellow?style=flat-square)](LICENSE)

[![Агенты](https://img.shields.io/badge/CLI-Claude%20Code%20%7C%20Antigravity%20%7C%20Cursor-6B4FBB?style=flat-square)](#)
[![Веб-ИИ](https://img.shields.io/badge/Web%20AI-ChatGPT%20%7C%20Claude%20%7C%20Gemini%20%7C%20Perplexity%20%7C%20Kimi%20%7C%20DeepSeek-orange?style=flat-square)](#)
[![Аудитория](https://img.shields.io/badge/Для-Студентов%20%7C%20Аспирантов%20%7C%20Учёных-blueviolet?style=flat-square)](#)

> **Универсальный инструмент для автоматического оформления библиографических списков и ссылок по правилам ВАК Республики Беларусь (редакция от 13.10.2025, приказ № 206).**  
> Сделано для **студентов** (дипломные, курсовые работы, научные статьи), **магистрантов**, **аспирантов**, **соискателей** и **научных сотрудников**.  
> Умеет распознавать более 50 типов источников, подбирать пунктуационную сетку ВАК, восстанавливать недостающие данные (страницы, тома, DOI) и собирать идеальную библиографическую запись.

---

## ⚡ Способ 1. Самый быстрый: закинуть архив в любой чат

> **Работает в любых современных веб-чатах:** DeepSeek, Claude, ChatGPT, Google Gemini, Qwen, Kimi, Perplexity.  
> Проверено на актуальном модельном ряде (2026):  
> - **Anthropic:** Claude Opus 5 / 5.5, Claude Sonnet 5 / 5.5, Claude Fable  
> - **OpenAI:** GPT-5.5, GPT-6 Astra, GPT-6.1 Sol, GPT-6 Luna, o3 / o4  
> - **Google:** Gemini 3.8 Flash, Gemini 4 (Argon, Carbon)  
> - **DeepSeek:** DeepSeek V4, DeepSeek V4.1-Flash  
> - **Alibaba:** Qwen 3.8 Max, Qwen 3.7 Plus  
> - **Moonshot:** Kimi 3, Kimi 3.1  

Вам **не нужно ничего распаковывать или устанавливать**:

1. Скачайте файл [**`vak-rb-citations-2025.zip`**](vak-rb-citations-2025.zip) из этого репозитория.
2. Перетащите архив `.zip` прямо в поле ввода чата вашей нейросети (или нажмите на скрепку 📎 и прикрепите архив).
3. Напишите запрос:
   > *«Оформи список литературы строго по правилам ВАК Беларуси 2025 из прикрепленного архива:*  
   > *[вставьте сюда ваш черновой список или отдельные ссылки]»*

*Модели с поддержкой анализа файлов автоматически извлекают базу правил `RULES.md` и эталоны `vak_rb_2025_examples.json`, форматируя источники в строгом соответствии с приказом № 206.*

---

## 🌐 Способ 2. Веб-интерфейсы: разделы Skills, Gems, Projects и Spaces

Если вы хотите подключить скилл один раз и пользоваться им постоянно:

### 1. Claude.ai (Раздел Skills / Projects)
* Откройте меню **Skills** или создайте проект через **Projects** → **Create Project** (на базе моделей Claude Sonnet 5 / 5.5 или Opus 5 / 5.5).
* В блоке **Knowledge** загрузите файлы из папки `vak-rb-citations/` (`RULES.md` и `vak_rb_2025_examples.json`).
* В поле **Instructions** скопируйте инструкцию из [`SKILL.md`](vak-rb-citations/SKILL.md).

### 2. ChatGPT (Раздел Skills / Custom GPTs)
* Откройте **Explore GPTs** → **+ Create** → вкладка **Configure** (рекомендуются модели GPT-5.5, GPT-6.1 Sol / Astra).
* В поле **Instructions** вставьте текст из `SKILL.md`.
* В блок **Knowledge** прикрепите `RULES.md` и `vak_rb_2025_examples.json`.
* Включите **Web Search**, чтобы модель могла верифицировать недостающие страницы и DOI.

### 3. Google Gemini (Раздел Gems)
* Откройте **Gem Manager** → **New Gem** (Создать Gem).
* Назовите Gem: `Библиограф ВАК РБ 2025` (на базе Gemini 3.8 Flash или Gemini 4 Argon).
* В поле инструкций вставьте содержимое `SKILL.md`, а в базу знаний загрузите файлы правил.

### 4. Kimi.ai (Moonshot / Kimi+)
* Создайте профиль или постоянную сессию **Kimi+** (на базе Kimi 3 / 3.1).
* Прикрепите архив `vak-rb-citations-2025.zip` и задайте системную роль из `SKILL.md`.

### 5. 🔍 Perplexity AI (Конфигурация через Space)
В Perplexity интеграция настраивается через выделенное пространство **Spaces**:
1. Перейдите в **Library** → **Spaces** → **Create Space**.
2. В параметрах пространства:
   * **AI Instructions:** вставьте промпт из `SKILL.md`.
   * **Files:** загрузите `RULES.md` и `vak_rb_2025_examples.json`.
   * **Search Focus:** выберите **Academic** или **All Web**.
3. *Результат:* Perplexity совмещает веб-поиск по каталогам (WorldCat, РНБ, elibrary, crossref) и сразу упаковывает найденные метаданные в разметку ВАК РБ 2025.

---

## 💻 Способ 3. CLI-агенты: Claude Code, Antigravity, Cursor

### Быстрая установка одной командой:

**Windows (PowerShell):**
```powershell
irm https://raw.githubusercontent.com/Sargon-II/VAK-RB-2025/main/install.ps1 | iex
```

**macOS / Linux (Bash):**
```bash
curl -fsSL https://raw.githubusercontent.com/Sargon-II/VAK-RB-2025/main/install.sh | bash
```

### Ручное размещение папки:
Скопируйте директорию `vak-rb-citations/` в каталог конфигурации:
* **Claude Code:** `~/.claude/skills/vak-rb-citations/`
* **Antigravity:** `~/.gemini/config/skills/vak-rb-citations/`
* **Cursor:** `~/.cursor/skills/vak-rb-citations/`
* **Universal Agents:** `~/.agents/skills/vak-rb-citations/`

---

## 🛠️ Архитектура форка: на что и как можно адаптировать этот репозиторий

Этот репозиторий спроектирован как модульная основа (*Zero-Dependency skill template*). Вы можете форкнуть его под следующие задачи:

1. **Адаптация под стандарты конкретного вуза или кафедры:**
   * Вузовские методички по оформлению дипломных и курсовых работ (БГУ, БНТУ, БГЭУ, БГУИР, ГрГУ, ГГУ, ВГУ) часто имеют локальные особенности (оформление приложений, титулов, ссылок на ГОСТ 7.1 / 7.0.5). Достаточно скорректировать примеры в `vak_rb_2025_examples.json`.
2. **Форк под стандарты ВАК РФ / ГОСТ Р 7.0.5-2008 / ГОСТ 7.1-2003:**
   * Заменив базу шаблонов на российские или международные нормативы (APA 7, Chicago, Harvard, MLA), вы получаете готовый библиографический агент для других юрисдикций.
3. **Интеграция в автономные агентные стеки:**
   * Скилл готов к прямому подключению как tool/rulebook в **Claude Code**, **Google Antigravity**, **OpenCode**, **Aider**, **CrewAI**, **AutoGen** или **LangChain/LlamaIndex**.
4. **Создание вузовского Telegram-бота или микросервиса нормоконтроля:**
   * На базе этого репозитория можно поднять FastAPI/Python-сервис или Telegram-бота для СНО (Студенческого научного общества) или кафедры, который будет принимать у студентов списки литературы и возвращать отформатированные по ВАК тексты с логом правок.

---

## 📁 Содержимое репозитория

```text
├── vak-rb-citations/             # Автономный скилл (Zero-Dependency)
│   ├── SKILL.md                  # Точка входа: триггеры, инструкции
│   ├── RULES.md                  # Универсальный алгоритм классификации и правила
│   └── vak_rb_2025_examples.json # База из ~120 официальных образцов (50 категорий)
├── install.ps1                   # Скрипт установки для Windows
├── install.sh                    # Скрипт установки для macOS / Linux
├── vak-rb-citations-2025.zip     # Готовый архив для загрузки в веб-чаты
├── LICENSE                       # Лицензия MIT
└── README.md
```

---

## ⚖️ Нормативная база
Инструкция составлена строго по официальным требованиям: **[«Инструкция по оформлению диссертации, автореферата и публикаций по теме диссертации»](https://vak.gov.by/ru/bibliographicDescription-749-ru)** Высшей аттестационной комиссии Республики Беларусь (в редакции приказа ВАК РБ от **13 октября 2025 г. № 206**). Официальные образцы библиографического описания опубликованы на сайте ВАК РБ: [vak.gov.by/ru/bibliographicDescription-749-ru](https://vak.gov.by/ru/bibliographicDescription-749-ru).

---
*Сделано для студентов, магистрантов, аспирантов, соискателей и научных сотрудников.*
