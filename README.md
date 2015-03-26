# ios-app-presentviewcontrollerinios8

ViewController->ViewController2->ViewController3の順で表示し、先頭のViewControllerに対してdismissViewControllerを実行した時の動作を確認

## iOS7

    ViewController3: -[ViewController3 viewWillDisappear:]
    ViewController: -[ViewController viewWillAppear:]
    ViewController: -[ViewController viewDidAppear:]
    ViewController3: -[ViewController3 viewDidDisappear:]

## iOS8

    ViewController3: -[ViewController3 viewWillDisappear:]
    ViewController2: -[ViewController2 viewWillAppear:]
    ViewController2: -[ViewController2 viewDidAppear:]
    ViewController3: -[ViewController3 viewDidDisappear:]
    ViewController2: -[ViewController2 viewWillDisappear:]
    ViewController: -[ViewController viewWillAppear:]
    ViewController: -[ViewController viewDidAppear:]
    ViewController2: -[ViewController2 viewDidDisappear:]
