using Unity.Netcode;
using UnityEngine;
using UnityEngine.Networking;

public class PlayerCharacter : NetworkBehaviour
{
    [SyncVar(hook = nameof(OnPositionChange))]
    private Vector3 playerPosition;

    [SyncVar(hook = nameof(OnRotationChange))]
    private Quaternion playerRotation;

    private void Start()
    {
        if (isLocalPlayer)
        {
            // мум мув
        }
    }

    private void Update()
    {
        if (!isLocalPlayer)
            return;

     CmdUpdatePositionAndRotation(transform.position, transform.rotation);
    }

    [Command]
    private void CmdUpdatePositionAndRotation(Vector3 position, Quaternion rotation)
    {
        playerPosition = position;
        playerRotation = rotation;
    }

    private void OnPositionChange(Vector3 newPosition)
    {
       transform.position = newPosition;
    }

    private void OnRotationChange(Quaternion newRotation)
    { 
        transform.rotation = newRotation;
    }
}