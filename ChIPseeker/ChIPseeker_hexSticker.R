require(ggplot2)
require(hexSticker)



require(ChIPseeker)
data("tagMatrixList")
p <- plotAvgProf(tagMatrixList, xlim=c(-3000, 3000), conf=0.95,resample=500)
p <- p + theme_void() + ggimage::theme_transparent(legend.position='none')
p$layers[[3]] <- NULL
sticker(p, package="ChIPseeker", p_size=6, s_x=.98, s_y=.88, s_width=1.4, s_height=1.1,h_fill = "#80b1d3", h_color="#3182bd")
