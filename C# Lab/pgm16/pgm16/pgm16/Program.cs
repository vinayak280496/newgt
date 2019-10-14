using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace pgm16
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Argument length: " + args.Length);
            Console.WriteLine("Given Arguments are:");
            foreach (Object obj in args)
            {
                Console.WriteLine(obj);
            }
            Console.ReadLine();
        }
    }
}
