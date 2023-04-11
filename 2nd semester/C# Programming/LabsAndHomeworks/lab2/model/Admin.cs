

public class Admin : User
{
    private int _lazyLevel;
    private int _iq;
    private int _salary;

    public Admin() : base() { }

    public Admin(int lazyLevel, int iq, int salary, List<string> permissions, int height, EyeColor eyeColor, float weight, Gender gender)
        : base(permissions, height, eyeColor, weight, gender)
    {
       _lazyLevel = (lazyLevel > 10 || lazyLevel < 0) ? 0 : lazyLevel;
       _iq = (iq > 150 || iq < 0) ? 10 : iq; ;
       _salary = salary;
    }

    public int LazyLevel 
    { 
        get { return _lazyLevel; } 
        set { _lazyLevel = value; }
    }
    public int IQ 
    { 
        get { return _iq;} 
        set { _iq = value; }
    }
    public int Salary 
    { 
        get { return _salary;} 
        set { _salary = value; }
    }

    public override void DisplayInfo()
    {
        Console.WriteLine("\n--------Admin info--------");
        Console.WriteLine("Height: " + Height);
        Console.WriteLine("Eye color: " + EyesColor.ToString());
        Console.WriteLine("Weight: " + Weight);
        Console.WriteLine("Gender: " + HumanGender.ToString());
        Console.WriteLine("Permissions: " + Permissions.ToString());
        Console.WriteLine("Lazy level: " + _lazyLevel);
        Console.WriteLine("IQ : " + _iq);
        Console.WriteLine("Salary : " + _salary);
    }

    public void RemovePermissionsFromUser(User user)
    {
       user.Permissions.Clear();
    }

    public Admin CreateNewAdminFromTwoAdmins(Admin admin, List<string> permissions, int height, EyeColor eyeColor, float weight, Gender gender)
    {
        int newAdminLazyLevel = getIntAverageFromTwoValues(admin.LazyLevel, _lazyLevel);
        int newAdminIQ = getIntAverageFromTwoValues(admin.IQ, _iq);
        int newAdminSalary = getIntAverageFromTwoValues(admin.Salary, _salary);

        return new Admin(newAdminLazyLevel, newAdminIQ,  newAdminSalary, permissions, height, eyeColor, weight, gender);
    }

    private int getIntAverageFromTwoValues(int value1, int value2)
    {
        return (value1 + value2) / 2;
    }
}
