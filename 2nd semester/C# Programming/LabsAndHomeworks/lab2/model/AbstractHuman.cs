

public abstract class AbstractHuman
{

    public enum EyeColor
    {
        BLUE, GREEN, BROWN
    }
    public enum Gender
    {
        MALE, FEMALE
    }


    private int _height;
    private EyeColor _eyesColor;
    private float _weight;
    private Gender _humanGender;

    public AbstractHuman()
    {
        _height = new Random().Next(20, 250);
        _eyesColor = (EyeColor) new Random().Next(0, 2);
        _weight = (float) new Random().Next(40, 145);
        _humanGender = (Gender) new Random().Next(1);
    }

    public AbstractHuman(int height, EyeColor eyeColor, float weight, Gender gender)
    {
        _height = height;
        _eyesColor = eyeColor;
        _weight = weight;
        _humanGender = gender;
    }

    public int Height { get { return _height; } }
    
    public EyeColor EyesColor { get { return _eyesColor; } }

    public float Weight { get { return _weight; } }

    public Gender HumanGender { get { return _humanGender; } }


    public abstract void saveDataInFile();

    public virtual void DisplayInfo()
    {
        Console.WriteLine("\n--------Human info--------");
        Console.WriteLine("Height: " + _height);
        Console.WriteLine("Eye color: " + _eyesColor.ToString());
        Console.WriteLine("Weight: " + _weight);
        Console.WriteLine("Gender: " + _humanGender.ToString());
    }
}
