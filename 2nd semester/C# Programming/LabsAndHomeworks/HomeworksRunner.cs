using LabsAndHomeworks.homework1;

namespace LabsAndHomeworks;

public class HomeworksRunner
{
    public static void Main(string[] args)
    {
        // Homework1(); // Homework 1: drawing something colorful in console and dialog with npc (2/9/2023)
        // Lab1(); // Lab 1: task with transports
        Lab1And3();
    }

    private static void Homework1()
    {
        // Task 1: Drawing something colorful in console
        var drawingConsole = new DrawingConsole();
        drawingConsole.Draw();

        Console.ForegroundColor = ConsoleColor.White;
        Console.WriteLine("\n \n");
        
        
        // Task 2: Enter data and speak with npc
        var dialogWithNpc = new DialogWithNPC();
        dialogWithNpc.RunDialog();
    }

    private static void Lab1And3()
    {
        Lab1Transports lab1Transports = new Lab1Transports();
        lab1Transports.RunLab();
    }

    private static void Lab2()
    {
        // cant be implemented because of document edited
    }
}