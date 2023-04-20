using System.Runtime.CompilerServices;

namespace LabsAndHomeworks.lab1;

public class Transport
{
    // Required fields
    private int numberOfPassengers;
    private List<int> weightOfEachPassenger { get; set; }

    // Optional fields
    private TransportType transportType { get; set; }
    private int maxSpeed { get; set; }
    private int age { get; set; }
    private int weight;

    public static int NumberOfTransports = 0;

    public int NumberOfPassengers
    {
        get { return numberOfPassengers; }

        set { numberOfPassengers = value; }
    }

    public int Weight
    {
        get { return weight; }
        set { weight = value; }
    }

    public Transport()
    {
        numberOfPassengers = 0;
        weightOfEachPassenger = new List<int>();
        NumberOfTransports++;
    }

    public Transport(int numberOfPassengers, List<int> weightOfEachPassenger,
        TransportType transportType, int maxSpeed, int age, int weight)
    {
        this.numberOfPassengers = numberOfPassengers;
        this.weightOfEachPassenger = weightOfEachPassenger;
        this.transportType = transportType;
        this.maxSpeed = maxSpeed;
        this.age = age;
        this.weight = weight;
        NumberOfTransports++;
    }

    public Transport(int numberOfPassengers, List<int> weightOfEachPassenger)
    {
        this.numberOfPassengers = numberOfPassengers;
        this.weightOfEachPassenger = weightOfEachPassenger;
        NumberOfTransports++;
    }

    public Transport(Transport transport)
    {
        this.numberOfPassengers = transport.numberOfPassengers;
        this.weightOfEachPassenger = transport.weightOfEachPassenger;
        this.transportType = transport.transportType;
        this.maxSpeed = transport.maxSpeed;
        this.age = transport.age;
        this.weight = transport.weight;
    }

    public void DisplayInfo()
    {
        Console.WriteLine("\n--------Transport info--------");
        Console.WriteLine("Number of passengers: " + numberOfPassengers);

        if (weightOfEachPassenger.Count > 0)
        {
            Console.Write("Weight of each passenger: ");

            foreach (var weight in weightOfEachPassenger)
            {
                Console.Write(" " + weight + " ");
            }
        }

        Console.WriteLine("\nTransport type: " + transportType);
        Console.WriteLine("Max speed: " + maxSpeed);
        Console.WriteLine("Age: " + age);
        Console.WriteLine("Weight: " + weight);
    }

    public void GenerateRandomValues()
    {
        numberOfPassengers = new Random().Next(1, 50);

        weightOfEachPassenger = new List<int>();
        for (int i = 0; i < numberOfPassengers; i++)
            weightOfEachPassenger.Add(new Random().Next(1, 120));

        transportType = (TransportType) new Random().Next(2);
        maxSpeed = new Random().Next(30, 170);
        age = new Random().Next(0, 20);
        weight = new Random().Next(1000, 10_000);
    }

    public int GetTotalWeightOfPassengers()
    {
        int sum = 0;

        foreach (var weight in weightOfEachPassenger)
            sum += weight;

        return sum;
    }

    public bool EqualsByNumberOfPassengers(int numberOfPassengers)
    {
        return numberOfPassengers.Equals(this.numberOfPassengers);
    }

    public void SetFieldsByConsoleInput()
    {
        Console.WriteLine("Entering data for this transport...");

        numberOfPassengers = GetPositiveIntFromConsole("Enter number of passengers: ");


        if (numberOfPassengers > 0)
            Console.WriteLine("Entering weight for each passenger...");

        weightOfEachPassenger = new List<int>();
        for (var i = 0; i < numberOfPassengers; i++)
        {
            int correctNumber = i + 1;
            Console.Write(correctNumber + ". Type weight: ");
            var passengerWeight = Convert.ToInt32(Console.ReadLine());

            if (passengerWeight <= 0)
            {
                Console.WriteLine("ERROR : Weight cant be 0 or negative");
                i--;
            }
            else
            {
                weightOfEachPassenger.Add(passengerWeight);
            }
        }

        maxSpeed = GetPositiveIntFromConsole("Enter max speed: ");
        age = GetPositiveIntFromConsole("Enter age: ");
        weight = GetPositiveIntFromConsole("Enter weight: ");
    }

    private int GetPositiveIntFromConsole(string inputText)
    {
        int positiveNumber;
        do
        {
            Console.Write(inputText);
            positiveNumber = Convert.ToInt32(Console.ReadLine());
            try
            {

                if (positiveNumber < 0)
                    throw new NegativeIntegerException("ERROR : This type of value can't be negative. Try again");
            }
            catch (NegativeIntegerException e)
            {
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine("\n\n" + e.Message);
                Console.WriteLine(e.StackTrace + "\n\n");
                Console.ForegroundColor = ConsoleColor.White;
            }

        } while (positiveNumber < 0);

        return positiveNumber;
    }
}