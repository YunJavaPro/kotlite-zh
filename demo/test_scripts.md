# Kotlite 测试脚本集合

这个目录包含了各种 Kotlite 的测试脚本，用于在在线演示中运行测试。

## 基础测试

### 1. Hello World
```kotlin
println("Hello, 世界!")
println("欢迎使用 Kotlite!")
```

### 2. 变量和数据类型
```kotlin
// 变量声明
val immutable = "我是不可变的"
var mutable = "我是可变的"
mutable = "我改变了!"

// 数据类型
val intNum: Int = 42
val longNum: Long = 10000000000L
val doubleNum: Double = 3.14159
val booleanVal: Boolean = true
val charVal: Char = 'A'

println("整数: $intNum")
println("长整数: $longNum")
println("浮点数: $doubleNum")
println("布尔值: $booleanVal")
println("字符: $charVal")
println("不可变变量: $immutable")
println("可变变量: $mutable")
```

### 3. 字符串操作
```kotlin
val str = "Hello, Kotlin!"

// 基本操作
println("字符串: $str")
println("长度: ${str.length}")
println("大写: ${str.uppercase()}")
println("小写: ${str.lowercase()}")

// 子串
println("子串: ${str.substring(0, 5)}")

// 检查包含
println("包含 'Kotlin': ${str.contains("Kotlin")}")

// 替换
println("替换: ${str.replace("Hello", "Hi")}")

// 去除空格
val strWithSpaces = "   Hello World   "
println("去除空格: '${strWithSpaces.trim()}'")

// 分割和连接
val csv = "apple,banana,orange"
val parts = csv.split(",")
println("分割后: $parts")
println("连接: ${parts.joinToString(" | ")}")
```

### 4. 数学运算
```kotlin
// 基本运算
val a = 10
val b = 3
println("$a + $b = ${a + b}")
println("$a - $b = ${a - b}")
println("$a * $b = ${a * b}")
println("$a / $b = ${a / b}")
println("$a % $b = ${a % b}")

// 比较运算
println("$a > $b: ${a > b}")
println("$a == $b: ${a == b}")

// 使用 Math 库
import kotlin.math.*
println("绝对值 -42: ${abs(-42)}")
println("最大 100, 200: ${max(100, 200)}")
println("最小 100, 200: ${min(100, 200)}")
println("平方根 16: ${sqrt(16.0)}")
println("2^8: ${2.0.pow(8.0)}")
println("四舍五入 3.7: ${round(3.7)}")
println("向下取整 3.7: ${floor(3.7)}")
println("向上取整 3.1: ${ceil(3.1)}")
```

## 列表和集合

### 5. List 操作
```kotlin
// 创建列表
val list = listOf("苹果", "香蕉", "橙子")
println("原列表: $list")

// 访问元素
println("第一个元素: ${list[0]}")
println("最后一个元素: ${list[list.size - 1]}")

// 遍历
println("\n遍历列表:")
for (item in list) {
    println("- $item")
}

// 索引遍历
println("\n索引遍历:")
for ((index, item) in list.withIndex()) {
    println("$index: $item")
}

// 可变列表
val mutableList = mutableListOf(1, 2, 3)
println("\n可变列表初始: $mutableList")
mutableList.add(4)
mutableList.add(0, 0)
println("添加后: $mutableList")
mutableList.remove(2)
println("删除后: $mutableList")

// 列表转换
println("\n映射: ${mutableList.map { it * 2 }}")
println("过滤: ${mutableList.filter { it % 2 == 0 }}")
println("求和: ${mutableList.sum()}")
```

### 6. Map 操作
```kotlin
// 创建 Map
val map = mapOf(
    "one" to 1,
    "two" to 2,
    "three" to 3
)
println("原Map: $map")

// 访问值
println("键 'one' 的值: ${map["one"]}")
println("键 'four' 的值或默认: ${map.getOrDefault("four", 0)}")

// 遍历
println("\n遍历 Map:")
for ((key, value) in map) {
    println("$key -> $value")
}

// 可变 Map
val mutableMap = mutableMapOf<String, Int>()
mutableMap["a"] = 10
mutableMap["b"] = 20
println("\n可变Map: $mutableMap")
mutableMap["c"] = 30
println("添加后: $mutableMap")
mutableMap.remove("a")
println("删除后: $mutableMap")
```

## 控制流程

### 7. 条件语句
```kotlin
val score = 85

// if 表达式
val result = if (score >= 90) {
    "优秀"
} else if (score >= 80) {
    "良好"
} else if (score >= 60) {
    "及格"
} else {
    "不及格"
}
println("成绩 $score: $result")

// when 表达式
val grade = 'B'
val desc = when (grade) {
    'A' -> "优秀"
    'B' -> "良好"
    'C' -> "合格"
    else -> "其他"
}
println("等级 $grade: $desc")
```

