# 1) se o p-value > 0.15, nao invalida que o modelo nao ? normal: pvalue do ttest pode ser usado
# 2) p < 0.10; teste de adequa?ao invalida o modelo normal: aten?ao ao usar o pv do ttest
# 3) entre 0.10 e 0.15 (caso do exemplo): zona de perigo, melhor usar outro teste

my.stats.shapiro.all = function(input_dataframe, output_csv_table = F) {

  shap.temp = lapply(input_dataframe, shapiro.test)

  shap.result = sapply(shap.temp, `[`, c("statistic","p.value"))
  shap.result=t(shap.result)
  if(output_csv_table) {
   dir.create("NORMALITY_TEST",showWarnings = F)
  write.csv(shap.result, paste0("NORMALITY_TEST/","shapiro.csv"))
  }
  return(shap.result)
}



