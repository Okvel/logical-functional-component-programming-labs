using System;
using System.Runtime.InteropServices;

namespace lab3
{
    [ComVisible(true)]
    [Guid("2657A5E6-D2C9-47D1-8A00-41B17C2F3B63")]
    [InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
    public interface IComInterface
    {
        float Sum(float a, float b);
        float Sub(float a, float b);
        float Mul(float a, float b);
        float Div(float a, float b);
    }
}
