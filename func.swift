// 함수선언은 func 키워드를 사용한다.
// func 함수명(매개변수1: 타입, 매개변수2: 타입, ...) -> 반환타입 {
//     실행코드
//     return 반환값
// }

func hello(name: String) -> String {
    return "Hello \(name)!"
};

print(hello(name: "Swift"));

// return 키워드를 사용하지 않으면 반환값이 없는 함수가 된다.
// 반환값이 없는 함수는 반환타입을 생략할 수 있다.
// 반환값이 없는 함수는 반환타입을 생략하면 -> Void 가 생략된 것이다.
// 반환값이 없는 함수는 반환타입을 생략하면 -> () 가 생략된 것이다.

func hello2(name: String) -> Void{
    print("Hello \(name)!");
};
