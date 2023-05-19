using LabsAndHomeworks.lab1;

public class Lab4
{
    private List<Transport> transports = new List<Transport>();

    public void launch()
    {
        FindIn2DArrayByTask();

        Transport trasportWithMaxPassengers = transports.First();

        for (int i = 0; i < transports.Count; i++) 
        { 
            if(trasportWithMaxPassengers.NumberOfPassengers < transports[i].NumberOfPassengers)
            {
                trasportWithMaxPassengers = transports[i];
            }
        }

        Console.WriteLine("\n\nResult (transport with biggest passengers count in 2d array): ");
        trasportWithMaxPassengers.DisplayInfo();
    }


    private void FindIn2DArrayByTask()
    {
        Transport[,] transports2D = new Transport[4, 4];
        populate2DArrayOfTransports(transports2D);


        Thread t1Column1 = new Thread(() =>
        {
            findMaxTransportByPassengersCountAndAddInList(transports2D, 0);
        });

        Thread t2Column2 = new Thread(() =>
        {
            findMaxTransportByPassengersCountAndAddInList(transports2D, 1);
        });

        Thread t3Column3 = new Thread(() =>
        {
            findMaxTransportByPassengersCountAndAddInList(transports2D, 2);
        });

        Thread t4Column4 = new Thread(() =>
        {
            findMaxTransportByPassengersCountAndAddInList(transports2D, 3);
        });

        t1Column1.Start();
        t2Column2.Start();
        t3Column3.Start();
        t4Column4.Start();
    }


    private void populate2DArrayOfTransports(Transport[,] transportsToPopulate)
    {
        for (int row = 0; row < 4; row++)
        {
            for (int column = 0; column < 4; column++)
            {
                transportsToPopulate[row, column] = new Transport();
                transportsToPopulate[row, column].GenerateRandomValues();
                Console.WriteLine("\n+ Added new transport in the 2d array");
                transportsToPopulate[row, column].DisplayInfo();
            }
        }
    }


    private void findMaxTransportByPassengersCountAndAddInList(Transport[,] transportsWhereToFind, int row)
    {
        Transport transportWithMaxValue = transportsWhereToFind[row, 0];
        for(int column = 0; column < 4; column++)
        {
            if (transportWithMaxValue.NumberOfPassengers < transportsWhereToFind[row, column].NumberOfPassengers)
            {
                transportWithMaxValue = transportsWhereToFind[row, column];
            }
        }
        transports.Add(transportWithMaxValue);
    }
}
