func tower_of_hanoi(_ n: Int) -> [[Int]] {
    var result: [[Int]] = []
    
    func helper(_ n: Int, _ src: Int, _ aux: Int, _ dst: Int) {
        if n == 1  {
            result.append([src, dst])
            return
        }
        
        helper(n - 1, src, dst, aux)
        result.append([src, dst])
        helper(n - 1, aux, src, dst)
    }
    
    helper(n, 1, 2, 3)
    
    return result
}

print(tower_of_hanoi(3))