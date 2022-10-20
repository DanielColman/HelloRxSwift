import UIKit
import RxSwift

//var greeting = "Hello, playground"
//
//

// MARK: CREATE OBSERVABLE
//let observable = Observable.just(1)
//
//let observable2 = Observable.of(1,2,3)
//
//let observable3 = Observable.of([1,2,3])
//
//let observable4 = Observable.from([1,2,3,4])
//
//observable4.subscribe { event in
//    print(event)
//    if let element = event.element {
//        print(element)
//    }
//}
//

// MARK: CREATE OBSERVER (SUSBSCRIBE)
//observable3.subscribe { event in
//    print(event)
//    if let element = event.element {
//        print(element)
//    }
//}
//
//
//let subscription4 = observable4.subscribe(onNext: { element in
//    print(element)
//})
//
//subscription4.dispose()


// MARK: DISPOSE BAG
//let disposeBag = DisposeBag()
//
//Observable.of("A","B","C")
//    .subscribe {
//        print($0)
//    }.disposed(by: disposeBag)
//
//Observable<String>.create { observer in
//    observer.onNext("A")
//    observer.onCompleted()
//    observer.onNext("?")
//    return Disposables.create()
//}.subscribe(onNext: { print($0) }, onError: { print($0) }, onCompleted: { print("Completed") }, onDisposed: { print("Disposed")})
//    .disposed(by: disposeBag)


// MARK: SUBJECT
let disposeBag = DisposeBag()

let subject = PublishSubject<String>()

subject.onNext("Issue 1")

subject.subscribe { event in
    print(event)
}

subject.onNext("Issue 2")
subject.onNext("Issue 3")

subject.dispose()
subject.onCompleted()

subject.onNext("Issue 4")


// MARK: SUBJECT BEHAVIOR


