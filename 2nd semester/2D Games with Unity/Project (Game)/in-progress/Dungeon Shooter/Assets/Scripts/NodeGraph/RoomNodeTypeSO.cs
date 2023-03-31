using UnityEngine;


[CreateAssetMenu(fileName = "RoomNodeType_", menuName = "Scriptable Objects/Dungeon/Room Node Type")]
public class RoomNodeTypeSO : ScriptableObject
{
    public string roomNodeTypeName;

    #region Header

    [Header("Only flag the RoomNodeTypes that should be visible in the editor")]
    public bool displayInNodeGraphEditor = true;

    #endregion Header

    #region Header

    [Header("One type should be a Corridor")]
    public bool isCorridor;

    #endregion

    #region Header

    [Header("One type should be a CorridorNs")]
    public bool isCorridorNs;

    #endregion

    #region Header

    [Header("One type should be a CorridorEw")]
    public bool isCorridorEw;

    #endregion

    #region Header

    [Header("One type should be an Entrance")]
    public bool isEntrance;

    #endregion

    #region Header

    [Header("One type should be a Boss Room")]
    public bool isBossRoom;

    #endregion

    #region Header

    [Header("One type should be None (Unassigned")]
    public bool isNone;

    #endregion


#if UNITY_EDITOR
    private void OnValidate()
    {
        ValidatorHelper.IsEmptyString(this, nameof(roomNodeTypeName), roomNodeTypeName);
    }
#endif
}