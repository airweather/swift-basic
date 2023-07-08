// Optional

// 옵셔널이란
// 값이 있을 수도 있고, 없을 수도 있음

// 옵셔널을 쓰는 이유

// 1. nil의 가능성을 문서화 하지 않아도 코드만으로 충분히 표현 가능
// 2. 전달받은 값이 옵셔널이 아니라면 nil 체크를 하지 않더라도 안심하고 사용
// 3. 효율적인 코딩을 위해
// 4. 예외 상황을 최소화하는 안전한 코딩을 위해

// 옵셔널 문법과 선언
enum Optional<Wrapped> : ExpressibleByNilLiteral {
    case none
    case some(Wrapped)
}

// 옵셔널 표현
var optionalValue: Optional<Int> = nil
var optionalValue: Int? = nil

// 묵시적 추출 옵셔널
// Implicitly Unwrapped Optional
var optionalValue: Int! = 100

// 옵셔널 추출
// 옵셔널에 값이 들어있는지 확인 후 값 추출

// if-let 방식
var optionalValue: Int? = 100


if let value = optionalValue {
    print(value)
} else {
    print("nil")
}

var optionalValue: Int? = nil
if let value = optionalValue {
    print(value)
} else {
    print("nil")
}

var optionalValue: Int! = 100
if let value = optionalValue {
    print(value)
} else {
    print("nil")
}
