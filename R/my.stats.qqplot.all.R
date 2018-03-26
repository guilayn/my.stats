my.stats.shapiro.all = function(input_dataframe) {
  dir.create("NORMALITY_TEST",showWarnings = F)
for (j in 1:ncol(input_dataframe)) {
vartemp = colnames(input_dataframe)[j]
vartemp = gsub("/",".",vartemp)
pdf(paste0("NORMALITY_TEST/",vartemp,"_QQplot.pdf"))
qqnorm(input_dataframe[,j], main = paste0("Normal Q-Q Plot - ",colnames(input_dataframe)[j]),
       xlab = "Theoretical Quantiles", ylab = "Sample Quantiles",
       plot.it = TRUE, datax = FALSE)
qqline(input_dataframe[,j])
dev.off()
pdf(paste0("NORMALITY_TEST/",vartemp,"_HISTplot.pdf"))
hist(input_dataframe[,j], main = paste0("Hist. - ",colnames(input_dataframe)[j]))
dev.off()
}
}
