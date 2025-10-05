'''
定义函数myFirstRFunc 新建 R 脚本（如任务 3 步骤 2），在脚本中定义函数
功能：输入非负整数n，输出 “小于n且能被 2 或 7 整除的所有数的和”（示例：myFirstRFunc(14)返回 49）。 
要求： 包含参数检查：若输入非 “非负整数”，则报错（用stopifnot(is.numeric(n), n %% 1 == 0, n >= 0)）。 
代码注释：解释函数逻辑。 运行脚本（点击 “Source”），加载函数到环境中。
'''

myfirstrfunc <- function(n){
  stopifnot(is.numeric(n), n%%1==0, n>=0)
  nums <- 0:(n - 1)
  choose_n <- nums[nums%%2==0 | nums%%7==0]
  result <- sum(choose_n)
  return(result)
}
user_input <- as.numeric(readline("请输入一个非负整数："))
cat(myfirstrfunc(user_input))


