Betas for rolling regressions                                                                                                   
                                                                                                                                
 There is not gvkey variable.                                                                                                   
 Very easy to add a  by variable in R.                                                                                          
                                                                                                                                
                                                                                                                                
github                                                                                                                          
https://github.com/rogerjdeangelis/utl-betas-for-rolling-regressions                                                            
                                                                                                                                
SAS forum                                                                                                                       
https://tinyurl.com/yynymrwr                                                                                                    
https://communities.sas.com/t5/SAS-Programming/Simple-Rolling-SAS-Regression-for-betas-and-R2-macro/m-p/582293                  
                                                                                                                                
Related repo                                                                                                                    
https://tinyurl.com/y55yxq8o                                                                                                    
https://github.com/rogerjdeangelis/utl_excluding_rolling_regressions_with_one_on_more_missing_values_in_the_window              
                                                                                                                                
macros                                                                                                                          
https://tinyurl.com/y9nfugth                                                                                                    
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories                                      
                                                                                                                                
*_                   _                                                                                                          
(_)_ __  _ __  _   _| |_                                                                                                        
| | '_ \| '_ \| | | | __|                                                                                                       
| | | | | |_) | |_| | |_                                                                                                        
|_|_| |_| .__/ \__,_|\__|                                                                                                       
        |_|                                                                                                                     
;                                                                                                                               
                                                                                                                                
options validvarname=upcase;                                                                                                    
libname sd1 "d:/sd1";                                                                                                           
data sd1.have;                                                                                                                  
  input ni ret @@;                                                                                                              
cards4;                                                                                                                         
 0.0666  0.5327  0.0416  0.1373  0.0791  0.3246  0.0444  0.1569  0.0099                                                         
-0.0890  0.0218  0.3089  0.0048  0.0145  0.0198 -0.0729  0.0339  0.0169                                                         
 0.0264  0.0578  0.0247 -0.0746  0.0425 -0.0273  0.0532  0.0088  0.0362                                                         
-0.0734  0.0126 -0.3080  0.0331  0.7184  0.0073  0.1274  0.0066 -0.2147                                                         
 0.2381  0.1659 -0.0061 -0.0870 -0.0634 -0.2503 -0.0237  0.1709 -0.0102                                                         
 0.2147  0.0719  0.1901  0.0580  0.0313  0.0228 -0.0476  0.0216 -0.1019                                                         
 0.0221  0.3334  0.0150 -0.1611 -0.0198 -0.0119 -1.2832  1.2927 -0.1633                                                         
 0.4880  0.0280 -0.1092  0.0512 -0.2150  0.0758  0.7373  0.0302 -0.2093                                                         
 0.0175  0.0091  0.0199 -0.0599  0.0226  0.0531  0.0245  0.1818  0.0187                                                         
 0.0568  0.0117 -0.2537  0.0283 -0.1290  0.0130 -0.1431  0.0196  0.0470                                                         
 0.0352  0.2875  0.0149  0.0897  0.0139 -0.2617  0.0240  0.4371  0.0181                                                         
-0.0842  0.0171  0.2466  0.0086 -0.0469  0.0070 -0.1141  0.0118  0.1905                                                         
 0.0090  0.0386  0.0084 -0.1587  0.0071 -0.0611  0.0098 -0.1182  0.0078                                                         
 0.0693  0.0129  0.1460  0.0135 -0.1497 -0.0270 -0.4634  0.0126  0.5558                                                         
-0.0030 -0.0485 -0.0131 -0.2542  0.0047 -0.1088  0.0042 -0.1844 -0.0077                                                         
 0.1108 -0.0297  0.0182  0.0096  0.0368  0.0085 -0.0779  0.0907  0.2283                                                         
 0.0050  0.4984  0.0123 -0.1039  0.0093 -0.1290  0.1234  0.2256  0.0950                                                         
 0.0911  0.0866  0.2120  0.0683  0.0565  0.0755  0.3961  0.0166 -0.2779                                                         
-0.0079 -0.0892 -0.0038 -0.0904 -0.0427  0.2775 -0.0349 -0.0403 -0.0229                                                         
-0.0008 -0.0180 -0.1579 -0.2148 -0.0692  0.0125  0.6150 -0.1315  0.3597                                                         
-0.0305 -0.0495  0.0345 -0.0003  0.0344  0.0573  0.0057  0.2147  0.0063                                                         
-0.1955  0.0330  0.1374  0.0320  0.0373 -0.0053  0.1515 -0.0649  0.0399                                                         
 0.0017  0.0587 -0.0043 -0.0779 -0.0014 -0.1133  0.0277  0.1429  0.0018                                                         
-0.0476  0.0090  0.0058 -0.0072  0.0254 -0.1669  0.1811 -1.0124 -0.6631                                                         
-0.0803 -0.0374 -0.0918  0.0014 -0.0226  0.1531  0.0121 -0.0088 -0.1260                                                         
-0.6637 -0.1964  0.1181 -0.1678 -0.2169  0.0728  0.4222  0.0249 -0.0287                                                         
 0.0265 -0.0362 -0.0499 -0.2614 -0.0002  0.0551  0.0067  0.2071 -0.0314                                                         
 0.4391 -0.0062  0.1397 -0.0384 -0.0177 -0.0256  0.0303 -0.0184 -0.0016                                                         
-0.0128  0.4417  0.0111  0.3709 -0.0035 -0.1506  0.0169  0.3878  0.0030                                                         
-0.1506  0.0147 -0.0714  0.0254  0.2463  0.0131  0.1860  0.0073  0.0139                                                         
 0.0005 -0.3245  0.0119 -0.1886  0.0001 -0.2827  0.0325 -0.1229 -0.0181                                                         
