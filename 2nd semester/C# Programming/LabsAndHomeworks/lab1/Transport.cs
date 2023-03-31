namespace LabsAndHomeworks.lab1;

public class Transport
{
    // Required fields
    private int numberOfPassengers;
    private List<int> weightOfEachPassenger;

    // Optional fields
    private TransportType transportType;
    private int maxSpeed;
    private int age;
    private int weight;

    public static int NumberOfTransports = 0;

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

    public void DisplayInfo()
    {
        Console.WriteLine("Transport info:");
        Console.WriteLine("Number of passengers: " + numberOfPassengers);

        if (weightOfEachPassenger.Count > 0)
        {
            Console.WriteLine("Weight of each passenger: {");

            foreach (var weight in weightOfEachPassenger)
            {
                Console.Write(" " + weight + ",");
            }

            Console.Write("}");
        }

        Console.WriteLine("Transport type: " + transportType);
        Console.WriteLine("Max speed: " + maxSpeed);
        Console.WriteLine("Age: " + age);
        Console.WriteLine("Weight: " + weight);
    }

    public void SetFieldsByConsoleInput()
    {
        Console.WriteLine("Entering data for this transport...");

        do
        {
            Console.Write("Enter number of passengers: ");
            numberOfPassengers = Convert.ToInt32(Console.ReadLine());
            
            if (numberOfPassengers < 0)
                Console.WriteLine("ERROR : Number of passengers can't be negative");
            
        } while (numberOfPassengers < 0);


        Console.WriteLine("Entering weight for each passenger...");

        weightOfEachPassenger = new List<int>();
        for (var i = 0; i < numberOfPassengers; i++)
        {
            Console.Write(i + ". Type weight: ");
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
    }
}