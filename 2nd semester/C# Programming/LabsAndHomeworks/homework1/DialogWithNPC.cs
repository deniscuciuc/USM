namespace LabsAndHomeworks.homework1;

public class DialogWithNPC
{
    public void RunDialog()
    {
        Console.Write("Enter you name to get greetings from elf : ");
        var name = Console.ReadLine();
        
        Console.Write("Also your current level: ");
        var level = Convert.ToInt32(Console.ReadLine());

        var currentPlayer = new Player(name, level);

        Console.ForegroundColor = ConsoleColor.Blue;
        Console.Write("Dobby: ");
        Console.ForegroundColor = ConsoleColor.White;
        var greetings = " Hi traveler. I know who you are. Glory runs ahead of you \n" +
                           "My name is Dobby, I'm elf, and your name is " + name +
                           ".\nI have one quest for you but I need to know what lvl do you have.";
        Console.WriteLine(greetings);
        
        Console.ForegroundColor = ConsoleColor.Blue;
        Console.Write("You:");
        Console.ForegroundColor = ConsoleColor.White;
        Console.Write(" My current level is " + currentPlayer.Level);
        

        if (level < 7)
        {
            Console.WriteLine("Your level is too low. You need at least level 7 to be able to help me.");
        }
        else
        {
            Console.WriteLine("I need you to go to the troll cave and bring me whatever magic rings you find.\n" +
                              "You can keep the rest treasures.");
        }
    }
}