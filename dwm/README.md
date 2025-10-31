# 🧱 DWM Keybindings

> **Mod Key:** `Super` (usually the Windows key)  
> All commands are defined in `config.h`

---

## ⚙️ Core Bindings

| Keybinding | Action | Command / Function |
|-------------|---------|--------------------|
| **Mod + Space** | Launch Dmenu | `dmenu_run` |
| **Mod + Return** | Open Terminal | `st` |
| **Mod + g** | Toggle Status Bar | `togglebar` |
| **Mod + Tab** | Cycle through Tags | `view` |
| **Mod + q** | Kill Focused Window | `killclient` |
| **Mod + Shift + q** | Quit dwm | `quit` |

---

## 🪟 Window & Layout Management

| Keybinding | Action | Function |
|-------------|---------|-----------|
| **Mod + j** | Focus Next Window | `focusstack +1` |
| **Mod + k** | Focus Previous Window | `focusstack -1` |
| **Mod + f** | Promote Focused Window to Master | `zoom` |
| **Mod + h** | Shrink Master Area | `setmfact -0.05` |
| **Mod + l** | Expand Master Area | `setmfact +0.05` |
| **Mod + s** | Increase Master Clients | `incnmaster +1` |
| **Mod + d** | Decrease Master Clients | `incnmaster -1` |
| **Mod + Shift + r** | Toggle Floating Mode | `togglefloating` |
| **Mod + w** | Set Tiled Layout | `setlayout(tile)` |
| **Mod + e** | Set Floating Layout | `setlayout(NULL)` |
| **Mod + r** | Set Monocle Layout | `setlayout(monocle)` |
| **Mod + t** | Cycle Layouts | `setlayout(0)` |

---

## 🖥️ Multi-Monitor Controls

| Keybinding | Action | Function |
|-------------|---------|-----------|
| **Mod + ,** | Focus Previous Monitor | `focusmon -1` |
| **Mod + .** | Focus Next Monitor | `focusmon +1` |
| **Mod + Shift + ,** | Send Window to Previous Monitor | `tagmon -1` |
| **Mod + Shift + .** | Send Window to Next Monitor | `tagmon +1` |

---

## 🧩 Gaps & Appearance

| Keybinding | Action | Function |
|-------------|---------|-----------|
| **Mod + -** | Decrease Gaps | `setgaps -1` |
| **Mod + =** | Increase Gaps | `setgaps +1` |
| **Mod + Shift + =** | Reset Gaps | `setgaps 0` |
| **Mod + F5** | Reload Xresources | `xrdb` |

---

## 🪄 Tag Management

| Keybinding | Action | Function |
|-------------|---------|-----------|
| **Mod + [1–9]** | Switch to Tag | `view` |
| **Mod + Shift + [1–9]** | Move Window to Tag | `tag` |
| **Mod + Control + [1–9]** | Toggle Tag View | `toggleview` |
| **Mod + Control + Shift + [1–9]** | Toggle Window Tag | `toggletag` |
| **Mod + 0** | View All Tags | `view ~0` |
| **Mod + Shift + 0** | Assign Window to All Tags | `tag ~0` |

---

## 🖼️ Screenshot Shortcuts

| Keybinding | Action | Command |
|-------------|---------|----------|
| **Mod + Print** | Full Screenshot | `~/.local/bin/ss` |
| **Mod + Shift + s** | Select Area Screenshot | `~/.local/bin/select_ss` |

---

## 🔊 Audio Controls

| Keybinding | Action | Command |
|-------------|---------|----------|
| **XF86AudioLowerVolume** | Volume Down | `env BLOCK_BUTTON=5 ~/.local/bin/volume` |
| **XF86AudioRaiseVolume** | Volume Up | `env BLOCK_BUTTON=4 ~/.local/bin/volume` |
| **XF86AudioMute** | Mute / Unmute | `env BLOCK_BUTTON=2 ~/.local/bin/volume` |

---

## 🎵 Media Controls

| Keybinding | Action | Command |
|-------------|---------|----------|
| **XF86AudioPlay** | Play / Pause | `playerctl play-pause` |
| **XF86AudioNext** | Next Track | `playerctl next` |
| **XF86AudioPrev** | Previous Track | `playerctl previous` |

---

## 🖱️ Mouse Bindings

| Action | Button | Function |
|---------|---------|-----------|
| Left-click Layout Symbol | Button1 | `setlayout` |
| Right-click Layout Symbol | Button3 | `setlayout(monocle)` |
| Middle-click Window Title | Button2 | `zoom` |
| Middle-click Status Bar | Button2 | Launch Terminal |
| **Mod + Left Click (on window)** | Move Window | `movemouse` |
| **Mod + Middle Click (on window)** | Toggle Floating | `togglefloating` |
| **Mod + Right Click (on window)** | Resize Window | `resizemouse` |
| Click Tag (on bar) | View Tag | `view` |
| Right-click Tag (on bar) | Toggle Tag View | `toggleview` |
| Mod + Click Tag | Move Window to Tag | `tag` |
| Mod + Right-click Tag | Toggle Tag Assignment | `toggletag` |

---

### 🧾 Notes
- You’re using `JetBrains Mono` + `JoyPixels` fonts for both text and emoji glyphs.
- Tags use icons (``, ``, ``, etc.) — ideal for visual workspace separation.
- `volume`, `ss`, and `select_ss` are **custom scripts**; make sure they’re marked executable:
  ```bash
  chmod +x ~/.local/bin/{ss,select_ss,volume}

