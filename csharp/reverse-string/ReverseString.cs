﻿using System;
using System.Collections.Generic;

public static class ReverseString
{
    public static string Reverse(string input)
    {
        char[] inputArray = input.ToCharArray();
        Array.Reverse(inputArray);

        return new String(inputArray);
    }   
}