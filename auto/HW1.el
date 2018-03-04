(TeX-add-style-hook
 "HW1"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "amsmath"
    "arydshln"
    "mathtools"
    "graphicx"
    "pgfplots"
    "tikz"))
 :latex)

