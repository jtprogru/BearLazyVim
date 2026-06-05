# Keymaps

Шпаргалка по сочетаниям клавиш — кастомные из этого репозитория **+** дефолты LazyVim. `<leader>` = `<Space>`. Дефолты могут поменяться при апгрейде LazyVim — авторитативный источник всегда `:WhichKey` и `:Telescope keymaps` (или `<leader>sk` для snacks.picker).

Условные обозначения:
- 🔧 — кастом этого репо
- ⚠️ — конфликт/перекрытие с дефолтом LazyVim

---

## Самое нужное (топ-биндинги для повседневной работы)

| Сочетание | Действие |
|---|---|
| `<leader><space>` | Find files (по root проекта) |
| `<leader>,` | Switch buffer |
| `<leader>/` | Live grep по проекту |
| `<leader>:` | История команд |
| `<leader>e` | Файловый explorer (root) |
| `<leader>gg` | LazyGit |
| `<leader>?` | Недавние биндинги |
| `<leader>qq` | Quit all |
| `<C-s>` | Save |
| `<Esc>` | Снять подсветку поиска |
| `K` | LSP hover |
| `gd` | Go to definition |
| `<leader>ca` | Code action |
| `<leader>cr` | Rename |

---

## 🔧 Навигация: буферы и сплиты (кастом)

`lua/config/keymaps.lua`.

| Сочетание | Режим | Действие |
|---|---|---|
| `<Tab>` 🔧 | n | Следующий буфер ⚠️ перекрывает дефолтный `<C-i>` (jump forward в jumplist) — в терминале `<Tab>` и `<C-i>` неразличимы |
| `<S-Tab>` 🔧 | n | Предыдущий буфер |
| `<C-h>` 🔧 | n | Сплит/панель слева (smart-splits, выходит в WezTerm/Tmux/Kitty) ⚠️ перекрывает LazyVim-дефолт навигации окон |
| `<C-j>` 🔧 | n | Сплит/панель снизу ⚠️ |
| `<C-k>` 🔧 | n | Сплит/панель сверху ⚠️ перекрывает LSP signature-help в insert (но и в normal-режиме у LazyVim нет K на `<C-k>`) |
| `<C-l>` 🔧 | n | Сплит/панель справа ⚠️ |

---

## 🔧 Git (кастом)

`lua/config/keymaps.lua`.

| Сочетание | Действие |
|---|---|
| `<leader>gj` 🔧 | Следующий git-hunk (gitsigns) |

---

## 🔧 Obsidian / Templater (`<leader>o`) (кастом)

`lua/plugins/obsidian.lua`. Активны только в markdown/mdx-буферах внутри vault'а.

| Сочетание | Действие |
|---|---|
| `<leader>oo` / `oq` | Quick switch заметки |
| `<leader>on` | Новая заметка |
| `<leader>os` | Поиск (grep) по vault'у |
| `<leader>ot` | Список тегов |
| `<leader>ob` | Backlinks к текущей заметке |
| `<leader>ol` | Ссылки в заметке |
| `<leader>oL` | Перейти по ссылке под курсором |
| `<leader>op` | Вставить картинку из буфера (obsidian-aware) |
| `<leader>or` | Переименовать заметку (с обновлением ссылок) |
| `<leader>ow` | Переключить workspace |
| `<leader>oc` | Toggle checkbox `- [ ]` ↔ `- [x]` |
| `<leader>od` | Daily (через Templater, с `<% tp.* %>`) |
| `<leader>oy` | Yesterday (Templater) |
| `<leader>oT` | Tomorrow (Templater) |
| `<leader>oD` | Daily (native obsidian.nvim, без tp-синтаксиса) |
| `<leader>oi` | Вставить шаблон (Templater, с рендером) |
| `<leader>oI` | Вставить шаблон (native obsidian.nvim) |

Строчные `od`/`oi` — основной путь (Templater); заглавные `oD`/`oI` — резерв на нативном движке.

---

## 🔧 Quarto (`<leader>q`) (кастом)

`lua/config/quarto.lua`. Только filetype `quarto`/`markdown`.

| Сочетание | Действие |
|---|---|
| `<leader>qp` 🔧 | Quarto Preview |
| `<leader>qc` 🔧 | Close Preview |
| `<leader>qa` 🔧 | Activate (otter LSP для code chunks) |

