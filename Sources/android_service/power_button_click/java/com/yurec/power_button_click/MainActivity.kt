package com.yurec.power_button_click

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.KeyEvent
import android.widget.TextView
import android.widget.Toast

private var logText: TextView? = null

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        logText = findViewById<TextView>(R.id.LogText)
        Log.i("MainActivity", "Main Activity Create")

    }

    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {

        when (keyCode) {
            KeyEvent.KEYCODE_VOLUME_DOWN -> Log.i("onKeyDown", "Volume Down Key Pressed")
            KeyEvent.KEYCODE_VOLUME_UP -> logText?.setText("Volume Up Key Pressed")
            KeyEvent.KEYCODE_BACK -> logText?.setText("Home Key Pressed")
            KeyEvent.KEYCODE_POWER ->  Log.d("onKeyDown", "Power Key Pressed")
        }
        return true
    }
}
