using System;

public class Life
{
    public const char liveCellSymbol = 'x';
    public const char deadCellSymbol = '.';    

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
        
        if(IsAlive(grid[row][column]))
        {
            if(numberOfNeighbours < 2)
            {
                return deadCellSymbol;
            }
            else if(numberOfNeighbours > 3)
            {
                return deadCellSymbol;
            }
            else{
                return liveCellSymbol;
            }
        }
        else {
            if(numberOfNeighbours == 3)
            {
                return liveCellSymbol;
            }
        }

        return deadCellSymbol;  
    }

    public static int GetNumberOfNeighbours(int row, int column, String[] grid)
    {
        int result = 0;

        for (int i = -1; i <=1; i++)
        {
            for (int j= -1; j<= 1; j++)
            {
                if (i == 0 && j==0)
                {
                    continue;
                }
                int y = row + i;
                int x = column+ j;
                if (y < 0)
                {
                    continue;
                }
                if (y >= grid.Length)
                {
                    continue;
                }
                if (x < 0)
                {
                    continue;
                }
                if (x >= grid[y].Length)
                {
                    continue;
                }
                if (IsAlive(grid[y][x]))
                {
                    result++;
                }
            }
         }

        return result;
    }

    public bool IsAlive(char cellSymbol)
    {
        return cellSymbol == liveCellSymbol;
    }
}