⚠️ Группа `<leader>q` в LazyVim по умолчанию — это **quit/session**. У тебя в which-key она переименована в "Quarto", но дефолтные `qq`/`qs`/`ql`/`qd`/`qS` ниже **продолжают работать** — просто подпись в which-key теперь "Quarto":

| `<leader>qq` | Quit all (LazyVim default) |
| `<leader>qs` | Session restore |
| `<leader>ql` | Session last |
| `<leader>qd` | Session stop |
| `<leader>qS` | Session select |

---

## 🔧 Image paste (кастом)

`lua/plugins/img-clip.lua`.

| Сочетание | Действие |
|---|---|
| `<leader>P` 🔧 | Вставить картинку из буфера обмена (`:PasteImage`) |

---

## 🔧 Completion (blink.cmp) (кастом)

`lua/plugins/blink.lua`. Базовый пресет `default`.

| Сочетание | Режим | Действие |
|---|---|---|
| `<C-y>` 🔧 | i | Принять текущий вариант комплита |
| `<C-n>` / `<C-p>` | i | Следующий/предыдущий вариант (default preset) |
| `<Tab>` / `<S-Tab>` | i | Навигация по snippet jumps / комплиту |
| `<C-Space>` | i | Trigger показа меню |
| `<C-e>` | i | Закрыть меню |

---

# Дефолты LazyVim

Ниже — то, что LazyVim даёт из коробки. У этого конфига `lazyvim.json` version 8, базовый picker — **snacks.picker**.

## Файлы / поиск (snacks.picker)

| Сочетание | Действие |
|---|---|
| `<leader><space>` | Find files (root проекта) |
| `<leader>ff` | Find files (root) |
| `<leader>fF` | Find files (cwd) |
| `<leader>fg` | Find git files |
| `<leader>fr` | Recent files |
| `<leader>fR` | Recent files (cwd) |
| `<leader>fc` | Find config file (LazyVim/Neovim config) |
| `<leader>fb` | Buffers |
| `<leader>fp` | Projects |
| `<leader>fn` | New file |
| `<leader>fT` | Terminal (cwd) |
| `<leader>ft` | Terminal (root) |

## Grep / search

| Сочетание | Действие |
|---|---|
| `<leader>/` | Live grep (root) |
| `<leader>sg` | Live grep (root) |
| `<leader>sG` | Live grep (cwd) |
| `<leader>sw` | Grep по слову под курсором / выделению (n + v) |
| `<leader>sb` | Buffer lines |
| `<leader>s"` | Registers |
| `<leader>sa` | Autocommands |
| `<leader>sc` | Command history |
| `<leader>sC` | Commands |
| `<leader>sd` | Diagnostics (buffer) |
| `<leader>sD` | Diagnostics (workspace) |
| `<leader>sh` | Help pages |
| `<leader>sH` | Highlights |
| `<leader>si` | Icons |
| `<leader>sj` | Jumps |
| `<leader>sk` | Keymaps |
| `<leader>sl` | Location list |
| `<leader>sm` | Marks |
| `<leader>sM` | Man pages |
| `<leader>sq` | Quickfix list |
| `<leader>sR` | Resume последнего пикера |
| `<leader>su` | Undo history |
| `<leader>ss` | LSP-символы (буфер) |
| `<leader>sS` | LSP-символы (workspace) |
| `<leader>:` | Command history |
| `<leader>,` | Switch buffer |

## Файловый explorer (neo-tree)

| Сочетание | Действие |
|---|---|
| `<leader>e` | Explorer (root) |
| `<leader>E` | Explorer (cwd) |
| `<leader>be` | Buffer explorer |
| `<leader>ge` | Git explorer |
| `<leader>fe` | Explorer (root) |
| `<leader>fE` | Explorer (cwd) |

Внутри neo-tree: `?` показывает биндинги (`a` add, `d` delete, `r` rename, `y` copy, `x` cut, `p` paste, `H` toggle hidden, и т.п.).

## Буферы

