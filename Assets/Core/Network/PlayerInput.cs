using UnityEngine;
using UnityEngine.UI;
using Unity.Networking.Transport;
using Unity.Collections;
using Unity.Netcode;

public class PlayerInput : NetworkBehaviour
{
    public InputField nameInputField;

    private void Start()
    {
        if (isLocalPlayer)
        {
            CmdSendNameToServer(nameInputField.text);
        }
    }

    [Command]
    private void CmdSendNameToServer(string playerName)
    {
        Debug.Log("Player connected with name: " + playerName);

        // Добавьте ваш код для сохранения имени игрока на сервере
    }
}