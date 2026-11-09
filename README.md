<div align="center">

# 📚 ВАК РБ 2025: Библиографический агент и скилл
### Автоматическое оформление библиографии и списков источников по стандартам Республики Беларусь

[![ВАК РБ Редакция](https://img.shields.io/badge/ВАК_РБ-Приказ_№206_(13.10.2025)-007acc?style=for-the-badge&logo=googledocs&logoColor=white)](https://vak.gov.by)
[![Статус](https://img.shields.io/badge/Статус-Актуален_2025%2F2026-success?style=for-the-badge&logo=checkmarx&logoColor=white)](#)
[![Пакет](https://img.shields.io/badge/Установка-Zero--Dependency-brightgreen?style=for-the-badge&logo=speedtest&logoColor=white)](#)
[![Лицензия](https://img.shields.io/badge/Лицензия-MIT-yellow?style=for-the-badge)](LICENSE)

<br/>

[![Claude Code](https://img.shields.io/badge/Claude_Code-Supported-6B4FBB?style=flat-square&logo=anthropic&logoColor=white)](https://docs.anthropic.com/en/docs/agents-and-tools/claude-code)
[![Antigravity](https://img.shields.io/badge/Google_Antigravity-Native-4285F4?style=flat-square&logo=google&logoColor=white)](#)
[![Cursor](https://img.shields.io/badge/Cursor_IDE-Ready-000000?style=flat-square&logo=cursor&logoColor=white)](#)
[![ChatGPT](https://img.shields.io/badge/ChatGPT_Web-Ready-74aa9c?style=flat-square&logo=openai&logoColor=white)](https://chatgpt.com)
[![Claude Web](https://img.shields.io/badge/Claude.ai-Ready-D97706?style=flat-square&logo=anthropic&logoColor=white)](https://claude.ai)
[![Gemini](https://img.shields.io/badge/Gemini_Web-Ready-1A73E8?style=flat-square&logo=googlegemini&logoColor=white)](https://gemini.google.com)
[![Perplexity](https://img.shields.io/badge/Perplexity-Space_Config-20808D?style=flat-square&logo=perplexity&logoColor=white)](https://perplexity.ai)
[![Kimi](https://img.shields.io/badge/Kimi_Moonshot-Ready-FF6A00?style=flat-square)](#)

<p align="center">
  <b>Универсальный ИИ-скилл для оформления списков использованных источников диссертаций, авторефератов и научных статей.</b><br/>
  Определяет тип источника, восстанавливает недостающие метаданные (страницы, тома, DOI) и собирает библиографическую запись строго по официальной базе эталонов.
</p>

[⚡ Быстрый старт (Кинуть архив)](#-способ-1-самый-простой-просто-скинуть-архив-в-чат) • [🌐 Веб-версии нейросетей](#-способ-2-веб-версии-и-разделы-skills--projects) • [💻 Терминал и IDE](#-способ-3-cli-агенты-claude-code-antigravity-cursor) • [⭐ Форк и участие](#-форкните-репозиторий-чтобы-скилл-заметили)

</div>

---

## ⚡ Способ 1. Самый простой: просто скинуть архив в чат (без распаковки!)

> **Подходит для любых нейросетей:** DeepSeek, ChatGPT, Claude, Google Gemini, Qwen, Kimi, Mistral.

Вам **не нужно** ничего распаковывать, настраивать или запускать скрипты:

1. Скачайте готовый архив [**`vak-rb-citations-2025.zip`**](vak-rb-citations-2025.zip) из этого репозитория.
2. Откройте любой диалог с нейросетью.
3. **Перетащите архив `.zip` прямо в поле ввода чата** (или прикрепите через значок скрепки 📎).
4. Напишите:
   > *«Оформи следующий список литературы строго по правилам ВАК Беларуси 2025 из прикрепленного архива: [ваш список]»*

*Современные модели (Claude 3.5/3.7, GPT-4o, DeepSeek V3/R1, Gemini 1.5/2.0) автоматически распаковывают zip-архив, считывают базу образцов и выдают эталонный результат.*

---

## 🌐 Способ 2. Веб-версии: подключение через разделы Skills, Gems и Projects

Если вы хотите, чтобы скилл был доступен всегда в один клик без повторной отправки файлов:

### 1. Claude.ai (Раздел Skills / Projects)
1. В меню слева перейдите в **Skills** или откройте **Projects** → **Create Project**.
2. В блоке **Knowledge** загрузите файлы из папки `vak-rb-citations/` (`RULES.md` и `vak_rb_2025_examples.json`).
3. В **Instructions** (Инструкции) скопируйте текст из файла `SKILL.md`.

### 2. ChatGPT (Раздел Skills / Custom GPTs)
1. Нажмите **Explore GPTs** → **+ Create** (Создать) → вкладка **Configure**.
2. В поле **Instructions** вставьте содержимое `SKILL.md`.
3. В блок **Knowledge** перетащите файлы `RULES.md` и `vak_rb_2025_examples.json`.
4. Включите галочку **Web Search** (для автоматического поиска DOI и страниц через WorldCat и каталоги издательств).

### 3. Google Gemini (Раздел Gems)
1. Откройте **Gem Manager** (Менеджер Gems) → **New Gem** (Создать Gem).
2. Назовите Gem: `Библиограф ВАК РБ 2025`.
3. В поле инструкций вставьте `SKILL.md`, а в базу знаний Gem прикрепите файлы правил.

### 4. Kimi.ai (Moonshot / Kimi+)
1. В интерфейсе Kimi создайте постоянную сессию или профиль **Kimi+**.
2. Прикрепите архив `vak-rb-citations-2025.zip` и задайте системный промпт из `SKILL.md`.

### 5. 🔍 Perplexity AI (Специальная конфигурация Space)
В Perplexity поиск и форматирование настраиваются через пространство **Spaces**:
1. Перейдите в **Library** → **Spaces** → **Create Space**.
2. В настройках пространства (**Space Settings**):
   * **AI Instructions:** вставьте текст из `SKILL.md`.
   * **Files:** загрузите `RULES.md` и `vak_rb_2025_examples.json`.
   * **Search Focus:** выберите **Academic** или **All Web**.
3. *Преимущество:* Perplexity сразу выполняет живой поиск по академическим базам, проверяет точные страницы статей/монографий и выводит их в разметке ВАК РБ.

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

### Ручное копирование:
Скопируйте папку `vak-rb-citations/` в каталог вашей среды:
* **Claude Code:** `~/.claude/skills/vak-rb-citations/`
* **Antigravity:** `~/.gemini/config/skills/vak-rb-citations/`
* **Cursor:** `~/.cursor/skills/vak-rb-citations/`
* **Universal Agents:** `~/.agents/skills/vak-rb-citations/`

---

## 🌟 Форкните репозиторий, чтобы скилл заметили!

Чтобы помочь развитию инструмента для русскоязычного академического сообщества:

1. **Поставьте Star ⭐ и сделайте Fork 🍴** (кнопки в правом верхнем углу страницы):
   * Это повысит видимость скилла в глобальном поиске GitHub.
   * Позволит каталогам открытых ИИ-скиллов (*Awesome-Agent-Skills*, *Anthropic Skills*, *Antigravity Skills*) проиндексировать его.
2. **Адаптируйте под свой совет или вуз:**
   * Сделав форк, вы можете добавить специфические требования вашего диссертационного совета (БГУ, БНТУ, БГЭУ, Академия наук) или адаптировать базу под ГОСТ / ВАК РФ.
3. **Pull Requests приветствуются:**
   * Если вы добавили редкий тип источника (депонированная рукопись, редкий патент, архивное дело), отправьте PR — сделаем базу максимально полной для всех аспирантов и исследователей!

---

## 📁 Структура пакета

```text
├── vak-rb-citations/             # Автономный скилл (Zero-Dependency)
│   ├── SKILL.md                  # Точка входа: триггеры, инструкции
│   ├── RULES.md                  # Алгоритм классификации и правила оформления
│   └── vak_rb_2025_examples.json # База из ~120 официальных образцов (50 категорий)
├── install.ps1                   # Инсталлятор для Windows
├── install.sh                    # Инсталлятор для macOS / Linux
├── vak-rb-citations-2025.zip     # Готовый архив для вставки в веб-чаты
└── README.md
```

---

## ⚖️ Первоисточник стандарта
Справочник составлен строго на основе официального нормативного документа: **«Инструкция по оформлению диссертации, автореферата и публикаций по теме диссертации»** Высшей аттестационной комиссии Республики Беларусь (в редакции приказа ВАК РБ от **13 октября 2025 г. № 206**).

---
<div align="center">
  <b>Сделано для исследователей, аспирантов и научных сотрудников.</b>
</div>
