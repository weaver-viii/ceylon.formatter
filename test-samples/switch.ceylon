void testSwitch() {
    String|Character? first = process.arguments.first;
    switch (first)
    case ("Hi") {
        print("Hello");
    }
    case (is Character) {
        print(first);
    }
    case (is Null) {
        print("null");
    }
    else {
        print(first);
    }
}

abstract class T() of t1 | t2 | t3 {}
object t1 extends T() {}
object t2 extends T() {}
object t3 extends T() {}

void testSwitchWithMultipleCases() {
    T t = nothing;
    switch (t)
    case (t1) {
        // do stuff
    }
    case (t2 | t3) {
        // do other stuff
    }
}

void testSwitchWithNewVariable() {
    switch (arg = process.arguments.first)
    case (is String) { print("Hello, ``arg``!"); }
    case (null) { print("USAGE: ceylon run `` `module`.name ``/`` `module`.version `` [NAME]"); }
}

void testSwitchWithElseIf() {
    switch (process.arguments.size)
    case (0) { print("no arguments"); }
    else if (process.arguments.first?.equals("foo") else false) {
        if (1 == 0) {
            print("wat");
        }
        else {
            print("first argument is foo");
        }
    } else if (process.arguments.first?.equals("bar") else false) { print("first argument is bar"); }
    else { print("first argument is neither foo nor bar"); }
}
