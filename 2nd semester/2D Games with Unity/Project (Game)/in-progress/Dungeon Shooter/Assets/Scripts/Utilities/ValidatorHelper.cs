using System.Collections;
using UnityEngine;

public static class ValidatorHelper
{
    public static bool IsEmptyString(Object thisObject, string fieldName, string stringValue)
    {
        if (stringValue.Equals(""))
        {
            Debug.Log(fieldName + " is empty and must contain a value in object " + thisObject.name);
            return true;
        }

        return false;
    }

    /**
     * Method validates number of enumerable values.
     * If field name has null values in object or if no values returns true. Else returns false
     */
    public static bool ValidateCheckNumberEnumerableValues(Object thisObject, string fieldName,
        IEnumerable enumerableObjectToCheck)
    {
        bool error = false;
        int count = 0;

        foreach (var item in enumerableObjectToCheck)
        {
            if (item == null)
            {
                Debug.Log(fieldName + " has null values in object " + thisObject.name);
                error = true;
            }
            else
            {
                count++;
            }
        }

        if (count == 0)
        {
            Debug.Log(fieldName + " has no values in object " + thisObject.name);
            error = true;
        }

        return error;
    }
}