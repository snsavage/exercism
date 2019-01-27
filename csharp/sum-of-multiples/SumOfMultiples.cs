using System;
using System.Collections.Generic;
using System.Linq;

public static class SumOfMultiples
{
    public static int Sum(IEnumerable<int> multiples, int max)
    {
        var divisibleByMultiple = new List<int>(); 

        for (int i = 0; i < max; i++)
        {
            foreach(var multiple in multiples)
            {
                if (i % multiple == 0)
                {
                    if (!divisibleByMultiple.Contains(i))
                    {
                        divisibleByMultiple.Add(i);
                    }
                }
            }
        }

        var result = 0;
        foreach(var j in divisibleByMultiple)
        {
            result = result + j;
        }

        return result;
    }
}
