

public class Boss : Admin
{
    private int _numberOfSubordinates;
    private List<int> _iqOfAllSubordinates;

    public Boss() : base() { }

    public Boss(int numberOfSubordinates, List<int> iqOfAllSubordinates, int lazyLevel, int iq, int salary,
        List<string> permissions, int height, EyeColor eyeColor, float weight, Gender gender) 
        : base(lazyLevel, iq, salary, permissions, height, eyeColor, weight, gender)
    {
        _numberOfSubordinates = numberOfSubordinates;
        _iqOfAllSubordinates = iqOfAllSubordinates;
    }

    public int NumberOfSubordinates 
    {
        get { return _numberOfSubordinates; } 
        set { _numberOfSubordinates = value;}
    }

    public List<int> IqSubordinates 
    { 
        get { return _iqOfAllSubordinates; } 
        set { _iqOfAllSubordinates= value; }
    }

    public override void DisplayInfo()
    {
        Console.WriteLine("\n--------Boss info--------");
        Console.WriteLine("Height: " + Height);
        Console.WriteLine("Eye color: " + EyesColor.ToString());
        Console.WriteLine("Weight: " + Weight);
        Console.WriteLine("Gender: " + HumanGender.ToString());
        Console.WriteLine("Permissions: " + Permissions.ToString());
        Console.WriteLine("Lazy level: " + LazyLevel);
        Console.WriteLine("IQ : " + IQ);
        Console.WriteLine("Salary : " + Salary);
        Console.WriteLine("Number of subordinates: " + NumberOfSubordinates);
        Console.WriteLine("Iq of all subordinates: " + IqSubordinates.ToString());
    }

    public void increaseOrDecreaseAdminSalary(Admin admin)
    {

    }
}
