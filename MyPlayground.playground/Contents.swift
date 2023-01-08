// Кортежи(Tuple)
// Присваваем константе tupleOneOption значения типа string,bool,int в виде кортежа(тип присвоен автоматически)
let tupleOneOption = ("Пример",true,3)
type(of: tupleOneOption) //(String, Bool, Int).Type

// Присваваем константе tupleTwoOption значения типа bool,string,int в виде кортежа(тип присвоен вручную)
let tupleTwoOption:(Bool,String,Int) = (true,"Пример",3)
//Кортежи нельзя сравнивать между собой, но можно сравнивать их типы данных, в данной ситуации типы констант будут не равны т/к последовательность типов данных разная
//Кортеж не рекомендовано заносить более 7 значений в одну переменную/константу
//Кортеж это универсальный тип данных, можно вносить в один кортеж разные типы данных и эти данные будут упорядоченные т.е к каждому элементу можно обратиться по его индексу(индексы начинаются с 0)


// Коллекции(массивы,словари,множества, диапазоны). Коллекции входят в протокол "Последовательности"(по спецификации).


//Массивы(Array)
//Массивы могут иметь только 1 тип данных. Данные в массиве упорядоченные(можем обратится к элементам по индексу
let arrayString = ["x","y","z"]
let arrayInt = [0, 1, 2]
let arrayBool = [true,false,true]
let arrayDouble = [3.3,4.0,0.2]

//Можно создать массив по диапазону
let arrayRangeOne = Array(1...5)
let arrayRangeTwo = Array(-1...5) //можно использовать отрицательные значения
let arrayRangeThree = Array(0..<5)
 
//Использование команды Array(repeating:count:) позволяет повторить определенный элемент заданное колличество раз
let arrayRepeatCount = Array(repeating: "Хочу выучить Swift", count: 3)

//Использование команды Array(arrayLiteral:)
let arrayLiteralOne = Array(arrayLiteral: 1,2,3)
let arrayLiteralTwo = Array(arrayLiteral: "x","y","x") //элементы в массиве могут повторяться(повторы будут отображаться и иметь свой индекс)
let arrayLiteralBool = Array(arrayLiteral: true,false)

// Тип данных массива можно указать вручную
let manualArrayOne: Array<Int> = [1,2,3,4]
let manualArrayTwo: [Double] = [3.2, 4.1, 0.1]

// Можно создать пустой массив(необходимо указать тип данных вручную)
let emptyArray: [Int] = [] //может быть не только (Int), но и любые другие типы
emptyArray.isEmpty //true
emptyArray == nil //false //не совсем корректное сравнение, хотел показать что пустой массив не равно отсутствию значения



//Множества(так же как и массивы заключаются в [], автоматически xcode определяет последовательность как массив, поэтому тут необходимо вручную задавать Set)
// Особенность множеств в том, что элементы здесь неупорядоченные(нельзя обратится по индексу) и Set собирает только уникальные значения(повторы отображаться не будут)
let oneSet: Set = [1,2,3]
let twoSet: Set<String> = ["hello, ", "it's", "me"] //тип данных задан вручную
let threeSet = Set<Int>(arrayLiteral: 1,6,1,9) //в множестве будет только 3 элемента т.к (1) повторяется
//Создание пустого множества
let emptySet = Set<String>()
emptySet.isEmpty //true



//Словари //Как и множества это неупорядоченная коллекция. Исполюзуется в паре ключ-значение. Ключи с другими ключами должны иметь один и тот же тип данных, значения иметь один тип данных с другими значениями, при этом у ключей и значений может быть разный тип данных
let oneDictionary = ["x":10,"y":-1, "z":25] //короткая запись(у ключей тип String, у значений - Int)
let twoDictionary = Dictionary(dictionaryLiteral: (23,"lose"),(52,"win"),(1,"win")) //элементы могут повторятся, а ключи нет

//Можно создать словарь, взяв за основу набор кортежей
let randomTuple = [(2,2.3), (56,12.4),(16,90.5)]
let createDictionary = Dictionary(uniqueKeysWithValues: randomTuple)

//Можно создать словарь на основе 2-х посследовательностей(одна последовательность будет ключами, вторая значениями)
let sequenceKeys = ["alpha","beta", "gamma"]
let sequenceElelements = [true,true,false]
let newDictionary = Dictionary(uniqueKeysWithValues: zip(sequenceKeys, sequenceElelements))

//Создаем пустой  словарь
let emptyDictionaryOne: [String:Int] = [:] //обязательно необходимо указать типы ключей и элементов вручную
let emptyDictionaryTwo = Dictionary<Bool,Double>()



//ИТОГ //Кортежи - можно вкладывать элементы с разными типами данных(отображение - упорядоченное)
       //Массивы - можно вкладывать эл-ты только одного типа данных(отображение - упорядоченное), повторы значений отображаются
       //Множества - можно вкладывать элементы одного типа данных(отображение - не упорядоченное), отображаются только уникальные значения
       //Словари - использование пары ключ-значение (отображение - не упорядоченное)




//Блок с сортировкой элементов
//Т.к кортежи упорядоченные и содержат разные типы данных, сортировка данной последовательности не представляется возможным


//Массивы
//String
let arrayForSort = ["b","b", "c", "a"] //Создаем массив с типом данных String
let sortedArray = arrayForSort.sorted() //Сортируем String по алфавиту и записываем данные в новую константу
arrayForSort.min() //Поиск минимального значения типа String
arrayForSort.max() //Поиск максимального значения типа String

//Int
let arrayIntForSort = [10,-1,5,47] // Создаем массив с типом Int
let sortedInt = arrayIntForSort.sorted() //сортируем массив по возрастанию значения Int
arrayIntForSort.min()
arrayIntForSort.max()


//Double
let arrayDoubleForSort = [0.9,22.3,15.3,0.0] //Создаем массив типа Double
let sortedDouble = arrayDoubleForSort.sorted() //Сортируем массив по возрастанию и записываем в новую константу
arrayDoubleForSort.min()
arrayDoubleForSort.max()



//Множества
//String
let SetForSort:Set = ["b","b", "c", "a"] //Создаем множество типа String
let sortedSetStr = SetForSort.sorted() //Сортируем множество по возрастанию и записываем в новую константу
type(of: sortedSetStr) //тк элементы множества неупородоченные, то при попытке отсортировать элементы тип данных станет Array<String>.Type(массив)
SetForSort.min()
SetForSort.max()

//Int
let setIntForSort:Set = [10,-1,5,47] //Создаем множество с типом Int
let sortedSetInt = setIntForSort.sorted() //Сортируем по возрастанию
type(of:sortedSetInt) //Array
setIntForSort.min()
setIntForSort.max()

//Double
let doubleSetForSort:Set = [0.9,22.3,15.3,0.0]
let sortedSetDouble = doubleSetForSort.sorted()
type(of: sortedSetDouble) //Array
doubleSetForSort.min()
doubleSetForSort.max()


//Словари???

//Операции со String
//Конкатенация
let randomStringOne = "Hello, "
let randomStringTwo = "my sensei"
let summSrting = randomStringOne + randomStringTwo //конкатенация 2-х переменных с типом String















                             














