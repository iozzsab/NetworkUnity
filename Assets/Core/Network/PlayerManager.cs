using System.Collections.Generic;
using UnityEngine;
using Unity.Networking.Transport;
using Unity.Collections;
using Unity.Networking.Transport.Utilities;

public class PlayerManager : MonoBehaviour
{
    private Dictionary<int, string> playerNames = new Dictionary<int, string>();

    public void SetPlayerName(int connectionId, string name)
    {
        playerNames[connectionId] = name;
    }

    public string GetPlayerName(int connectionId)
    {
        return playerNames.ContainsKey(connectionId) ? playerNames[connectionId] : "Unknown";
    }
}