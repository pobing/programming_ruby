##
 a = b = c = 0
 [3,1,7,0].sort.reverse 
 ##
 # def [](from,to_time)
 # end

 `date`
 `ls`.split[34]


 # jiao huan bian liang de zhi 
 int a =1
 int b =2
 int temp
 temp = a 
 a= b
 b=temp

#-------> ruby  :
a,b = b,a
#
 a = [1,2,3,4] #->  [1, 2, 3, 4] 
 b,c = a #-> b ==1 , c==2
 b, *c = a # b ==1, c==[2,3,4]
 b,c = 99,a # b==99, c== [1,2,3,4]
 b,*c = 99,a # b==99 ,c== [[1,2,3,4]]
 b,c = 99,*a # b ==99, c==1
 b,*c = 99,*a # b==99 , c==[1,2,3,4]

 #
 b,(c, d) ,e = 1,2,3,4 # b==1,c==2 ,d==nil,e==3
 b,(c, d) ,e = [1,2,3,4] # b==1 c==2,d==nil,e==3
 b,(c, d) ,e = 1,[2,3],4 # b=1,c==2,d==3,e == 4
 b,(c, d) ,e = 1,[2,3,4],5 # b=1,c==2,d==3,e == 5
 b,(c, *d) ,e = 1,[2,3,4],5 # b=1,c==2,d==[3,4],e == 5
 
