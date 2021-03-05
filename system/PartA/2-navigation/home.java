package com.example.programtwo;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;

public class home extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);
        Bundle b = getIntent().getBundleExtra("bundle");
        String username = b.getString("Username");
        String email = b.getString("Email");

        ((TextView)findViewById(R.id.username_second)).setText(username);
        ((TextView)findViewById(R.id.email_second)).setText(email);

    }
}