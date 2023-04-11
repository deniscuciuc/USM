using LabsAndHomeworks.lab1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public class Lab1Transports
{
    public void RunLab()
    {
        // todo: create lab 1 class to run all this after finishing

        List<Transport> transports = new List<Transport>();
        transports.Add(new Transport());
        transports.Add(new Transport(
            5, new List<int> { 56, 65, 75, 85, 95 },
            TransportType.CAR, 160, 20, 780)
            );
        transports.Add(new Transport(3, new List<int> { 56, 64, 80 }));

        foreach (var transport in transports)
            transport.DisplayInfo();

        // 1. After display generate random values for all transports
        foreach (var transport in transports)
            transport.GenerateRandomValues();

        Console.WriteLine("\n\n\n ****** AFTER RANDOM GENERATING OF VALUES ****** \n\n\n");
        foreach (var transport in transports)
            transport.DisplayInfo();


        Console.WriteLine("\n\n\n ****** GETTING VALUES FROM CONSOLE FOR LAST ELEMENT ****** \n\n\n");

        // 2. Last transport in list change values to inserted from console
        transports.Last().SetFieldsByConsoleInput();

        // 3. Display last transport
        transports.Last().DisplayInfo();

        Console.WriteLine("\n\n\n ****** COMPARING OBJECTS ****** \n\n\n");

        // 4. Compare two objects from transport by EqualsByNrOfPassengers
        Console.Write("Result of comparing first and last transport by number of passengers : " +
            "\nThey are equals = " + transports.First()
            .EqualsByNumberOfPassengers(transports.Last().NumberOfPassengers));

        // 5. Display transport with most weight
        displayTansportHeaviestTransport(transports);

        // 6. display number of created transports
        Console.WriteLine("\n\nNumber of created transports: " + Transport.NumberOfTransports);
    }


    private void displayTansportHeaviestTransport(List<Transport> transports)
    {
        Transport heaviestTransport = transports.First();
        foreach (var transport in transports)
        {
            if (transport.Weight > heaviestTransport.Weight)
                heaviestTransport = transport;
        }
        Console.WriteLine("\n\n\n ----Heaviest transport INFO----");
        heaviestTransport.DisplayInfo();
    }
}
