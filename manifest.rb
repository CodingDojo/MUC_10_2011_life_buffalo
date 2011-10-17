{:visible_files=>{"Life.cs"=>{:scroll_left=>"0", :content=>"using System;\n\npublic class Life\n{\n    public static string[] NextGeneration(string[] inputField)\n    {\n        if(inputField == null)\n        {\n            return null;\n        }\n\n        var result = new String[inputField.Length];\n\n        for(int i=0; i < inputField.Length; i++)\n        {\n            string resultRow = \"\";\n            \n            for(int j=0; j < inputField[i].Length; j++)\n            {\n                resultRow  += GetNewCellGeneration(i, j, inputField);\n            }\n            result[i] = resultRow;\n        }\n\n        return result;\n    \n    }\n\n    public static string GetNewCellGeneration(int row, int column, String[] grid)\n    {\n        int numberOfNeighbours = GetNumberOfNeighbours(row, column, grid);\n        \n        if(grid[row][column] == 'x')\n        {\n            if(numberOfNeighbours < 2)\n            {\n                return \".\";\n            }\n            else{\n                return \"x\";\n            }\n        }\n        return \".\";  \n\n        \n\n    }\n\n    public static int GetNumberOfNeighbours(int row, int column, String[] grid)\n    {\n        int result = 0;\n\n        for (int i = -1; i <=1; i++)\n        {\n            if (i == 0)\n            {\n                continue;\n            }\n            int y = row + i;\n            if (y < 0)\n            {\n                continue;\n            }\n            if (y >= grid.Length)\n            {\n                continue;\n            }\n            if (grid[y][column] == 'x')\n            {\n                result++;\n            }\n         }\n\n        return result;\n    }\n}\n", :caret_pos=>"1468", :scroll_top=>"546"}, "cyberdojo.sh"=>{:scroll_left=>"0", :content=>"gmcs -t:library Life.cs\nif [ $? -eq 0 ]; then\n  gmcs -t:library -r:Life.dll -r:nunit.framework.dll LifeTest.cs\n  if [ $? -eq 0 ]; then\n    nunit-console -nologo LifeTest.dll\n  fi\nfi\n\n", :caret_pos=>"165", :scroll_top=>"0"}, "output"=>{:scroll_left=>"127", :content=>"........\nTests run: 8, Failures: 0, Not run: 0, Time: 0.031 seconds\r\n\r\n\r\n", :caret_pos=>"247", :scroll_top=>"0"}, "LifeTest.cs"=>{:scroll_left=>"0", :content=>"using System;\nusing NUnit.Framework;\n\n[TestFixture]\npublic class LifeTest\n{\n    [Test]\n    public void EmptyField_ReturnsEmptyResult()\n    {\n        string[] expected = null;\n        var actual = Life.NextGeneration(null);\n        Assert.AreEqual(expected, actual);\n    }\n    \n    [Test]\n    public void ResultHasSameDimentionsAsTheInput()\n    {\n        string[] input = new String[] {\n            \"........\",\n            \"........\",\n            \"........\",\n            \"........\",\n        };\n\n        var actual = Life.NextGeneration(input);\n\n        Assert.AreEqual(4, actual.Length);\n        Assert.AreEqual(input[0].Length, actual[0].Length);\n        Assert.AreEqual(input[1].Length, actual[1].Length);\n        Assert.AreEqual(input[2].Length, actual[2].Length);\n        Assert.AreEqual(input[3].Length, actual[3].Length);\n    }\n\n    [Test]\n    public void EmptyField_GeneratesEmptyField()\n    {\n        string[] input = new String[] {\n            \"........\",\n            \"........\",\n            \"........\",\n            \"........\",\n        };\n\n        var actual = Life.NextGeneration(input);\n\n        string[] expected = new String[] {\n            \"........\",\n            \"........\",\n            \"........\",\n            \"........\",\n        };\n\n        Assert.IsTrue(GridsAreEqual(expected, actual));\n    }\n\n    [Test]\n    public void GridWith1Living0Neighbours_GeneratesEmptyField()\n    {\n        string[] input = new String[] {\n            \"........\",\n            \"..x.....\",\n            \"........\",\n            \"........\",\n        };\n\n        var actual = Life.NextGeneration(input);\n\n        string[] expected = new String[] {\n            \"........\",\n            \"........\",\n            \"........\",\n            \"........\",\n        };\n\n        Assert.IsTrue(GridsAreEqual(expected, actual));\n    }\n\n    [Test]\n    public void GridWith3Rows_Return3Rows()\n    {\n        string[] input = new String[] {\n            \"........\",\n            \"........\",\n            \"........\",\n        };\n\n        var actual = Life.NextGeneration(input);\n\n        string[] expected = new String[] {\n            \"........\",\n            \"........\",\n            \"........\",\n        };\n\n        Assert.IsTrue(GridsAreEqual(expected, actual));\n    }\n\n    [Test]\n    public void GridWith7Columns_Return7Columns()\n    {\n        string[] input = new String[] {\n            \".......\",\n            \".......\",\n            \".......\",\n        };\n\n        var actual = Life.NextGeneration(input);\n\n        string[] expected = new String[] {\n            \".......\",\n            \".......\",\n            \".......\",\n        };\n\n        Assert.IsTrue(GridsAreEqual(expected, actual));\n    }\n\n    [Test]\n    public void GridWith1Living_ReturnEmptyGrid()\n    {\n        string[] input = new String[] {\n            \"........\",\n            \"...x....\",\n            \"........\",\n            \"........\",\n        };\n\n        var actual = Life.NextGeneration(input);\n\n        string[] expected = new String[] {\n            \"........\",\n            \"........\",\n            \"........\",\n            \"........\",\n        };\n\n        Assert.IsTrue(GridsAreEqual(expected, actual));\n    }\n\n    [Test]\n    public void GridWith3Living_Return1LivingInGrid()\n    {\n        string[] input = new String[] {\n            \"...x....\",\n            \"...x....\",\n            \"...x....\",\n            \"........\",\n        };\n\n        var actual = Life.NextGeneration(input);\n\n        string[] expected = new String[] {\n            \"........\",\n            \"...x....\",\n            \"........\",\n            \"........\",\n        };\n\n        Assert.IsTrue(GridsAreEqual(expected, actual));\n    }\n\n\n    private bool GridsAreEqual(string[] expected, string[] actual)\n    {\n        Assert.IsNotNull(expected);\n        Assert.IsNotNull(actual);\n        Assert.AreEqual(expected.Length, actual.Length);\n        for (int i = 0; i < expected.Length; i++) \n        {\n            Assert.AreEqual(expected[i], actual[i]);\n        }\n        return true;\n\n    }\n}\n\n", :caret_pos=>"3288", :scroll_top=>"2714"}, "instructions"=>{:scroll_left=>"0", :content=>"Your task is to write a program to calculate the next\ngeneration of Conway's game of life, given any starting\nposition. You start with a two dimensional grid of cells, \nwhere each cell is either alive or dead. The grid is finite, \nand no life can exist off the edges. When calculating the \nnext generation of the grid, follow these four rules:\n\n1. Any live cell with fewer than two live neighbours dies, \n   as if caused by underpopulation.\n2. Any live cell with more than three live neighbours dies, \n   as if by overcrowding.\n3. Any live cell with two or three live neighbours lives \n   on to the next generation.\n4. Any dead cell with exactly three live neighbours becomes \n   a live cell.\n\nExamples: * indicates live cell, . indicates dead cell\n\nExample input: (4 x 8 grid)\n4 8\n........\n....*...\n...**...\n........\n\nExample output:\n4 8\n........\n...**...\n...**...\n........\n\n", :caret_pos=>"0", :scroll_top=>"0"}}, :output=>"........\nTests run: 8, Failures: 0, Not run: 0, Time: 0.031 seconds\r\n\r\n\r\n", :current_filename=>"output"}
