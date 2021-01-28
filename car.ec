/*
MIT License

Copyright (c) 2021 Jean-Jacques François Reibel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

import "ecere"

class Car
{
public:
   int wheels;
   int doors;
   int cylinders;

   void addWheels(int wheelsIn){
      wheels += wheelsIn;
   }

   void addDoors(int doorsIn){
      doors += doorsIn;
   }

   void addCylinders(int cylindersIn){
      cylindersI += cylindersIn;
   }

   void deleteWheels(int wheelsIn){
      wheels -= wheelsIn;
   }

   void deleteDoors(int doorsIn){
      doors -= doorsIn;
   }

   void deleteCylinders(int cylindersIn){
      cylindersI -= cylindersIn;
   }

   void printInfo()
   {
      PrintLn("Wheel check: ", wheels);
      PrintLn("Door check: ", doors);
      PrintLn("Cylinder check: ", cylinders);
   }
}

void Main()
{
   PrintLn("Creating car.");
   Car subaru { wheels = 4, doors = 4, cylinders = 4 };
   PrintLn("Adding wheel directly to car object.");
   subaru.wheels += 1;
   subaru.printInfo();
   PrintLn("Removing wheel using object method.");
   subaru.deleteWheels(1);
   subaru.printInfo();
}