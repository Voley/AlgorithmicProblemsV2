
# Problem code
def findErrorNums(nums):
    duplicate = 0
    missing = 0
    aux = [0] * (len(nums) + 1)
    for num in nums:
        if aux[num] == 1:
            duplicate = num
        aux[num] = 1

    for i in range(1, len(aux)):
        if aux[i] == 0:
            missing = i
            break
    return [duplicate, missing]
