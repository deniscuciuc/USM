namespace LabsAndHomeworks.homework1;

public class DrawingConsole
{
    public void Draw()
    {
        for (var i = 10; i > 0; i--)
        {
            Console.ForegroundColor = i % 2 == 0 ? ConsoleColor.Blue : ConsoleColor.Red;

            for (var j = i + 1; j < 10; j++) 
                Console.Write("*");

            Console.WriteLine("");
        }
    }
}