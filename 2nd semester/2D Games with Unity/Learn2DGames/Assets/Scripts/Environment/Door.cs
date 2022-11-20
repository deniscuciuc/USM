using UnityEngine;

public class Door : MonoBehaviour
{
    [SerializeField] private Transform previousRoom;
    [SerializeField] private Transform nextRoom;
    [SerializeField] private CameraController cameraController;

    private void OnTriggerEnter2D(Collider2D col)
    {
        if (col.CompareTag("Player"))
        {
            cameraController.MoveToNewRoom(
                col.transform.position.x < transform.position.x ? nextRoom : previousRoom
            );
        }
    }
}