# iOS
## Framework 구조
	main()
		UIApplicationMain
		=> UIApplication < - - - AppDelegate
					UIApplicationDelegate
		=> AppDelegate
			UIWindow 생성
					FirstController: UIViewController
						UIView

## iOS - View를 만드는 방법
*  1. xib - OK
*  2. storyboard
	*  => 많은 코드가 사라진다
	*  => 많은 xib 파일이 사라진다
	* 단점 : Conflict 확률이 높다
	* -> Storyboard를 분리할 수 있다

