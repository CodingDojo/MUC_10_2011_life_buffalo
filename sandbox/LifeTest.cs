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
}

