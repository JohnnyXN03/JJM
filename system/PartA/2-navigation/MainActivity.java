package com.example.programtwo;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void register(View view) {
        EditText username = findViewById(R.id.username);
        EditText email = findViewById(R.id.email);
        EditText password = findViewById(R.id.password);
        Bundle b = new Bundle();
        b.putString("Username", username.getText().toString());
        b.putString("Email", email.getText().toString());
        b.putString("Password", password.getText().toString());
        Intent it = new Intent(MainActivity.this, home.class);
        it.putExtra("bundle", b);
        startActivity(it);

    }
}