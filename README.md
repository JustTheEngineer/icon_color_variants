## Icon Color Variants (Brightness / Saturation / Hue)

You can browse all icons using the interactive webpage:
👉 [Open the icon viewer](https://justtheengineer.github.io/icon_color_variants/)

This repository contains a large set of color‑variant icons generated from a single green base icon. Each icon is produced by applying ImageMagick’s `-modulate` transformation across a full 3‑dimensional parameter space:

- **Brightness**  
- **Saturation**  
- **Hue rotation**

The result is a complete color atlas of the original icon, covering thousands of combinations. Every file is named using the exact parameters used to generate it:

```
icon-b###-s###-h###.ico
```

The numbers are zero‑padded so the files sort naturally by brightness → saturation → hue.

---

## How to browse the icons

A simple HTML viewer is included. It displays all icons in a responsive grid and lets you filter by:

- brightness  
- saturation  
- hue  

Just open:

```
index.html
```

in any browser. The light background is chosen to match how icons typically appear in browser tabs, so the colors look natural in real use.

---

## How the icons were generated

The icons were created using ImageMagick’s `-modulate` command:

```
magick base.ico -alpha on -modulate B,S,H output.ico
```

where:

- **B** = brightness (0–200)  
- **S** = saturation (0–200)  
- **H** = hue rotation (0–200, representing 0–360°)  

The script sweeps through a defined set of values for each parameter, producing a dense and evenly spaced color set.

---

## What you can use these icons for

These icons are useful for:

- browser themes  
- UI mockups  
- color‑themed dashboards  
- accessibility experiments  
- design systems needing consistent shapes in many colors  
- any project where you want the same icon in many color variants  

All icons are free to use.

