using UnityEditor;
using UnityEngine;

public class Enemy_Sideways : MonoBehaviour
{
    [SerializeField] private float _movementDistance;
    [SerializeField] private float _speed;
    [SerializeField] private float _damage;

    private bool movingleft;
    private float leftEdge;
    private float rightEdge;

    private void Awake()
    {
        leftEdge = transform.position.x - _movementDistance;
        rightEdge = transform.position.x + _movementDistance;
    }

    private void Update()
    {
        if (movingleft)
        {
            if (transform.position.x > leftEdge)
            {
                transform.position = new Vector3(transform.position.x - _speed * Time.deltaTime, transform.position.y, transform.position.z);
            }
            else
                movingleft = false;
        }
        else
        {
            if (transform.position.x < rightEdge)
            {
                transform.position = new Vector3(transform.position.x + _speed * Time.deltaTime, transform.position.y, transform.position.z);
            }
            else
                movingleft = true;
        }
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.tag == "Player")
        {
            collision.GetComponent<Health>().TakeDamage(_damage);
        }
    }
}