### 8. 循环控制
```kotlin
// for 循环范围
println("1到5:")
for (i in 1..5) {
    print("$i ")
}

println("\n\n5到1:")
for (i in 5 downTo 1) {
    print("$i ")
}

println("\n\n1到10，步长2:")
for (i in 1..10 step 2) {
    print("$i ")
}

println("\n\n直到10:")
for (i in 1 until 10) {
    print("$i ")
}

// while 循环
println("\n\nwhile 循环:")
var n = 1
while (n <= 5) {
    print("${n * n} ")
    n++
}
```

## 函数

### 9. 函数定义
```kotlin
// 简单函数
fun greet(name: String): String {
    return "你好, $name!"
}
println(greet("张三"))

// 单表达式函数
fun add(a: Int, b: Int): Int = a + b
println("10 + 20 = ${add(10, 20)}")

// 带默认参数的函数
fun greetDefault(name: String = "访客"): String {
    return "欢迎, $name!"
}
println(greetDefault())
println(greetDefault("李四"))

// 可变参数
fun sum(vararg numbers: Int): Int {
    var total = 0
    for (num in numbers) {
        total += num
    }
    return total
}
println("求和 1-5: ${sum(1, 2, 3, 4, 5)}")
```

### 10. Lambda 表达式
```kotlin
// 简单的 Lambda
val double = { x: Int -> x * 2 }
println("double(5): ${double(5)}")

// 结合列表操作
val numbers = listOf(1, 2, 3, 4, 5)
println("原列表: $numbers")

val doubled = numbers.map { it * 2 }
println("乘以2: $doubled")

val evens = numbers.filter { it % 2 == 0 }
println("偶数: $evens")

val sum = numbers.reduce { acc, num -> acc + num }
println("求和: $sum")

val total = numbers.fold(0) { acc, num -> acc + num }
println("折叠求和: $total")
```

## 实战示例

### 11. 斐波那契数列
```kotlin
fun fibonacci(n: Int): List<Int> {
    val result = mutableListOf<Int>()
    var a = 0
    var b = 1
    
    for (i in 1..n) {
        result.add(a)
        val next = a + b
        a = b
        b = next
    }
    
    return result
}

val fib10 = fibonacci(10)
println("斐波那契前10项: $fib10")
```

### 12. 素数检测
```kotlin
fun isPrime(n: Int): Boolean {
    if (n <= 1) return false
    if (n <= 3) return true
    if (n % 2 == 0 || n % 3 == 0) return false
    
    var i = 5
    while (i * i <= n) {
        if (n % i == 0 || n % (i + 2) == 0) return false
        i += 6
    }
    return true
}

// 查找 1-50 之间的素数
val primes = mutableListOf<Int>()
for (i in 1..50) {
    if (isPrime(i)) {
        primes.add(i)
    }
}
println("1-50之间的素数: $primes")
```

### 13. 排序算法
```kotlin
fun bubbleSort(arr: MutableList<Int>) {
    val n = arr.size
    for (i in 0 until n - 1) {
        for (j in 0 until n - i - 1) {
            if (arr[j] > arr[j + 1]) {
                // 交换
                val temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
}

val arr = mutableListOf(64, 34, 25, 12, 22, 11, 90)
println("排序前: $arr")
bubbleSort(arr)
println("排序后: $arr")
```

### 14. 文本频率统计
```kotlin
fun wordCount(text: String): Map<String, Int> {
    val words = text.lowercase().split(" ", ",", ".", "!", "?")
        .filter { it.isNotEmpty() }
    
    val countMap = mutableMapOf<String, Int>()
    for (word in words) {
        countMap[word] = (countMap[word] ?: 0) + 1
    }
    
    return countMap.toSortedMap()
}

val text = "Kotlin is a great language. Kotlin is fun!"
val counts = wordCount(text)
println("词频统计:")
for ((word, count) in counts) {
    println("- $word: $count")
}
```

### 15. 简单的计算器
```kotlin
fun calculate(a: Double, b: Double, op: Char): Double {
    return when (op) {
        '+' -> a + b
        '-' -> a - b
        '*' -> a * b
        '/' -> if (b != 0.0) a / b else Double.NaN
        '%' -> a % b
        else -> throw IllegalArgumentException("未知操作符: $op")
    }
}

println("100 + 50 = ${calculate(100.0, 50.0, '+')}")
println("100 - 50 = ${calculate(100.0, 50.0, '-')}")
println("100 * 50 = ${calculate(100.0, 50.0, '*')}")
println("100 / 50 = ${calculate(100.0, 50.0, '/')}")
println("100 % 50 = ${calculate(100.0, 50.0, '%')}")
```
