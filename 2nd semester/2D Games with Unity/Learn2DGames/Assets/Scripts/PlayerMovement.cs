using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    [SerializeField] private float speed;
    [SerializeField] private float jumpPower;

    [SerializeField] private LayerMask groundLayer;
    [SerializeField] private LayerMask wallLayer;

    private float _wallJumpCooldown;
    private float _horizontalInput;
    private Rigidbody2D _body;
    private Animator _animator;
    private BoxCollider2D _boxCollider2D;


    private void Awake()
    {
        _body = GetComponent<Rigidbody2D>();
        _animator = GetComponent<Animator>();
        _boxCollider2D = GetComponent<BoxCollider2D>();
    }

    private void Update()
    {
        _horizontalInput = Input.GetAxis("Horizontal");

        FlipPlayerWhenMovingLeftAndRight();
        SetAnimatorParameters();
        WallJumpAndJump();
    }

    private void FlipPlayerWhenMovingLeftAndRight()
    {
        if (_horizontalInput > 0.01f)
            transform.localScale = Vector3.one;
        else if (_horizontalInput < -0.01f)
            transform.localScale = new Vector3(-1, 1, 1);
    }

    private void WallJumpAndJump()
    {
        if (_wallJumpCooldown < 0.2f)
        {
            _body.velocity = new Vector2(_horizontalInput * speed, _body.velocity.y);

            if (IsOnWall() && !IsGrounded())
            {
                _body.gravityScale = 0;
                _body.velocity = Vector2.zero;
            }
            else
                _body.gravityScale = 7;

            if (Input.GetKey(KeyCode.Space))
                Jump();
        }
    }

    private void Jump()
    {
        if (IsGrounded())
        {
            _body.velocity = new Vector2(_body.velocity.x, jumpPower);
            _animator.SetTrigger("jump");
        }
        else if (IsOnWall() && !IsGrounded())
        {
            if (_horizontalInput == 0)
            {
                _body.velocity = new Vector2(
                    -Mathf.Sign(transform.localScale.x) * 10,
                    0
                );
                transform.localScale = new Vector3(
                    -Mathf.Sign(transform.localScale.x),
                    transform.localScale.y,
                    transform.localScale.z
                );
            }
            else
                _body.velocity = new Vector2(
                    -Mathf.Sign(transform.localScale.x) * 3,
                    6
                );

            _wallJumpCooldown = 0;
        }
    }

    private void SetAnimatorParameters()
    {
        _animator.SetBool("run", _horizontalInput != 0);
        _animator.SetBool("grounded", IsGrounded());
    }

    private bool IsGrounded()
    {
        RaycastHit2D raycastHit2D = Physics2D.BoxCast(
            _boxCollider2D.bounds.center,
            _boxCollider2D.bounds.size,
            0,
            Vector2.down,
            0.1f,
            groundLayer
        );

        return raycastHit2D.collider != null;
    }

    private bool IsOnWall()
    {
        RaycastHit2D raycastHit2D = Physics2D.BoxCast(
            _boxCollider2D.bounds.center,
            _boxCollider2D.bounds.size,
            0,
            new Vector2(transform.localScale.x, 0),
            0.1f,
            wallLayer
        );

        return raycastHit2D.collider != null;
    }

    public bool CanAttack()
    {
        return _horizontalInput == 0 && IsGrounded() && !IsOnWall();
    }
}