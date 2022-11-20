using UnityEngine;

public class HealthCollectible : MonoBehaviour
{
    [SerializeField] private float _givenHealth;

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.tag == "Player")
        {
            collision.GetComponent<Health>().addHealth(_givenHealth);
            gameObject.SetActive(false);
        }
    }
}
