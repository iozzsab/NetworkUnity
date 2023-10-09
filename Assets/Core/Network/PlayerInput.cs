using UnityEngine;
using UnityEngine.UI;
using Unity.Networking.Transport;

public class PlayerInput : MonoBehaviour
{
    public InputField nameInputField;

    private void Start()
    {
        nameInputField.onValueChanged.AddListener(OnNameInputChange);
    }

    private void OnNameInputChange(string name)
    {
        PlayerNetwork.SendNameToServer(name);
    }
}