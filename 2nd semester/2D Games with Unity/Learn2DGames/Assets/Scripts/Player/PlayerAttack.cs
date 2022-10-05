using UnityEngine;

public class PlayerAttack : MonoBehaviour
{
    [SerializeField] private float attackCooldown;
    [SerializeField] private Transform firePoint;
    [SerializeField] private GameObject[] fireBalls;

    private Animator _animator;
    private PlayerMovement _playerMovement;
    private float _cooldownTimer = Mathf.Infinity;

    private void Awake()
    {
        _animator = GetComponent<Animator>();
        _playerMovement = GetComponent<PlayerMovement>();
    }
    
    private void Update()
    {
        bool isPlayerPressedAttackMouseButton = Input.GetMouseButton(0);
        bool isAttackReady = _cooldownTimer > attackCooldown;

        if (isPlayerPressedAttackMouseButton && isAttackReady && _playerMovement.CanAttack())
            Attack();

        _cooldownTimer += Time.deltaTime;
    }

    private void Attack()
    {
        _animator.SetTrigger("attack");
        _cooldownTimer = 0;
        
        fireBalls[FindFireball()].transform.position = firePoint.position;
        fireBalls[FindFireball()].GetComponent<Projectile>().SetDirection(Mathf.Sign(transform.localScale.x));
    }
    
    private int FindFireball()
    {
        for (int i = 0; i < fireBalls.Length; i++)
        {
            if (!fireBalls[i].activeInHierarchy)
                return i;
        }

        return 0;
    }
}
