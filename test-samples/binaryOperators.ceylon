Boolean testBasicLogic   ()
 {
    value b1    = 1 == 5;
    value b2   = "a"   in { "a","b" };
    value b3 = b1   != b2;
    value b4 = b3&& 1 <= 2;
    return b4 == true;
}
