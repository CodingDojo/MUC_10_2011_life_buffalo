using System;

public class Life
{
    public static string[] NextGeneration(string[] inputField)
    {
        if(inputField == null)
        {
            return null;
        }

        var result = new String[inputField.Length];

        for(int i=0; i < inputField.Length; i++)
        {
            string resultRow = "";
            
            for(int j=0; j < inputField[i].Length; j++)
            {
                resultRow  += GetNewCellGeneration(i, j, inputField);
            }
            result[i] = resultRow;
        }

        return result;
    
    }

    public static string GetNewCellGeneration(int row, int column, String[] grid)
    {
        return ".";

    }
}
