# gal2wmat
### 1:把GeoDa生成的.gal权重文件转换成MATLAB可用的空间权重矩阵
### 1:Convert .gal document generated by GeoDa into spatial matrix that could be used in matlab.

### 2:用法：w=gal2wmat(' ~\filename.gal 'standardize),standardize=1 对权重矩阵进行行标准化，不填或者填写其他数字不进行标准化。
### 2:Usage：w=gal2wmat(' ~\filename.gal ',standardize)，when standardize=1, convert weight matrix into row standardized matrix, leave it blank or fill in other figures do not standardize the matrix.
