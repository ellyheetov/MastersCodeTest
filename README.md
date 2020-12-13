# 2단계: 평면 큐브 구현하기
3 X 3의 2차원 배열이 아래처럼 있다.
```
R R W
G C W
G B B
```
사용자 입력을 받아서 아래의 동작을 하는 프로그램을 구현하시오
```
> U  가장 윗줄을 왼쪽으로 한 칸 밀기 RRW -> RWR
> U' 가장 윗줄을 오른쪽으로 한 칸 밀기 RRW -> WRR
> R  가장 오른쪽 줄을 위로 한 칸 밀기 WWB -> WBW
> R' 가장 오른쪽 줄을 아래로 한 칸 밀기 WWB -> BWW
> L  가장 왼쪽 줄을 아래로 한 칸 밀기 RGG -> GRG (L의 경우 R과 방향이 반대임을 주의한다.)
> L' 가장 왼쪽 줄을 위로 한 칸 밀기 RGG -> GGR
> B  가장 아랫줄을 오른쪽으로 한 칸 밀기 GBB -> BGB (B의 경우도 U와 방향이 반대임을 주의한다.)
> B' 가장 아랫줄을 왼쪽으로 한 칸 밀기 GBB -> BBG
> Q  Bye~를 출력하고 프로그램을 종료한다.
```

# 요구사항
- 처음 시작하면 초기 상태를 출력한다.
- 간단한 프롬프트 (CLI에서 키보드 입력받기 전에 표시해주는 간단한 글자들 - 예: CUBE> )를 표시해 준다.
- 한 번에 여러 문자를 입력받은 경우 순서대로 처리해서 매 과정을 화면에 출력한다.
## 동작 예시

```
R R W
G C W
G B B

CUBE> UUR

U
R W R 
G C W
G B B

U
W R R  
G C W
G B B

R
W R W 
G C B
G B R

CUBE> Q
Bye~
```

# 2단계 코딩 요구사항
- 너무 크지 않은 함수 단위로 구현하려고 노력할 것
- 전역변수의 사용을 자제할 것
- 객체와 배열을 적절히 활용할 것

# 📝 클래스 및 메소드 도출

1. Direction 
    - U  가장 윗줄을 왼쪽으로 한 칸 밀기 RRW -> RWR
    - U' 가장 윗줄을 오른쪽으로 한 칸 밀기 RRW -> WRR
    - R  가장 오른쪽 줄을 위로 한 칸 밀기 WWB -> WBW
    - R' 가장 오른쪽 줄을 아래로 한 칸 밀기 WWB -> BWW
    - L  가장 왼쪽 줄을 아래로 한 칸 밀기 RGG -> GRG (L의 경우 R과 방향이 반대임을 주의한다.)
    - L' 가장 왼쪽 줄을 위로 한 칸 밀기 RGG -> GGR
    - B  가장 아랫줄을 오른쪽으로 한 칸 밀기 GBB -> BGB (B의 경우도 U와 방향이 반대임을 주의한다.)
    - B' 가장 아랫줄을 왼쪽으로 한 칸 밀기 GBB -> BBG
    - Q 

2. inputControl

    - 임의에 배열이 주어지므로 큐브를 초기화하는 input은 처리하지 않음
    - 사용자의 입력을 받는 함수
    - 사용자의 입력을 Direction으로 변환하는 함수

3. PlainCube
    - 왼쪽으로 미는 함수
    - 오른쪽으로 미는 함수
    - row를 선택하는 함수
    - 큐브의 상태를 출력하는 함수

4. CubeGame 
    - 게임을 시작
    - 게임을 종료

5. InputError
    - invalidIput 

# 🎲 기능 구현 순서

1. 큐브 초기화
2. 반복문 시작
3. 사용자로 부터 입력을 받는다.
    - 예외 처리
4. 사용자로부터 게임을 그만하겠다는 요청(Q)를 받으면 게임을 종료한다.
5. 사용자의 입력에 따라 큐브를 움직인다.
6. 큐브의 상태를 출력한다.
7. 2-6의 과정을 반복한다.
8. 게임 종료 

# 🧑🏻‍🏫 고찰
- String을 한글자씩 split하기 때문에 U', R', L', B'를 처리할수 없다는 한계가 있다.
- 잘못된 input의 경우 에러메시지를 띄우지 않고, quit를 리턴하여 게임을 종료한다.
    - 에러 메시지를 띄우고, 사용자에게 다시 입력하라고 할 순 없을까?
- 큐브를 이동하기 위한 함수가 매우 난잡하다. 클로져를 이용하여 더 단순하게 할 수 있지 않을까?