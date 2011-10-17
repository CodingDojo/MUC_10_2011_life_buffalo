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
        int numberOfNeighbours = GetNumberOfNeighbours(row, column, grid);
        
        if(grid[i][j] == "x")
        {
            if(numberOfNeighbours < 2)
            {
                return ".";
            }
            else{
                return "x";
            }
        }
        return ".";  

        

    }

    public static int GetNumberOfNeighbours(int row, int column, String[] grid)
    {
        int result = 0;

        for (int i = -1; i <=1; i++)
        {
            if (i == 0)
            {
                continue;
            }
            int y = row + i;
            if (y < 0)
            {
                continue;
            }
            if (y >= grid.Length)
            {
                continue;
            }
            if (grid[y][column] == "x")
            {
                result++;
            }
         }

        return result;
    }
}
