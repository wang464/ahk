import pdfkit

# 想把网页保存成pdf.发现Python调用不了这个库. 这个库依赖另外一个库.wkhtml  另外一个库没有3.10的版本.
pdfkit.from_url('https://www.cnblogs.com/Neeo/articles/11566990.html','p3.pdf')
