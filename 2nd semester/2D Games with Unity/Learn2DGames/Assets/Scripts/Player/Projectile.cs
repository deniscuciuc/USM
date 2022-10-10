using System;
using UnityEngine;

public class Projectile : MonoBehaviour
{
    [SerializeField] private float speed;

    private bool _hit;
    private float _direction;
    private float _lifeTime;

    private BoxCollider2D _boxCollider2D;
    private Animator _animator;


    private void Awake()
    {
        _boxCollider2D = GetComponent<BoxCollider2D>();
        _animator = GetComponent<Animator>();
    }

    private void Update()
    {
        if (_hit) return;
        
        var movementSpeed = speed * Time.deltaTime * _direction;
        transform.Translate(movementSpeed, 0, 0);

        _lifeTime += Time.deltaTime;
        if (_lifeTime > 5)
            gameObject.SetActive(false);
    }

    private void OnTriggerEnter2D(Collider2D col)
    {
        if (col.CompareTag("Player")) return;
        
        _hit = true;
        _boxCollider2D.enabled = false;
        _animator.SetTrigger("explode");
    }

    public void SetDirection(float direction)
    {
        _lifeTime = 0;
        _direction = direction;
        gameObject.SetActive(true);
        _hit = false;
        _boxCollider2D.enabled = true;

        var localScaleX = transform.localScale.x;
        if (Math.Sign(localScaleX) != direction)
            localScaleX = -localScaleX;

        transform.localScale = new Vector3(localScaleX, transform.localScale.y, transform.localScale.z);
    }

    public void Deactivate()
    {
        gameObject.SetActive(false);
    }
}
