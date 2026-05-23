void main () {
    var chrono = new Chrono.Core ();

    // Test basic date parsing
    var result = chrono.parse ("tomorrow");
    assert (result != null);

    result = chrono.parse ("next Monday");
    assert (result != null);

    result = chrono.parse ("in 3 days");
    assert (result != null);

    print ("All tests passed!\n");
}
