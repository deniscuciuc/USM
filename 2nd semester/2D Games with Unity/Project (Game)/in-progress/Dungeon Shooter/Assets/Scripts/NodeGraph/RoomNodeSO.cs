using System.Collections.Generic;
using UnityEngine;

public class RoomNodeSO : ScriptableObject
{
    [SerializeField] private RoomNodeTypeSO roomNodeTypeSo;

    private string ID { get; set; }

    public List<string> ParentRoomNodeIDList { get; set; } = new List<string>();

    public List<string> ChildRoomNodeIDList { get; set; } = new List<string>();

    public RoomNodeGraphSO RoomNodeGraphSo { get; set; }

    public RoomNodeTypeListSO RoomNodeTypeListSo { get; set; }
}