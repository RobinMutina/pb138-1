#!/bin/bash
xsltproc --xinclude --stringparam paper.type A4 --encoding UTF-8 \
  --stringparam  body.start.indent 0 \
  --stringparam  section.autolabel 1 \
  --stringparam  section.label.includes.component.label 1 \
  --stringparam  section.autolabel.max.depth 2 \
-o dokumentace.fo nwalsh/fo/docbook.xsl dokumentace.xml
fop -c foprc.xml -pdf dokumentace.pdf -fo dokumentace.fo
 rm dokumentace.fo
