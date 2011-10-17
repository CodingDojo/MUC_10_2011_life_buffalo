using System;
using NUnit.Framework;

[TestFixture]
public class LifeTest
{
    [Test]
    public void EmptyField_ReturnsEmptyResult()
    {
        string[] expected = null;
        var actual = Life.NextGeneration(null);
        Assert.AreEqual(expected, actual);
    }
    
    [Test]
    public void ResultHasSameDimentionsAsTheInput()
    {
        string[] input = new String[] {
            "........",
            "........",
            "........",
            "........",
        };

        var actual = Life.NextGeneration(input);

        Assert.AreEqual(4, actual.Length);
        Assert.AreEqual(input[0].Length, actual[0].Length);
        Assert.AreEqual(input[1].Length, actual[1].Length);
        Assert.AreEqual(input[2].Length, actual[2].Length);
        Assert.AreEqual(input[3].Length, actual[3].Length);
    }

    [Test]
    public void EmptyField_GeneratesEmptyField()
    {
        string[] input = new String[] {
            "........",
            "........",
            "........",
            "........",
        };

        var actual = Life.NextGeneration(input);

        string[] expected = new String[] {
            "........",
            "........",
            "........",
            "........",
        };

        Assert.IsTrue(GridsAreEqual(expected, actual));
    }

    [Test]
    public void GridWith1Living0Neighbours_GeneratesEmptyField()
    {
        string[] input = new String[] {
            "........",
            "..x.....",
            "........",
            "........",
        };

        var actual = Life.NextGeneration(input);

        string[] expected = new String[] {
            "........",
            "........",
            "........",
            "........",
        };

        Assert.IsTrue(GridsAreEqual(expected, actual));
    }

    [Test]
    public void GridWith3Rows_Return3Rows()
    {
        string[] input = new String[] {
            "........",
            "........",
            "........",
        };

        var actual = Life.NextGeneration(input);

        string[] expected = new String[] {
            "........",
            "........",
            "........",
        };

        Assert.IsTrue(GridsAreEqual(expected, actual));
    }

    [Test]
    public void GridWith7Columns_Return7Columns()
    {
        string[] input = new String[] {
            ".......",
            ".......",
            ".......",
        };

        var actual = Life.NextGeneration(input);

        string[] expected = new String[] {
            ".......",
            ".......",
            ".......",
        };

        Assert.IsTrue(GridsAreEqual(expected, actual));
    }

    [Test]
    public void GridWith1Living_ReturnEmptyGrid()
    {
        string[] input = new String[] {
            "........",
            "...x....",
            "........",
            "........",
        };

        var actual = Life.NextGeneration(input);

        string[] expected = new String[] {
            "........",
            "........",
            "........",
            "........",
        };

        Assert.IsTrue(GridsAreEqual(expected, actual));
    }

    [Test]
    public void GridWith3Living_Return3LivingInGrid()
    {
        string[] input = new String[] {
            "...x....",
            "...x....",
            "...x....",
            "........",
        };

        var actual = Life.NextGeneration(input);

        string[] expected = new String[] {
            "........",
            "..xxx...",
            "........",
            "........",
        };

        Assert.IsTrue(GridsAreEqual(expected, actual));
    }

    [Test]
    public void GridWith3LivingAlignedInRow_Return3LivingInGrid()
    {
        string[] input = new String[] {
            "........",
            "..xxx...",
            "........",
            "........",
        };

        var actual = Life.NextGeneration(input);

        string[] expected = new String[] {
            "...x....",
            "...x....",
            "...x....",
            "........",
        };

        Assert.IsTrue(GridsAreEqual(expected, actual));
    }
    
    [Test]
    public void CellWith4Neighbours_Dies()
    {
        string[] input = new String[] {
            "...x....",
            "..xxx...",
            "...x....",
            "........",
        };

        var actual = Life.NextGeneration(input);

        string[] expected = new String[] {
            "..xxx...",
            "..x.x...",
            "..xxx...",
            "........",
        };

        Assert.IsTrue(GridsAreEqual(expected, actual));
    }

    [Test]
    public void CellWith3Or4Neighbours_WillLiveForever()
    {
        string[] input = new String[] {
            "...xxx..",
            "........",
            "...xx...",
            "...xx...",
        };

        var actual = Life.NextGeneration(input);

        string[] expected = new String[] {
            "....x...",
            ".....x..",
            "...xx...",
            "...xx...",
        };

        Assert.IsTrue(GridsAreEqual(expected, actual));
    }

        [Test]
    public void DeadCellWith3Neighbours_WillLiveResurect()
    {
        string[] input = new String[] {
            "...xxx..",
            "........",
            "........",
            "........",
        };

        var actual = Life.NextGeneration(input);

        string[] expected = new String[] {
            "....x...",
            "....x...",
            "........",
            "........",
        };

        Assert.IsTrue(GridsAreEqual(expected, actual));
    }


    private bool GridsAreEqual(string[] expected, string[] actual)
    {
        Assert.IsNotNull(expected);
        Assert.IsNotNull(actual);
        Assert.AreEqual(expected.Length, actual.Length);
        for (int i = 0; i < expected.Length; i++) 
        {
            Assert.AreEqual(expected[i], actual[i]);
        }
        return true;

    }
}

