
public class User : AbstractHuman
{

    private List<string> _permissions = new List<string>();

    public User() : base() { }

    public User(List<string> permissions, int height, EyeColor eyeColor, float weight, Gender gender) 
        : base(height, eyeColor, weight, gender)
    {
        _permissions = permissions;
    }

    public List<string> Permissions
    { 
        get { return _permissions; }
        set { _permissions = value; }
    }

    public override void saveDataInFile()
    {
        File.WriteAllText(@"A:\Repositories\USM\2nd semester\C# Programming\LabsAndHomeworks\lab2\data\users.txt", this.ToString());
        Console.WriteLine("User saved to file.");
    }


    public override void DisplayInfo()
    {
        Console.WriteLine("\n--------User info--------");
        Console.WriteLine("Height: " + Height);
        Console.WriteLine("Eye color: " + EyesColor.ToString());
        Console.WriteLine("Weight: " + Weight);
        Console.WriteLine("Gender: " + HumanGender.ToString());
        Console.WriteLine("Permissions: " + _permissions.ToString());
    }
}