-0.3433 -0.0290  0.5331 -0.0267  0.4534 -0.0462  0.2672 -0.0509  0.0296                                                         
-0.0419  0.0985 -0.0979  0.2649  0.1703  0.0886 -0.0202  0.0265  0.0229                                                         
 0.3264  0.0359  0.0135  0.0572  0.5914  0.0319  0.0741  0.0465  0.5921                                                         
 0.0379  0.2014  0.0230 -0.0869  0.0082  0.1383  0.0091  0.4655  0.0055                                                         
 0.0943  0.0160 -0.1945  0.0011 -0.0734 -0.0151 -0.1237  0.0249  0.3366                                                         
 0.0288 -0.0148  0.0284 -0.0503 -0.0051  0.6007 -0.0021  0.5227  0.0022                                                         
 0.3130  0.0044  0.2000  0.0089  0.1374 -0.1198 -0.0822 -0.2077  3.6166                                                         
-0.1284  0.4031 -1.3347  0.0416  0.0086 -0.1551 -0.0117 -0.4178 -0.1052                                                         
-0.0388  0.0432  0.3224 -0.0139 -0.0131  0.0049 -0.0972  0.0198  0.2110                                                         
 0.0773  0.1365  0.0419 -0.0729  0.0262  0.0407  0.0528 -0.0656  0.0347                                                         
 0.0420  0.0341  0.0104  0.0259 -0.0618  0.0364 -0.0375  0.0309 -0.0561                                                         
 0.0397  0.1846  0.0333 -0.0935  0.0397 -0.0021  0.0383 -0.0287  0.0291                                                         
-0.0117  0.0359 -0.1354  0.0217  0.3157  0.0155 -0.0759  0.0106  0.0259                                                         
 0.0199  0.0154  0.0149 -0.0621                                                                                                 
;;;;                                                                                                                            
run;quit;                                                                                                                       
                                                                                                                                
SD1.HAVE total obs=200                                                                                                          
                                                                                                                                
                            |  RULES                                                                                            
Obs       NI        RET     |  =====                                                                                            
                            |                                                                                                   
  1     0.0666     0.5327   |                                                                                                   
  2     0.0416     0.1373   |                                                                                                   
  3     0.0791     0.3246   |                                                                                                   
  4     0.0444     0.1569   |                                                                                                   
  5     0.0099    -0.0890   | proc reg data=sd1.have(obs=8);model ret=ni; run;quit;                                             
  6     0.0218     0.3089   |                                                                                                   
  7     0.0048     0.0145   | Intercept   -0.05873                                                                              
  8     0.0198    -0.0729   | NI           6.19046                                                                              
                                                                                                                                
                                                                                                                                
                              proc reg data=sd1.have(firstobs=2 obs=9);model ret=ni; run;quit                                   
  9     0.0339     0.0169   | Intercept   -0.04553                                                                              
                              NI           4.54931                                                                              
 10     0.0264     0.0578                                                                                                       
 11     0.0247    -0.0746                                                                                                       
 12     0.0425    -0.0273                                                                                                       
...                                                                                                                             
                                                                                                                                
*            _               _                                                                                                  
  ___  _   _| |_ _ __  _   _| |_                                                                                                
 / _ \| | | | __| '_ \| | | | __|                                                                                               
| (_) | |_| | |_| |_) | |_| | |_                                                                                                
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                               
                |_|                                                                                                             
;                                                                                                                               
                                                                                                                                
WORK.WANT total obs=193                                                                                                         
                                                                                                                                
  X_INTERC       SLOPE                                                                                                          
                                                                                                                                
  -0.05873      6.1905  ** same as SAS above                                                                                    
  -0.04553      4.5493  ** same as SAS above                                                                                    
  -0.04787      4.5843                                                                                                          
  -0.05066      3.8977                                                                                                          
   0.00585      0.4762                                                                                                          
   0.05977     -1.0834                                                                                                          
  -0.02011      0.0441                                                                                                          
  -0.22509      5.3269                                                                                                          
  -0.16095      6.1165                                                                                                          
  -0.02942      2.8156                                                                                                          
  -0.11110      4.8355                                                                                                          
   0.00471      0.8367                                                                                                          
  ...                                                                                                                           
                                                                                                                                
*                                                                                                                               
 _ __  _ __ ___   ___ ___  ___ ___                                                                                              
| '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                                             
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                             
| .__/|_|  \___/ \___\___||___/___/                                                                                             
|_|                                                                                                                             
;                                                                                                                               
                                                                                                                                
%utl_submit_r64('                                                                                                               
library(haven);                                                                                                                 
library(zoo);                                                                                                                   
library(RcppRoll);                                                                                                              
library(SASxport);                                                                                                              
have<-read_sas("d:/sd1/have.sas7bdat");                                                                                         
want<-as.data.frame(rollapply(have, width = 8,                                                                                  
   function(x) coef(lm(RET ~ NI, data = as.data.frame(x))),                                                                     
   by.column = FALSE, align = "right"));                                                                                        
write.xport(want,file="d:/xpt/want.xpt");                                                                                       
');                                                                                                                             
                                                                                                                                
                                                                                                                                
libname xpt xport "d:/xpt/want.xpt";                                                                                            
data want(rename=ni=slope);                                                                                                     
  set xpt.want;                                                                                                                 
run;quit;                                                                                                                       
libname xpt clear;                                                                                                              
                                                                                                                                
                                                                                                                                
                                                                                                                                
