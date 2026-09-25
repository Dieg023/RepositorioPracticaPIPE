from main import sum


def test_sums_2_numbers():
    assert sum(2, 2) == 4


def test_sums_negative():
    assert sum(-1, 1) == 0
