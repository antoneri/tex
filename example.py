@do(Maybe)
def with_maybe(first_divisor):
    val1 = yield mdiv(2.0, 2.0)
    val2 = yield mdiv(3.0, 0.0)
    val3 = yield mdiv(val1, val2)
    mreturn(val3)
