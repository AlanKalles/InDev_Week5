using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneChanger : MonoBehaviour
{
    public string SceneToLoad;
    // Start is called before the first frame update
    public void sceneChanger()
    {
        SceneManager.LoadScene(SceneToLoad);
    }
}
