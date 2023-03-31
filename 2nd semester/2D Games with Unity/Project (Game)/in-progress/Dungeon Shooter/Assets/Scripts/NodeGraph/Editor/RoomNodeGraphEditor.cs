using UnityEditor;
using UnityEngine;

public class RoomNodeGraphEditor : EditorWindow
{
    private const string RoomNodeGraphEditorWindowTitle = "Room Node Graph Editor";
    private const string WindowPath = "Window/Dungeon Editor/";

    /* GUI Styles for room node graph editor window */
    private GUIStyle _guiStyle;
    private const float NodeWidth = 160f;
    private const float NodeHeight = 75f;
    private const int NodePadding = 25;
    private const int NodeBorder = 12;


    [MenuItem(RoomNodeGraphEditorWindowTitle, menuItem = WindowPath + RoomNodeGraphEditorWindowTitle)]
    private static void OpenWindow()
    {
        GetWindow<RoomNodeGraphEditor>(RoomNodeGraphEditorWindowTitle);
    }

    private void OnEnable()
    {
        _guiStyle = new GUIStyle
        {
            normal =
            {
                background = EditorGUIUtility.Load("node1") as Texture2D,
                textColor = Color.white
            },
            padding = new RectOffset(NodePadding, NodePadding, NodePadding, NodePadding),
            border = new RectOffset(NodeBorder, NodeBorder, NodeBorder, NodeBorder)
        };
    }


    private void OnGUI()
    {
        DrawNode(100f, 100f, "Node 1");
        DrawNode(300f, 300f, "Node 2");
    }

    private void DrawNode(float x, float y, string nodeName)
    {
        GUILayout.BeginArea(
            new Rect(new Vector2(x, y), new Vector2(NodeWidth, NodeHeight)),
            _guiStyle
        );
        EditorGUILayout.LabelField(nodeName);
        GUILayout.EndArea();
    }
}