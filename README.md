# 1단계: 단어 밀어내기 구현하기
1. 입력: 사용자로부터 단어 하나, 정수 숫자 하나( -100 <= N < 100) , L 또는 R을 입력받는다. L 또는 R은 대소문자 모두 입력 가능하다.
2. 주어진 단어를 L이면 주어진 숫자 갯수만큼 왼쪽으로, R이면 오른쪽으로 밀어낸다.
3. 밀려나간 단어는 반대쪽으로 채워진다.

# 입력 및 출력 예시
홀수 줄은 입력, 짝수 줄은 출력이다.

```
> apple 3 L 
leapp

> banana 6 R
banana

> carrot -1 r
arrotc

> cat -4 R
atc
```
 
# 1단계 코딩 요구사항
- 컴파일 및 실행되지 않을 경우 불합격
- 자기만의 기준으로 최대한 간결하게 코드를 작성한다.

# 🏀 클래스 및 메소드 도출

1. InputControl
- 단어 하나, 정수 숫자 하나, L 또는 R을 입력받는 함수
- 유효성을 체크하는 함수

2. Computer
- 숫자를 밀어내는 함수 
- 결과를 출력하는 함수 

3. InputError 
- ```invalidString``` : 단어가 입력되지 않은 경우
- ```notInteger``` : 정수가 아닌 경우
- ```integerOutOfRange``` : 정수가 ( -100 <= N < 100) 범위를 넘어간 경우
- ```invalidDirection``` : L 또는 R 이 아닌경우

# 🤔 개선할 점
- 에러처리가 아직 미흡하다.

    실수로 "apple 3 -r"을 입력하였다. 
    ```
    > apple 3 -r
    [Error] invalidDirection
    pleap
    ```
    그런데 다음과 같은 결과가 나왔다. 올바른 방향이 입력되지 않았음에도 결과가 출력된 것이다. 
    ```swift
    func execute(){
        let myInput = InputControl.getInput()
        let result = self.pushString(input: myInput)
        printString(str: result)
    }
    ```
    InputControl에 getInput 함수에서 invalidDirection 예외처리를 발견하였으나, 결과와 상관없이 pushString함수를 실행하기 때문이다. 예외를 발견한 경우  ```exit(0)```을 이용하여 강제종료 시킬 수 있지만, 더 좋은 에러처리가 있을것으로 생각하여 남겨두었다.