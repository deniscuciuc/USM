using UnityEngine;

public class Health : MonoBehaviour
{
    [SerializeField] private float startingHealth;

    public float CurrentHealth { get; private set; }
    private Animator _animator;
    private bool _dead;

    private void Awake()
    {
        _animator = GetComponent<Animator>();
        CurrentHealth = startingHealth;
    }

    private void TakeDamage(float damage)
    {
        CurrentHealth = Mathf.Clamp(CurrentHealth - damage, 0, startingHealth);

        if (CurrentHealth > 0)
        {
            _animator.SetTrigger("hurt");
        }
        else
        {
            if (!_dead)
            {
                _animator.SetTrigger("die");
                GetComponent<PlayerMovement>().enabled = false;
                _dead = true;
            }
        }
    }
}