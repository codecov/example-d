module test;

bool func1()
{
    auto success = 2 > 1; // Hit!
    return success;
}

bool func2()
{
    auto success = 2 < 1; // Not hit!
    return success;
}

unittest
{
    assert( func1() );
    // assert( func2() );
}
