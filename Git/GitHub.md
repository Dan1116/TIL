# GitHub
* 컴퓨터에서 깃을 처음 사용할 때에는 git cofig user.name “username” 과 git config user.email “email”을 해줘야 잔디가 심어진다 
* Commit 한 옛 버전을 클론 뜨는 방법 : git reset —hard 커밋해시
* revert : revert는 상태를 되돌린다고 볼 수 있다

## 언제 reset을 하고 언제 revert를 해야하나?
* 단순하게 생각하면 reset을 하는 것이 revert를 하는 것보다 이력을 더 단순하게 만들어주기 때문에 revert의 장점이 많지 않아 보입니다. 하지만 이력 중간에 로그 출력하도록 한 커밋이 있고 그 커밋만을 취소하려고 한다면 reset을 사용하여 이후의 이력을 모두 제거하는 것은 이후 이력을 모두 날려버리는 결과를 나을 것입니다. 이런 때 revert를 사용하여 해당 커밋의 내용만 되돌릴 수 있습니다. 또한 이미 원격 리파지토리에 push 를 한 상태라면 reset을 사용하면 reset 하기 이전으로 되돌리기 전까지는 push 할 수 없게됩니다. (물론 force라는 무시무시한 옵션이 있기는 합니다. ) 그래서 이미 push 한 코드라면 미련을 버리고 revert를 하셔야 합니다.
