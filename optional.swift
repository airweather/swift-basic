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

// 옵셔널 강제 추출

// 옵셔널에 값이 들어있는지 확인하지 않고 강제로 값을 꺼내는 방식
// 만약 값이 없을경우(nil) 런타임 오류가 발생하여 프로그램이 강제 종료됨

var optionalValue: Int? = 100
print(optionalValue)

var optionalValue: Int? = nil
print(optionalValue)

var optionalValue: Int! = 100
print(optionalValue)

var optionalValue: Int! = nil
print(optionalValue)

// 옵셔널 바인딩

// 옵셔널에 값이 들어있는지 확인하고 값이 있으면 값을 꺼내옴과 동시에 if-let 구문 내부에서 사용 가능

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

var optionalValue: Int! = nil

if let value = optionalValue {
    print(value)
} else {
    print("nil")
}

// 옵셔널 강제 추출은 옵셔널에 값이 들어있는지 확인하지 않고 강제로 값을 꺼내는 방식
// 만약 값이 없을경우(nil) 런타임 오류가 발생하여 프로그램이 강제 종료됨

var optionalValue: Int? = 100
print(optionalValue)

var optionalValue: Int? = nil
print(optionalValue)

var optionalValue: Int! = 100
print(optionalValue)

// 옵셔널 체이닝
// 옵셔널의 내부의 내부의 내부로 옵셔널이 연결되어 있을 때 유용하게 사용할 수 있음

class Person {
    var name: String?
    var job: String?
    var home: Apartment?
}


class Apartment {
    var buildingNumber: String?
    var roomNumber: String?
    var `guard`: Person?
}


let yagom: Person? = Person()
let apart: Apartment? = Apartment()
let superman: Person? = Person()

// 옵셔널 체이닝이 실행 후 결과값이 nil일 수 있으므로 결과 타입도 옵셔널입니다
// 만약 우리집의 경비원의 직업이 궁금하다면..?

// 옵셔널 체이닝을 사용하지 않는다면...
func guardJob(owner: Person?) {
    if let owner = owner {
        if let home = owner.home {
            if let `guard` = home.guard {
                if let guardJob = `guard`.job {
                    print("우리집 경비원의 직업은 \(guardJob)입니다")
                } else {
                    print("우리집 경비원은 직업이 없어요")
                }
            }
        }
    }
}

