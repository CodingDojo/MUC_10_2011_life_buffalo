[{:run_tests_output=>"Life.cs(8,5): error CS1525: Unexpected symbol `}', expecting `;'\nLife.cs(10,1): error CS8025: Parsing error\nCompilation failed: 2 error(s), 0 warnings\n", :outcome=>:error, :time=>[2011, 10, 17, 21, 5, 49], :number=>1}, {:run_tests_output=>"LifeTest.cs(11,13): error CS0029: Cannot implicitly convert type `string[]' to `int'\nCompilation failed: 1 error(s), 0 warnings\n", :time=>[2011, 10, 17, 21, 5, 59], :outcome=>:error, :number=>2}, {:run_tests_output=>".\nTests run: 1, Failures: 0, Not run: 0, Time: 0.020 seconds\r\n\r\n\r\n", :outcome=>:passed, :time=>[2011, 10, 17, 21, 6, 20], :number=>3}, {:run_tests_output=>"LifeTest.cs(34,1): error CS8025: Parsing error\nCompilation failed: 1 error(s), 0 warnings\n", :time=>[2011, 10, 17, 21, 8, 57], :outcome=>:error, :number=>4}, {:run_tests_output=>"LifeTest.cs(27,35): error CS1061: Type `string[]' does not contain a definition for `Count' and no extension method `Count' of type `string[]' could be found (are you missing a using directive or an assembly reference?)\nCompilation failed: 1 error(s), 0 warnings\n", :outcome=>:error, :time=>[2011, 10, 17, 21, 9, 15], :number=>5}, {:run_tests_output=>"..\nTests run: 2, Failures: 0, Not run: 0, Time: 0.023 seconds\r\n\r\n\r\n", :time=>[2011, 10, 17, 21, 9, 32], :outcome=>:passed, :number=>6}, {:run_tests_output=>"LifeTest.cs(61,15): error CS1525: Unexpected symbol `int', expecting `('\nLifeTest.cs(61,25): error CS0201: Only assignment, call, increment, decrement, and new object expressions can be used as a statement\nLifeTest.cs(61,49): error CS1525: Unexpected symbol `)', expecting `;'\nLifeTest.cs(65,14): error CS1519: Unexpected symbol `return' in class, struct, or interface member declaration\nLifeTest.cs(68,1): error CS8025: Parsing error\nCompilation failed: 5 error(s), 0 warnings\n", :outcome=>:error, :time=>[2011, 10, 17, 21, 13, 26], :number=>7}, {:run_tests_output=>"...\nTests run: 3, Failures: 0, Not run: 0, Time: 0.025 seconds\r\n\r\n\r\n", :time=>[2011, 10, 17, 21, 13, 46], :outcome=>:passed, :number=>8}, {:run_tests_output=>"...F.\nTests run: 4, Failures: 1, Not run: 0, Time: 0.072 seconds\r\n\r\nTest Case Failures:\r\n1) LifeTest.GridWith1Living0Neighbours_GeneratesEmptyField :   String lengths are both 8. Strings differ at index 2.\n  Expected: \"........\"\n  But was:  \"..x.....\"\n  -------------^\n\r\nat LifeTest.GridsAreEqual (System.String[] expected, System.String[] actual) [0x00000]\nat LifeTest.GridWith1Living0Neighbours_GeneratesEmptyField () [0x00000]\nat (wrapper managed-to-native) System.Reflection.MonoMethod:InternalInvoke (object,object[],System.Exception&)\nat System.Reflection.MonoMethod.Invoke (System.Object obj, BindingFlags invokeAttr, System.Reflection.Binder binder, System.Object[] parameters, System.Globalization.CultureInfo culture) [0x00000]\n\r\n\r\n", :outcome=>:failed, :time=>[2011, 10, 17, 21, 14, 55], :number=>9}, {:run_tests_output=>"..F..\nTests run: 4, Failures: 1, Not run: 0, Time: 0.067 seconds\r\n\r\nTest Case Failures:\r\n1) LifeTest.EmptyField_ReturnsEmptyResult :   Expected: null\n  But was:  < \"........\", \"........\", \"........\", \"........\" >\n\r\nat LifeTest.EmptyField_ReturnsEmptyResult () [0x00000]\nat (wrapper managed-to-native) System.Reflection.MonoMethod:InternalInvoke (object,object[],System.Exception&)\nat System.Reflection.MonoMethod.Invoke (System.Object obj, BindingFlags invokeAttr, System.Reflection.Binder binder, System.Object[] parameters, System.Globalization.CultureInfo culture) [0x00000]\n\r\n\r\n", :time=>[2011, 10, 17, 21, 15, 46], :outcome=>:failed, :number=>10}, {:run_tests_output=>"....\nTests run: 4, Failures: 0, Not run: 0, Time: 0.023 seconds\r\n\r\n\r\n", :outcome=>:passed, :time=>[2011, 10, 17, 21, 16, 21], :number=>11}, {:run_tests_output=>"....F.\nTests run: 5, Failures: 1, Not run: 0, Time: 0.069 seconds\r\n\r\nTest Case Failures:\r\n1) LifeTest.GridWith3Rows_Return3Rows :   Expected: 3\n  But was:  4\n\r\nat LifeTest.GridsAreEqual (System.String[] expected, System.String[] actual) [0x00000]\nat LifeTest.GridWith3Rows_Return3Rows () [0x00000]\nat (wrapper managed-to-native) System.Reflection.MonoMethod:InternalInvoke (object,object[],System.Exception&)\nat System.Reflection.MonoMethod.Invoke (System.Object obj, BindingFlags invokeAttr, System.Reflection.Binder binder, System.Object[] parameters, System.Globalization.CultureInfo culture) [0x00000]\n\r\n\r\n", :time=>[2011, 10, 17, 21, 17, 41], :outcome=>:failed, :number=>12}, {:run_tests_output=>".....\nTests run: 5, Failures: 0, Not run: 0, Time: 0.027 seconds\r\n\r\n\r\n", :outcome=>:passed, :time=>[2011, 10, 17, 21, 18, 59], :number=>13}, {:run_tests_output=>".....F.\nTests run: 6, Failures: 1, Not run: 0, Time: 0.075 seconds\r\n\r\nTest Case Failures:\r\n1) LifeTest.GridWith7Columns_Return7Columns :   Expected string length 7 but was 8. Strings differ at index 7.\n  Expected: \".......\"\n  But was:  \"........\"\n  ------------------^\n\r\nat LifeTest.GridsAreEqual (System.String[] expected, System.String[] actual) [0x00000]\nat LifeTest.GridWith7Columns_Return7Columns () [0x00000]\nat (wrapper managed-to-native) System.Reflection.MonoMethod:InternalInvoke (object,object[],System.Exception&)\nat System.Reflection.MonoMethod.Invoke (System.Object obj, BindingFlags invokeAttr, System.Reflection.Binder binder, System.Object[] parameters, System.Globalization.CultureInfo culture) [0x00000]\n\r\n\r\n", :time=>[2011, 10, 17, 21, 20, 5], :outcome=>:failed, :number=>14}, {:run_tests_output=>"Life.cs(17,62): error CS1502: The best overloaded method match for `string.String(char, int)' has some invalid arguments\n/usr/lib/mono/2.0/mscorlib.dll (Location of the symbol related to previous error)\nLife.cs(17,62): error CS1503: Argument `#1' cannot convert `string' expression to type `char'\nCompilation failed: 2 error(s), 0 warnings\n", :outcome=>:error, :time=>[2011, 10, 17, 21, 21, 15], :number=>15}, {:run_tests_output=>"......\nTests run: 6, Failures: 0, Not run: 0, Time: 0.030 seconds\r\n\r\n\r\n", :time=>[2011, 10, 17, 21, 22, 44], :outcome=>:passed, :number=>16}, {:run_tests_output=>".......\nTests run: 7, Failures: 0, Not run: 0, Time: 0.030 seconds\r\n\r\n\r\n", :outcome=>:passed, :time=>[2011, 10, 17, 21, 23, 42], :number=>17}, {:run_tests_output=>".....F...\nTests run: 8, Failures: 1, Not run: 0, Time: 0.070 seconds\r\n\r\nTest Case Failures:\r\n1) LifeTest.GridWith3Living_Return1LivingInGrid :   String lengths are both 8. Strings differ at index 3.\n  Expected: \"...x....\"\n  But was:  \"........\"\n  --------------^\n\r\nat LifeTest.GridsAreEqual (System.String[] expected, System.String[] actual) [0x00000]\nat LifeTest.GridWith3Living_Return1LivingInGrid () [0x00000]\nat (wrapper managed-to-native) System.Reflection.MonoMethod:InternalInvoke (object,object[],System.Exception&)\nat System.Reflection.MonoMethod.Invoke (System.Object obj, BindingFlags invokeAttr, System.Reflection.Binder binder, System.Object[] parameters, System.Globalization.CultureInfo culture) [0x00000]\n\r\n\r\n", :time=>[2011, 10, 17, 21, 26, 45], :outcome=>:failed, :number=>18}, {:run_tests_output=>"Life.cs(33,17): error CS0103: The name `i' does not exist in the current context\nLife.cs(33,20): error CS0103: The name `j' does not exist in the current context\nLife.cs(68,17): error CS0019: Operator `==' cannot be applied to operands of type `char' and `string'\nCompilation failed: 3 error(s), 0 warnings\n", :outcome=>:error, :time=>[2011, 10, 17, 21, 36, 6], :number=>19}, {:run_tests_output=>"Life.cs(33,12): error CS0019: Operator `==' cannot be applied to operands of type `char' and `string'\nLife.cs(68,17): error CS0019: Operator `==' cannot be applied to operands of type `char' and `string'\nCompilation failed: 2 error(s), 0 warnings\n", :time=>[2011, 10, 17, 21, 36, 30], :outcome=>:error, :number=>20}]
