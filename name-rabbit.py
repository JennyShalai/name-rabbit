
def answer(names):
    # 'cost' of the letter
    charCostDictionary = {  'a': 1,
                            'b': 2,
                            'c': 3,
                            'd': 4,
                            'e': 5,
                            'f': 6,
                            'g': 7,
                            'h': 8,
                            'i': 9,
                            'j': 10,
                            'k': 11,
                            'l': 12,
                            'm': 13,
                            'n': 14,
                            'o': 15,
                            'p': 16,
                            'q': 17,
                            'r': 18,
                            's': 19,
                            't': 20,
                            'u': 21,
                            'v': 22,
                            'w': 23,
                            'x': 24,
                            'y': 25,
                            'z': 26 }
    # here will be 'cost': 'name' data
    nameCostDictionary = {}

    # here will be the result for return
    result = []

    for name in names:
        # for each name find it's total cost
        nameCost = 0
        for char in name:
            if char in charCostDictionary:
                nameCost += charCostDictionary[char]
            else:
                #print 'There is not a letter provided in name!'
                break

        # save cost with it's name
        if nameCost in nameCostDictionary:
            nameCostDictionary[nameCost].append(name)
        else:
            nameCostDictionary[nameCost] = [name]
            
    # all names' costs + sorted as descending order
    allCosts = sorted(nameCostDictionary.keys(), key = int, reverse = True)
    
    # for each cost take a name
    # if there are several name - sort them as descending order
    for cost in allCosts:
        nameList = nameCostDictionary[cost]
        if len(nameList) == 1:
            result.append(nameList[0])
        else:
            sortedNameList = sorted(nameList, reverse = True)
            for name in sortedNameList:
                result.append(name)

    return result

input1 = ["annie", "bonnie", "liz"]
input2 = ["abcdefg", "vi"]

print(answer(input1))
# ['bonnie', 'liz', 'annie']

print(answer(input2))
# ['vi', 'abcdefg']



