# fonts-for-trails
Fonts and how to obtain for making backcountry maps.  

---

## Intro

The [National Park Service](https://www.nps.gov/carto/app/#!/maps/symbols) and the [US Forest Service](https://data.fs.usda.gov/geodata/vector/index.php)
both provide [TrueType](https://en.wikipedia.org/wiki/TrueType) Fonts that they use in their cartography.

* The NPS Fonts are stored in [Zip Archive File ESRI.style](https://www.nps.gov/carto/hfc/carto/media/Esri_style_NPS_2012.zip) (400 KB)
  * Copyright is `Copyright (c) 2012 by Esri, Inc. All rights reserved.` 
  * Designer is `Tom Patterson NPS and ESRI Cartography and Symbology`
* The USFS Fonts are stored in an archive called [Layer files and FSTopo fonts](https://data.fs.usda.gov/geodata/vector/fstopo/FSTopo_Layer_files_and_fonts.zip) (517 KB)
  * No copyright info

## How To Use Federal Fonts

Using these `.ttf` files out of the zip archive is a little chaotic.  In macOS, if you double click on file, the native app FontBook will display a summary of the [glyphs](https://en.wikipedia.org/wiki/Glyph), but the character set mapping is not clear.  A character set map can be thought of as

> when I type `a` on the keyboard, I expect an `a` to be typed in my text editor

But for these NPS & USFS fonts, when I type an `a` what should I expect to get?  How is Trailhead or Hospital mapped to the QWERTY Keyboard?

---

### FontReport

Enter [fontreport](https://github.com/googlei18n/fontreport)

> FontReport is a tool that allows the user to generate a report about a given font (TTF or OTF) listing its features in the plain-text (default) or PDF format.

```
fontreport USDAFS3_.TTF USDAFS3_.pdf
```

generates a report that looks similar to 

---

### Glypher Studio

[Glypher Studio](http://glyphrstudio.com/online/) allows you upload a `.ttf` and download an OTF or SVG Font.  Glypher Studio also gives you the character set map.


---

### RoboFont

[RoboFont](https://robofont.com) is a Glyph editor along with a bonus Python engine for scripting.  Incredibly powerful stuff.


---

### Node Tools

Enter the Command Line.  

#### `ttf2svg`

`ttf2svg` converts to SVG Font.  But note, from the Mozilla MDN on [SVG Fonts](https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/SVG_fonts):

> SVG Fonts are currently supported only in Safari and Android Browser.

```
ttf2svg USDAFS3_.TTF USDAFS3_.svg
```

#### `svg-caster`

`svg-caster` converts a SVG Font to separte SVG files. 

```
mkdir svg-caster
svg-caster --svg-font USDAFS3_.svg \
     --out-svg svg-caster
```

---

## Tools for viewing Fonts, Glyphs, SVG Fonts

* [`npm install -g ttf2svg`](https://www.npmjs.com/package/ttf2svg)
* [`npm install -g svg-caster`](https://www.npmjs.com/package/svg-caster)
* [RoboFont](https://robofont.com) — Glyph editor and Python engine
* [Glyphr Studio](http://glyphrstudio.com) — Web & Electron based Font Editor
* [Glyphter](https://glyphter.com) — The SVG Font Machine
