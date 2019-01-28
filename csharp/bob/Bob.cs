using System;
using System.Linq;

public static class Bob
{
    private static class Responses {
        public static string Question = "Sure.";
        public static string Shouting = "Whoa, chill out!";
        public static string Indifferent = "Whatever.";
        public static string Nonesense = "Fine. Be that way!";
        public static string ShoutingQuestion = "Calm down, I know what I'm doing!";
    }

    public static string Response(string statement)
    {
        statement = statement.Trim();

        if(statement == "") { return Responses.Nonesense; }        

        if(AllCaps(statement) && EndsWithQuestion(statement)) { return Responses.ShoutingQuestion; }
        if(AllCaps(statement)) { return Responses.Shouting; }
        if(EndsWithQuestion(statement)) { return Responses.Question; }
        if(Empty(statement)) { return Responses.Nonesense; }

        return Responses.Indifferent;
    }

    private static bool EndsWithQuestion(string statement)
    {
        return statement[statement.Length - 1] == '?';
    }

    private static bool Empty(string statement)
    {
        foreach(char i in statement) {
            if(char.IsLetterOrDigit(i)) {
                return false;
            }
        }

        return true;
    }

    private static bool AllCaps(string statement)
    {
        string testStatement = "";
        foreach(char i in statement) {
            if(char.IsLetter(i)) {
                testStatement += i;
            }
        }

        if(testStatement == ""){
            return false;
        }

        return testStatement.All(char.IsUpper);
    }
}