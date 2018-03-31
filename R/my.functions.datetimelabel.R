my.functions.datetimelabel = function(){
time = Sys.time()
label = paste0(substr(time,1,10),"_",substr(time,12,13),"-",substr(time,15,16))
return(label)
}
