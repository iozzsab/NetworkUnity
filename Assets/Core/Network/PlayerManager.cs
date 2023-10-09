using System.Collections.Generic;
using UnityEngine;
using Unity.Networking.Transport;
using Unity.Collections;
using Unity.Netcode;

public class PlayerManager : NetworkBehaviour
{
    private Dictionary<int, string> playerNames = new Dictionary<int, string>();

    [Command]
    private void CmdSendNameToServer(string playerName)
    {
        int connectionId = connectionToClient.connectionId;

        if (!playerNames.ContainsKey(connectionId))
        {
            playerNames[connectionId] = playerName;
            Debug.Log("Player with connectionId " + connectionId + " has name: " + playerName);
        }

        // Добавьте ваш код для сохранения таблицы соответствия на сервере
    }

    [Command]
    private void CmdSendMessageToServer(string message)
    {
        int connectionId = connectionToClient.connectionId;

        if (playerNames.TryGetValue(connectionId, out string playerName))
        {
            Debug.Log("Received message from " + playerName + ": " + message);
        }

        // Добавьте ваш код для обработки сообщения на сервере
    }
}