| Сочетание | Действие |
|---|---|
| `<S-h>` | Предыдущий буфер |
| `<S-l>` | Следующий буфер |
| `[b` / `]b` | Предыдущий/следующий буфер |
| `<leader>bb` | Switch to other buffer |
| `<leader>` `` ` `` | Switch to other buffer |
| `<leader>bd` | Delete buffer |
| `<leader>bD` | Delete buffer (force) |
| `<leader>bo` | Delete other buffers |
| `<leader>bp` | Toggle pin |
| `<leader>bP` | Delete non-pinned buffers |
| `<leader>bl` | Delete buffers to the right |
| `<leader>bh` | Delete buffers to the left |

## Окна / сплиты (vim defaults + LazyVim)

| Сочетание | Действие |
|---|---|
| `<leader>-` | Split below |
| `<leader>\|` | Split right |
| `<leader>w-` | Split below |
| `<leader>w\|` | Split right |
| `<leader>wd` | Delete window |
| `<leader>ww` | Other window |
| `<C-w>s` / `<C-w>v` | Split horizontal / vertical |
| `<C-w>c` / `<C-w>q` | Close window |
| `<C-w>=` | Equalize |
| `<C-w>o` | Only this window |
| `<C-w>+` / `<C-w>-` | Resize height |
| `<C-w>>` / `<C-w><` | Resize width |

⚠️ Дефолтные `<C-w>h/j/k/l` для переключения окон работают **наряду** с твоими `<C-h/j/k/l>` — последние просто умнее (выходят в Tmux/Wezterm).

## Табы

| Сочетание | Действие |
|---|---|
| `<leader><tab><tab>` | Новая таба |
| `<leader><tab>l` | Последняя таба |
| `<leader><tab>f` | Первая таба |
| `<leader><tab>]` | Следующая |
| `<leader><tab>[` | Предыдущая |
| `<leader><tab>d` | Закрыть табу |

## Git (gitsigns + snacks + lazygit)

| Сочетание | Действие |
|---|---|
| `<leader>gg` | LazyGit (root) |
| `<leader>gG` | LazyGit (cwd) |
| `<leader>gb` | Git branches |
| `<leader>gl` | Git log |
| `<leader>gL` | Git log line (history по строке) |
| `<leader>gs` | Git status |
| `<leader>gS` | Git stash |
| `<leader>gd` | Git diff (hunks) |
| `<leader>gB` | Git browse (открыть в браузере) |
| `<leader>gf` | Git log file |
| `<leader>gY` | Git browse (yank URL) |
| `]h` / `[h` | Следующий/предыдущий hunk |
| `]H` / `[H` | Последний/первый hunk |
| `<leader>ghs` | Stage hunk |
| `<leader>ghr` | Reset hunk |
| `<leader>ghS` | Stage buffer |
| `<leader>ghu` | Undo stage hunk |
| `<leader>ghR` | Reset buffer |
| `<leader>ghp` | Preview hunk inline |
| `<leader>ghb` | Blame line |
| `<leader>ghd` | Diffthis |
| `<leader>ghD` | Diffthis (~) |

## Diagnostics

| Сочетание | Действие |
|---|---|
| `]d` / `[d` | Следующая/предыдущая диагностика |
| `]e` / `[e` | Следующая/предыдущая ошибка |
| `]w` / `[w` | Следующее/предыдущее предупреждение |
| `<leader>cd` | Line diagnostics (float) |

## LSP

| Сочетание | Действие |
|---|---|
| `K` | Hover |
| `gK` | Signature help |
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | References |
| `gI` | Go to implementations |
| `gy` | Go to type definition |
| `<leader>ca` | Code action |
| `<leader>cA` | Source action |
| `<leader>cr` | Rename |
| `<leader>cR` | Rename file (с обновлением импортов) |
| `<leader>cf` | Format |
| `<leader>cc` | Codelens action |
| `<leader>cC` | Codelens refresh |
| `<leader>cl` | LSP info |

## Trouble (диагностика/qf/refs)

| Сочетание | Действие |
|---|---|
| `<leader>xx` | Diagnostics (workspace) |
| `<leader>xX` | Diagnostics (buffer) |
| `<leader>cs` | Symbols |
| `<leader>cS` | LSP refs/defs/impls (для выделенного) |
| `<leader>xL` | Location list |
| `<leader>xQ` | Quickfix list |
| `<leader>xt` | Todos |
| `<leader>xT` | Todo/Fix/Fixme |

## Quickfix / loclist

| Сочетание | Действие |
|---|---|
| `<leader>xl` | Loclist toggle |
| `<leader>xq` | Quickfix toggle |
| `]q` / `[q` | Следующий/предыдущий quickfix |

## Treesitter motion (по объектам)

| Сочетание | Действие |
|---|---|
| `]f` / `[f` | Следующая/предыдущая функция |
| `]c` / `[c` | Следующий/предыдущий класс (или hunk, если gitsigns активен) |
| `]a` / `[a` | Следующий/предыдущий параметр |

Текст-объекты в insert/visual/operator: `af`/`if` (function), `ac`/`ic` (class), `aa`/`ia` (argument), `al`/`il` (loop), `ai`/`ii` (conditional).

## Flash (быстрая навигация)

| Сочетание | Режим | Действие |
|---|---|---|
| `s` | n/x/o | Flash jump |
| `S` | n/x/o | Flash treesitter |
| `r` | o | Remote flash |
| `R` | o/x | Treesitter search |
| `<C-s>` | c | Toggle flash search |

## Перемещение строк

| Сочетание | Режим | Действие |
|---|---|---|
| `<A-j>` / `<A-k>` | n/i/v | Сдвинуть строку вниз/вверх |
| `<` / `>` | v | Indent (остаётся в visual) |

## Комментирование

| Сочетание | Действие |
|---|---|
| `gcc` | Toggle комментарий текущей строки |
| `gc{motion}` | Toggle комментарий на motion (например `gcap` — параграф) |
| `gco` | Добавить строку-комментарий ниже |
| `gcO` | Добавить строку-комментарий выше |
| `gcA` | Добавить комментарий в конце строки |

## Терминал

| Сочетание | Действие |
|---|---|
| `<C-/>` | Toggle floating терминал |
| `<C-_>` | То же (зависит от терминала) |
| `<leader>ft` | Terminal (root) |
| `<leader>fT` | Terminal (cwd) |

Внутри терминала: `<Esc><Esc>` — выйти из terminal mode.

## Snacks (мисc)

| Сочетание | Действие |
|---|---|
| `<leader>n` | Notifications history |
| `<leader>un` | Dismiss notifications |
| `<leader>.` | Toggle scratch buffer |
| `<leader>S` | Select scratch buffer |
| `<leader>z` | Zen mode |
| `<leader>Z` | Zoom (full-window) |

## UI-тоглы (`<leader>u`)

| Сочетание | Действие |
|---|---|
| `<leader>uf` | Toggle autoformat (global) |
| `<leader>uF` | Toggle autoformat (buffer) |
| `<leader>us` | Toggle spell |
| `<leader>uw` | Toggle wrap |
| `<leader>uL` | Toggle relativenumber |
| `<leader>ul` | Toggle line numbers |
| `<leader>ud` | Toggle diagnostics |
| `<leader>uc` | Toggle conceallevel |
| `<leader>uT` | Toggle treesitter highlight |
| `<leader>ub` | Toggle background (light/dark) |
| `<leader>uh` | Toggle inlay hints |
| `<leader>ui` | Inspect position (`:Inspect`) |
| `<leader>uI` | Inspect tree (`:InspectTree`) |
| `<leader>uC` | Pick colorscheme |
| `<leader>ur` | Redraw / clear search highlights |
| `<leader>uA` | Toggle dim |

## Quit / session

| Сочетание | Действие |
|---|---|
| `<leader>qq` | Quit all |
| `<leader>qs` | Session restore |
| `<leader>ql` | Session last |
| `<leader>qd` | Session stop |
| `<leader>qS` | Session select |

⚠️ В which-key подписаны как Quarto, но команды работают.

## Прочие

| Сочетание | Действие |
|---|---|
| `<leader>l` | Open Lazy (plugin manager) |
| `<leader>L` | LazyVim changelog |
| `<leader>K` | Keywordprg для слова под курсором |
| `<leader>?` | Последние биндинги |
| `<C-s>` | Save |
| `<Esc>` (n/i/v) | Clear search highlight |
| `j` / `k` | Move (если без count — gj/gk, чтобы перемещаться по визуальным строкам) |
| `n` / `N` | Следующий/предыдущий поиск (центрирует viewport) |

---

## Подсказки

- `:WhichKey` или подержи `<leader>` — попап со всеми сочетаниями текущего контекста.
- `:WhichKey <leader>o` — конкретная группа.
- `<leader>sk` — фуззи-поиск по всем активным маппингам (snacks.picker).
- `<leader>?` — топ последних использованных биндингов.
- `:verbose nmap <key>` — узнать, кто и где назначил конкретный биндинг.
- `:Lazy reload which-key.nvim` — пересобрать иконки/группы после правок в `lua/plugins/which-key.lua`.
