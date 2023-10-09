using UnityEngine;
using Unity.Networking.Transport;

public class PlayerNetwork : NetworkBehaviour
{
    private NetworkDriver networkDriver;
    private NetworkConnection connection;

    private void Start()
    {
        networkDriver = new NetworkDriver(new ReliableUtility.Parameters { windowSize = 32 });

        // Подключение к серверу
        connection = networkDriver.Connect(new NetworkEndpoint());
    }

    private void OnDestroy()
    {
        networkDriver.Dispose();
    }

    private void Update()
    {
        networkDriver.ScheduleUpdate().Complete();

        if (!connection.IsCreated)
            return;

        Unity.Collections.DataStreamReader reader;
        NetworkEvent.Type cmd;

        while ((cmd = connection.PopEvent(networkDriver, out reader)) != NetworkEvent.Type.Empty)
        {
            if (cmd == NetworkEvent.Type.Connect)
            {
                // Выполняется при подключении к серверу
                Debug.Log("Connected to the server");
                SendNameToServer("PlayerName");
            }
            else if (cmd == NetworkEvent.Type.Data)
            {
                // Обработка данных от сервера
                ProcessMessage(reader);
            }
            else if (cmd == NetworkEvent.Type.Disconnect)
            {
                // Обработка отключения от сервера
                Debug.Log("Disconnected from the server");
                connection = default(NetworkConnection);
            }
        }
    }

    private void SendNameToServer(string playerName)
    {
        // Отправка имени на сервер
        using (var writer = new Unity.Collections.DataStreamWriter(64, Allocator.Temp))
        {
            writer.WriteString(playerName);
            connection.Send(networkDriver, writer);
        }
    }

    private void ProcessMessage(Unity.Collections.DataStreamReader reader)
    {
        // Обработка сообщения от сервера
        string message = reader.ReadString();
        Debug.Log("Received message: " + message);
    }
}