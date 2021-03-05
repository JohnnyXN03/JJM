package com.example.lab_first;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

public class second extends AppCompatActivity implements AdapterView.OnItemClickListener {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
        ((ListView)findViewById(R.id.list)).setOnItemClickListener(this);
    }

    public void onItemClick(AdapterView<?> parent, View view, int position, long id){
        new AlertDialog.Builder(second.this).setTitle("Alert").setMessage("Tap outside to close").create().show();
    }

    public void callFirst(View view){
        Intent it = new Intent(getApplicationContext(), MainActivity.class);
        startActivity(it);
    }
}

