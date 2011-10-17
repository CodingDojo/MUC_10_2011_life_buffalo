using System;
using NUnit.Framework;

[TestFixture]
public class LifeTest
{
    [Test]
    public void EmptyField_ReturnsEmptyResult()
    {
        string[] expected = null;
        int actual = Life.NextGeneration(null);
        Assert.AreEqual(expected, actual);
    }
}

