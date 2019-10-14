using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace pgm14
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] arr = new int[5];
            Console.WriteLine("Enter 5 array values");
            for(int i=0;i<5;i++)
            {
                //Console.WriteLine(i);
                arr[i] = int.Parse(Console.ReadLine());
            }
            Array.Sort(arr); 
            Array.Reverse(arr);  
            Console.WriteLine("First Highest Value In Array " + arr[0]);

            foreach (var result in arr)
            {
                Console.Write(result + " ");
            }
            Console.ReadLine();
        }
    }
}
