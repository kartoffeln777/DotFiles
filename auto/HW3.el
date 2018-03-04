(TeX-add-style-hook
 "HW3"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "margin=1.0in")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "geometry"
    "amsmath"
    "amssymb"
    "empheq"
    "mathtools"
    "graphicx"
    "pgfplots"
    "cancel"
    "enumitem"))
 :latex)

