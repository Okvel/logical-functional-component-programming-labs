using System;
using System.Runtime.InteropServices;

namespace lab3
{
    [ComVisible(true)]
    [Guid("6BF23DAE-D5E2-48AA-8815-BB4F451CF91B")]
    [ClassInterface(ClassInterfaceType.None)]
    public class ComClass : IComInterface
    {
        public ComClass() { }

        public float Sum(float a, float b)
        {
            return a + b;
        }

        public float Sub(float a, float b)
        {
            return a - b;
        }

        public float Mul(float a, float b)
        {
            return a * b;
        }

        public float Div(float a, float b)
        {
            return a / b;
        }
    }
}
