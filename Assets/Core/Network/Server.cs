using UnityEngine;

public class Server : MonoBehaviour
{
    private PlayerManager playerManager;

    void Start()
    {
        playerManager = new PlayerManager();
    }
    
    void OnPlayerConnected(int connectionId)
    {
        string playerName = GetPlayerNameFromClient(connectionId);
        playerManager.SetPlayerName(connectionId, playerName);
    }

    private string GetPlayerNameFromClient(int connectionId)
    {
        throw new System.NotImplementedException();
        //проброс
    }

   
    void OnMessageReceived(int connectionId, string message)
    {
        string playerName = playerManager.GetPlayerName(connectionId);
        Debug.Log(playerName + ": " + message);
    }

}