get_AIC <- function(modelNull, model1, model2, model3) {
  return(AIC(modelNull,model1,model2,model3))
}
