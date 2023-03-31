using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "RoomNodeGraph", menuName = "Scriptable Objects/Dungeon/Room Node Graph")]
public class RoomNodeGraphSO : ScriptableObject
{
    private RoomNodeTypeListSO RoomNodeTypeListSo { get; set; }

    private List<RoomNodeSO> RoomNodes { get; set; } = new List<RoomNodeSO>();

    private Dictionary<string, RoomNodeSO> RoomNodeDictionary { get; set; } = new Dictionary<string, RoomNodeSO>();
}