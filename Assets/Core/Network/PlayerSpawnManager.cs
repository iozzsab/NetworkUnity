using UnityEngine;
using UnityEngine.Networking;
using System.Collections.Generic;
using Unity.Netcode;

public class PlayerSpawnManager : NetworkBehaviour
{
    public List<Transform> spawnPoints = new List<Transform>();

    public override void OnStartServer()
    {
        NetworkServer.RegisterHandler(MsgType.AddPlayer, OnAddPlayer);
    }

    private void OnAddPlayer(NetworkMessage netMsg)
    {
        Transform spawnPoint = GetRandomSpawnPoint();
        GameObject player = Instantiate(Resources.Load("PlayerPrefab"), spawnPoint.position, spawnPoint.rotation) as GameObject;
        NetworkServer.AddPlayerForConnection(netMsg.conn, player, 0);
    }

    private Transform GetRandomSpawnPoint()
    {
        if (spawnPoints.Count == 0)
        {
            Debug.LogError("No spawn points available.");
            return null;
        }

        return spawnPoints[Random.Range(0, spawnPoints.Count)];
    }
}